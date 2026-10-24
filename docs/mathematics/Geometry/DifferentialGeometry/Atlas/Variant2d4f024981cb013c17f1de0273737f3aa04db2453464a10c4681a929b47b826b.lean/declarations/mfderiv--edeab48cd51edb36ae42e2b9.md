# mfderiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8bce3425690b9fb040a5e30027ab279a590df09dafdbe96b22faaca27d2632df",
  "kind": "def",
  "lexical_name": "mfderiv",
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
  "slug": "mfderiv--edeab48cd51edb36ae42e2b9",
  "source": {
    "blob": "d38d4d41db9040c3a7a5f7d2ca252b9eee9cbf0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 170,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Atlas/Variant2d4f024981cb013c17f1de0273737f3aa04db2453464a10c4681a929b47b826b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:edeab48cd51edb36ae42e2b999d4778cbfb2d380732be35c0726f743d2d584cb",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Atlas/Variant2d4f024981cb013c17f1de0273737f3aa04db2453464a10c4681a929b47b826b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8bce3425690b9fb040a5e30027ab279a590df09dafdbe96b22faaca27d2632df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def mfderiv (he : e.MDifferentiable I I') {x : M} (hx : x ∈ e.source) :
    TangentSpace I x ≃L[𝕜] TangentSpace I' (e x) :=
  { mfderiv% e x with
    invFun := mfderiv% e.symm (e x)
    continuous_toFun := (mfderiv% e x).cont
    continuous_invFun := (mfderiv% e.symm (e x)).cont
    left_inv := fun y => by
      have : (ContinuousLinearMap.id _ _ : TangentSpace I x →L[𝕜] TangentSpace I x) y = y := rfl
      conv_rhs => rw [← this, ← he.symm_comp_deriv hx]
      rfl
    right_inv := fun y => by
      have :
        (ContinuousLinearMap.id 𝕜 _ : TangentSpace I' (e x) →L[𝕜] TangentSpace I' (e x)) y = y :=
        rfl
      conv_rhs => rw [← this, ← he.comp_symm_deriv (e.map_source hx)]
      rw [e.left_inv hx]
      rfl }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Atlas/Variant2d4f024981cb013c17f1de0273737f3aa04db2453464a10c4681a929b47b826b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Atlas/Variant2d4f024981cb013c17f1de0273737f3aa04db2453464a10c4681a929b47b826b.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d38d4d41db9040c3a7a5f7d2ca252b9eee9cbf0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
