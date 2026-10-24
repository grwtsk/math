# mlconvolution

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c845f8b96be91f0d11e289082493162a8fbd1dda14ec42c38aee234483647690",
  "kind": "def",
  "lexical_name": "mlconvolution",
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
  "slug": "mlconvolution--901186848101cb5e0283fb3f",
  "source": {
    "blob": "0da609bef3bb5c050f5468fb8a0381ac6bb3bdcb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 49,
    "path": "GRWTSK/Analysis/MeasureTheory/LConvolution/Variantdb7d6549bf7472f77db60051d470d9558c1fc1d44a2b0255eed39c5fe82aa381.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:901186848101cb5e0283fb3fca20bb93f92cb3cb5cd8b0bdb2bcacb5364b0f9c",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/LConvolution/Variantdb7d6549bf7472f77db60051d470d9558c1fc1d44a2b0255eed39c5fe82aa381.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c845f8b96be91f0d11e289082493162a8fbd1dda14ec42c38aee234483647690`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def mlconvolution (f g : G → ℝ≥0∞) (μ : Measure G) :
    G → ℝ≥0∞ := fun x ↦ ∫⁻ y, (f y) * (g (y⁻¹ * x)) ∂μ

/-- Scoped notation for the multiplicative convolution of functions with respect to a measure `μ`.
-/
scoped[MeasureTheory] notation:67 f " ⋆ₗ["μ:67"] " g:66 => MeasureTheory.mlconvolution f g μ

/-- Scoped notation for the multiplicative convolution of functions with respect to `volume`. -/
scoped[MeasureTheory] notation:67 f " ⋆ₗ " g:66 => MeasureTheory.mlconvolution f g volume

/-- Scoped notation for the additive convolution of functions with respect to a measure `μ`. -/
scoped[MeasureTheory] notation:67 f " ⋆ₗ["μ:67"] " g:66 => MeasureTheory.lconvolution f g μ

/-- Scoped notation for the additive convolution of functions with respect to `volume`. -/
scoped[MeasureTheory] notation:67 f " ⋆ₗ " g:66 => MeasureTheory.lconvolution f g volume

/- The definition of multiplicative convolution of functions. -/
@[to_additive "The definition of additive convolution of functions."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/LConvolution/Variantdb7d6549bf7472f77db60051d470d9558c1fc1d44a2b0255eed39c5fe82aa381.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/LConvolution/Variantdb7d6549bf7472f77db60051d470d9558c1fc1d44a2b0255eed39c5fe82aa381.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0da609bef3bb5c050f5468fb8a0381ac6bb3bdcb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
