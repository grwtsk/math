# encodeTree_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5bc280f10378ec0866456bc76842aabebf1ce6e4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 99,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/36/36c0a8fdb0d51671429bdafa62bb22c7633d16dee0821769a3f7cb8d4299d4ae.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bfe64eb9-c093-b202-a4b2-d6efd653d9c1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0646654f-9060-4871-3422-9ebc3c624d93",
  "kind": "theorem",
  "lexical_name": "encodeTree_injective",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "encodetree-injective--a0ffefb58645e6fa06829cef",
  "source": {
    "blob": "5bc280f10378ec0866456bc76842aabebf1ce6e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 99,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Counting/Variant36c0a8fdb0d51671429bdafa62bb22c7633d16dee0821769a3f7cb8d4299d4ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0ffefb58645e6fa06829cefb8bd5f31a7a879b47a2bb9f72a54481b1318cd66",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Counting/Variant36c0a8fdb0d51671429bdafa62bb22c7633d16dee0821769a3f7cb8d4299d4ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0646654f-9060-4871-3422-9ebc3c624d93`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem encodeTree_injective
    (P : PairingCodec)
    (atomEncoding : CountableEncoding BinaryLogicAtom) :
    Function.Injective (encodeTree P atomEncoding) := by
  intro A B h
  induction A generalizing B with
  | leaf a =>
      cases B with
      | leaf b =>
          have hp := P.injective 0 (atomEncoding.encode a) 0 (atomEncoding.encode b) h
          have hab := atomEncoding.encode_injective hp.2
          cases hab
          rfl
      | node l r =>
          have htag :=
            (P.injective
              0 (atomEncoding.encode a)
              1 (P.pair (encodeTree P atomEncoding l) (encodeTree P atomEncoding r))
              h).1
          cases htag
  | node l r ihl ihr =>
      cases B with
      | leaf b =>
          have htag :=
            (P.injective
              1 (P.pair (encodeTree P atomEncoding l) (encodeTree P atomEncoding r))
              0 (atomEncoding.encode b)
              h).1
          cases htag
      | node l' r' =>
          have houter :=
            P.injective
              1 (P.pair (encodeTree P atomEncoding l) (encodeTree P atomEncoding r))
              1 (P.pair (encodeTree P atomEncoding l') (encodeTree P atomEncoding r'))
              h
          have hinner :=
            P.injective
              (encodeTree P atomEncoding l)
              (encodeTree P atomEncoding r)
              (encodeTree P atomEncoding l')
              (encodeTree P atomEncoding r')
              houter.2
          have hl := ihl hinner.1
          have hr := ihr hinner.2
          cases hl
          cases hr
          rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Counting/Variant36c0a8fdb0d51671429bdafa62bb22c7633d16dee0821769a3f7cb8d4299d4ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Counting/Variant36c0a8fdb0d51671429bdafa62bb22c7633d16dee0821769a3f7cb8d4299d4ae.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5bc280f10378ec0866456bc76842aabebf1ce6e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
