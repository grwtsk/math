# functional_symmetry_reflects_eigenpair

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3dbd52b8e44dc99da745dc6605cd23a3ee9275c6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 35,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e3/e30f06524b4d3bc84378bbad4ecc139ea324bd4b4668219d6d9a9be126e4d06f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:530654ce-ff75-c489-e441-e7e4814d0e7d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e07e3bf7-f2bc-94bb-10c9-2e63fd9965af",
  "kind": "theorem",
  "lexical_name": "functional_symmetry_reflects_eigenpair",
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
  "slug": "functional-symmetry-reflects-eigenpair--9e33937db4f0f881ea6c4e77",
  "source": {
    "blob": "3dbd52b8e44dc99da745dc6605cd23a3ee9275c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 35,
    "path": "GRWTSK/Algebra/LinearAlgebra/FunctionalSymmetry/Variante30f06524b4d3bc84378bbad4ecc139ea324bd4b4668219d6d9a9be126e4d06f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e33937db4f0f881ea6c4e775d11386b7be3bfa6b5dc00cd5ba074d8f76de564",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FunctionalSymmetry/Variante30f06524b4d3bc84378bbad4ecc139ea324bd4b4668219d6d9a9be126e4d06f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e07e3bf7-f2bc-94bb-10c9-2e63fd9965af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem functional_symmetry_reflects_eigenpair
    {Vector : Type}
    [AddCommGroup Vector] [Module ℝ Vector]
    (symmetry : FunctionalSymmetry Vector)
    (eigenvalue : ℝ)
    (vector : Vector)
    (eigenpair :
      IsEigenpair symmetry.operator eigenvalue vector) :
    IsEigenpair symmetry.operator (-eigenvalue)
      (symmetry.involution vector) := by
  unfold IsEigenpair at eigenpair ⊢
  have antiAt :=
    LinearMap.congr_fun symmetry.anticommutes vector
  simp only [LinearMap.comp_apply, LinearMap.neg_apply] at antiAt
  calc
    symmetry.operator (symmetry.involution vector) =
        -(symmetry.involution (symmetry.operator vector)) := antiAt
    _ = -(symmetry.involution (eigenvalue • vector)) := by
          rw [eigenpair]
    _ = (-eigenvalue) • symmetry.involution vector := by
          simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FunctionalSymmetry/Variante30f06524b4d3bc84378bbad4ecc139ea324bd4b4668219d6d9a9be126e4d06f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FunctionalSymmetry/Variante30f06524b4d3bc84378bbad4ecc139ea324bd4b4668219d6d9a9be126e4d06f.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3dbd52b8e44dc99da745dc6605cd23a3ee9275c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
