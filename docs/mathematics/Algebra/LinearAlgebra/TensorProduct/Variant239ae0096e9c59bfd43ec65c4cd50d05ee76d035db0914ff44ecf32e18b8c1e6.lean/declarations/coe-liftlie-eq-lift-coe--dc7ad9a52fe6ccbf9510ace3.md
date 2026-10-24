# coe_liftLie_eq_lift_coe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7eba5667-16fb-bd14-1255-cf6bd1973c49",
  "kind": "theorem",
  "lexical_name": "coe_liftLie_eq_lift_coe",
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
  "slug": "coe-liftlie-eq-lift-coe--dc7ad9a52fe6ccbf9510ace3",
  "source": {
    "blob": "d32e8333a14343a3f45d1b9e5f949f49d15a6987",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 115,
    "path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant239ae0096e9c59bfd43ec65c4cd50d05ee76d035db0914ff44ecf32e18b8c1e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc7ad9a52fe6ccbf9510ace3148122f006fa46c6cea04b782f3ec02c83557083",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TensorProduct/Variant239ae0096e9c59bfd43ec65c4cd50d05ee76d035db0914ff44ecf32e18b8c1e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7eba5667-16fb-bd14-1255-cf6bd1973c49`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_liftLie_eq_lift_coe (f : M →ₗ⁅R,L⁆ N →ₗ[R] P) :
    ⇑(liftLie R L M N P f) = lift R L M N P f := by
  suffices (liftLie R L M N P f : M ⊗[R] N →ₗ[R] P) = lift R L M N P f by
    rw [← this, LieModuleHom.coe_toLinearMap]
  ext m n
  simp only [liftLie, LinearEquiv.trans_apply, LieModuleEquiv.coe_toLinearEquiv,
    toLinearMap_maxTrivLinearMapEquivLieModuleHom, coe_maxTrivEquiv_apply,
    toLinearMap_maxTrivLinearMapEquivLieModuleHom_symm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TensorProduct/Variant239ae0096e9c59bfd43ec65c4cd50d05ee76d035db0914ff44ecf32e18b8c1e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TensorProduct/Variant239ae0096e9c59bfd43ec65c4cd50d05ee76d035db0914ff44ecf32e18b8c1e6.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d32e8333a14343a3f45d1b9e5f949f49d15a6987` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
