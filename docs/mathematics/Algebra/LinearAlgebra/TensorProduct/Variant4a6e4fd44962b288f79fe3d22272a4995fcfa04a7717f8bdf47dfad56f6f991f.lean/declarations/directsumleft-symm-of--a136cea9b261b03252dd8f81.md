# directSumLeft_symm_of

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1fa6c875-7f26-be0b-0fc9-64218cd4a297",
  "kind": "lemma",
  "lexical_name": "directSumLeft_symm_of",
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
  "slug": "directsumleft-symm-of--a136cea9b261b03252dd8f81",
  "source": {
    "blob": "80e6a90d93817c18c3e8d2b6242df78cd48cf5d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 128,
    "path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant4a6e4fd44962b288f79fe3d22272a4995fcfa04a7717f8bdf47dfad56f6f991f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a136cea9b261b03252dd8f816a41dbbed6f79b52fb73faf4e9a7e0272f055ef1",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TensorProduct/Variant4a6e4fd44962b288f79fe3d22272a4995fcfa04a7717f8bdf47dfad56f6f991f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1fa6c875-7f26-be0b-0fc9-64218cd4a297`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma directSumLeft_symm_of {i : ι₁} (x : (M₁ i) ⊗[R] M₂') :
    (directSumLeft R S M₁ M₂').symm ((of (fun i ↦ M₁ i ⊗[R] M₂') i) x) =
      rTensor M₂' (lof R ι₁ M₁ i) x := by
  induction x using TensorProduct.inductionOn with
  | tmul x y => rw [← lof_eq_of S, directSumLeft_symm_lof_tmul, rTensor_tmul, lof_eq_of, lof_eq_of]
  | add x y h₁ h₂ => simp [h₁, h₂]

set_option backward.isDefEq.respectTransparency false in
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TensorProduct/Variant4a6e4fd44962b288f79fe3d22272a4995fcfa04a7717f8bdf47dfad56f6f991f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant4a6e4fd44962b288f79fe3d22272a4995fcfa04a7717f8bdf47dfad56f6f991f.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80e6a90d93817c18c3e8d2b6242df78cd48cf5d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
