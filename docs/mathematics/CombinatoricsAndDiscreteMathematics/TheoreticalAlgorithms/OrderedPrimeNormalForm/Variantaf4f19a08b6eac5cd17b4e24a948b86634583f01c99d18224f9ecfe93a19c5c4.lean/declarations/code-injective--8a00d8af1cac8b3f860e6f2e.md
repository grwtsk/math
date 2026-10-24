# code_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9c823771638eecc738dc2bd715ab64830d3251ee",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 19,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/af4f19a08b6eac5cd17b4e24a948b86634583f01c99d18224f9ecfe93a19c5c4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c4304bec-e4d7-db2c-1dc2-98b9e0d64c0b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9e3414c4-fd02-9980-eafd-9f7a6efb6932",
  "kind": "theorem",
  "lexical_name": "code_injective",
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
  "slug": "code-injective--8a00d8af1cac8b3f860e6f2e",
  "source": {
    "blob": "9c823771638eecc738dc2bd715ab64830d3251ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 19,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedPrimeNormalForm/Variantaf4f19a08b6eac5cd17b4e24a948b86634583f01c99d18224f9ecfe93a19c5c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a00d8af1cac8b3f860e6f2eecdd1dbc1d5d1dd9595eb760b4c42787d2dcab2b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedPrimeNormalForm/Variantaf4f19a08b6eac5cd17b4e24a948b86634583f01c99d18224f9ecfe93a19c5c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e3414c4-fd02-9980-eafd-9f7a6efb6932`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem code_injective
    (P : PairingCodec)
    {A B : OrderedPrimeCore}
    (h : A.code P = B.code P) :
    A = B := by
  induction A generalizing B with
  | irreducible p =>
      cases B with
      | irreducible q =>
          have hpq := P.injective 0 p.value 0 q.value h
          exact congrArg OrderedPrimeCore.irreducible (PrimeLabel.ext hpq.2)
      | composite l r =>
          have htag := (P.injective 0 p.value 1 (P.pair (l.code P) (r.code P)) h).1
          cases htag
  | composite l r ihl ihr =>
      cases B with
      | irreducible q =>
          have htag := (P.injective 1 (P.pair (l.code P) (r.code P)) 0 q.value h).1
          cases htag
      | composite l' r' =>
          have houter :=
            P.injective
              1 (P.pair (l.code P) (r.code P))
              1 (P.pair (l'.code P) (r'.code P))
              h
          have hinner :=
            P.injective (l.code P) (r.code P) (l'.code P) (r'.code P) houter.2
          have hl : l = l' := ihl hinner.1
          have hr : r = r' := ihr hinner.2
          cases hl
          cases hr
          rfl

end OrderedPrimeCore

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedPrimeNormalForm/Variantaf4f19a08b6eac5cd17b4e24a948b86634583f01c99d18224f9ecfe93a19c5c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrderedPrimeNormalForm/Variantaf4f19a08b6eac5cd17b4e24a948b86634583f01c99d18224f9ecfe93a19c5c4.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c823771638eecc738dc2bd715ab64830d3251ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
