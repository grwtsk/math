# sup_lt_ord_of_isRegular

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "84ec5b1302b419dfc63c0d3aa2a158999ea3cf76",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1075,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/47/47f8fd61efe01a6b422f24f14942f7c661843dbd588482c36982f2de71740ec8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3c45ad1c-9e04-9d11-b852-5ab62229e643",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e0506c9f-e806-788b-b801-7cf8ebd9d787",
  "kind": "theorem",
  "lexical_name": "sup_lt_ord_of_isRegular",
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
  "slug": "sup-lt-ord-of-isregular--21f091436adce0eb0a542bae",
  "source": {
    "blob": "84ec5b1302b419dfc63c0d3aa2a158999ea3cf76",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1079,
    "line": 1075,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cofinality/Variant47f8fd61efe01a6b422f24f14942f7c661843dbd588482c36982f2de71740ec8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:21f091436adce0eb0a542bae47aa73ddc9adb9f646b07e7a7c23f05f9a908f4b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Cofinality/Variant47f8fd61efe01a6b422f24f14942f7c661843dbd588482c36982f2de71740ec8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e0506c9f-e806-788b-b801-7cf8ebd9d787`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1075–1079.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sup_lt_ord_of_isRegular {ι} {f : ι → Ordinal} {c} (hc : IsRegular c) (hι : #ι < c) :
    (∀ i, f i < c.ord) → Ordinal.sup f < c.ord :=
  sup_lt_ord (by rwa [hc.cof_eq])
#align cardinal.sup_lt_ord_of_is_regular Cardinal.sup_lt_ord_of_isRegular

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Cofinality/Variant47f8fd61efe01a6b422f24f14942f7c661843dbd588482c36982f2de71740ec8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Cofinality/Variant47f8fd61efe01a6b422f24f14942f7c661843dbd588482c36982f2de71740ec8.lean#L1075).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84ec5b1302b419dfc63c0d3aa2a158999ea3cf76` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
