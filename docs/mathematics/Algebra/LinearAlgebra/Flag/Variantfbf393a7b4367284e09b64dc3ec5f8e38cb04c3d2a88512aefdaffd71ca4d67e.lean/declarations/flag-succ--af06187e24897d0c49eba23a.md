# flag_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3df00929276c9c21a66cdb1b014fb98d786d249e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 51,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fb/fbf393a7b4367284e09b64dc3ec5f8e38cb04c3d2a88512aefdaffd71ca4d67e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:10fe3305-a36c-b20d-0c2a-8ec30bcb5609",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a654dad4-b91e-4697-c104-fab0a94503ab",
  "kind": "theorem",
  "lexical_name": "flag_succ",
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
  "slug": "flag-succ--af06187e24897d0c49eba23a",
  "source": {
    "blob": "3df00929276c9c21a66cdb1b014fb98d786d249e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 51,
    "path": "GRWTSK/Algebra/LinearAlgebra/Flag/Variantfbf393a7b4367284e09b64dc3ec5f8e38cb04c3d2a88512aefdaffd71ca4d67e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af06187e24897d0c49eba23a1fe55f2cba94ffdcffdb2482e9836094d3838930",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Flag/Variantfbf393a7b4367284e09b64dc3ec5f8e38cb04c3d2a88512aefdaffd71ca4d67e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a654dad4-b91e-4697-c104-fab0a94503ab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem flag_succ (b : Basis (Fin n) R M) (k : Fin n) :
    b.flag k.succ = R ∙ b k ⊔ b.flag k.castSucc := by
  simp [flag, Fin.castSucc_lt_castSucc_iff, le_iff_eq_or_lt, ofPred_or, span_insert]

/-- `flag` commutes with `Basis.map`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Flag/Variantfbf393a7b4367284e09b64dc3ec5f8e38cb04c3d2a88512aefdaffd71ca4d67e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Flag/Variantfbf393a7b4367284e09b64dc3ec5f8e38cb04c3d2a88512aefdaffd71ca4d67e.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3df00929276c9c21a66cdb1b014fb98d786d249e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
