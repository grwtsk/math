# instContinuousSMulSL2R

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6755d53aa8976ce0f227d31215d777dd2e93132583d81b0a2b2e7257a1788953",
  "kind": "instance",
  "lexical_name": "instContinuousSMulSL2R",
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
  "slug": "instcontinuoussmulsl2r--5ea12761944d60a0545e12e5",
  "source": {
    "blob": "7f98297479270d43cbc5b766a197da601f91c874",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 42,
    "path": "GRWTSK/Topology/GeneralTopology/ProperAction/Variantc7dcba138d9e394c59cd286798dbdbf3ebcaf5eb91cf5f7cb475c91db67f3f61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5ea12761944d60a0545e12e51bf4602f7a437b16886b503c045c14fba103f222",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ProperAction/Variantc7dcba138d9e394c59cd286798dbdbf3ebcaf5eb91cf5f7cb475c91db67f3f61.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6755d53aa8976ce0f227d31215d777dd2e93132583d81b0a2b2e7257a1788953`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instContinuousSMulSL2R : ContinuousSMul SL(2, ℝ) ℍ where
  continuous_smul := by
    suffices ∀ (g : SL(2, ℝ)) (τ : ℍ),
        ContinuousAt (fun ⟨h, z⟩ ↦ (h 0 0 * (z : ℂ) + h 0 1) / (h 1 0 * z + h 1 1)) (g, τ) by
      simpa [continuous_induced_rng, continuous_iff_continuousAt, Function.comp_def,
        coe_specialLinearGroup_apply]
    intro g τ
    fun_prop (disch := exact denom_ne_zero g τ)

open Topology in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ProperAction/Variantc7dcba138d9e394c59cd286798dbdbf3ebcaf5eb91cf5f7cb475c91db67f3f61.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ProperAction/Variantc7dcba138d9e394c59cd286798dbdbf3ebcaf5eb91cf5f7cb475c91db67f3f61.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f98297479270d43cbc5b766a197da601f91c874` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
