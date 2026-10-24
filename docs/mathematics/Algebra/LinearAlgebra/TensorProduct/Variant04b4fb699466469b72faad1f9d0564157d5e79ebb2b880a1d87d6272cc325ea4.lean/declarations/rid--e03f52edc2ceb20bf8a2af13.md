# rid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e7500d7af26dc8aee00556452fa5105c6e6249d6ec39bda59d4630f7ab1da159",
  "kind": "def",
  "lexical_name": "rid",
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
  "slug": "rid--e03f52edc2ceb20bf8a2af13",
  "source": {
    "blob": "0c7eac63ea1cc085bad1233319cccaadb07beaeb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 246,
    "line": 234,
    "path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant04b4fb699466469b72faad1f9d0564157d5e79ebb2b880a1d87d6272cc325ea4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e03f52edc2ceb20bf8a2af13d2952afbd60ba60131e3252c93a606ec3ebcfeac",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TensorProduct/Variant04b4fb699466469b72faad1f9d0564157d5e79ebb2b880a1d87d6272cc325ea4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e7500d7af26dc8aee00556452fa5105c6e6249d6ec39bda59d4630f7ab1da159`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–246.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected noncomputable def rid : M ⊗[R] R ≃ₗc[R] M :=
  { AlgebraTensorModule.rid R R M with
    counit_comp := by ext; simp
    map_comp_comul := by
      ext x
      dsimp
      simp only [one_smul]
      hopf_tensor_induction comul (R := R) x with x₁ x₂
      simp }

variable {R M}

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TensorProduct/Variant04b4fb699466469b72faad1f9d0564157d5e79ebb2b880a1d87d6272cc325ea4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant04b4fb699466469b72faad1f9d0564157d5e79ebb2b880a1d87d6272cc325ea4.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c7eac63ea1cc085bad1233319cccaadb07beaeb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
