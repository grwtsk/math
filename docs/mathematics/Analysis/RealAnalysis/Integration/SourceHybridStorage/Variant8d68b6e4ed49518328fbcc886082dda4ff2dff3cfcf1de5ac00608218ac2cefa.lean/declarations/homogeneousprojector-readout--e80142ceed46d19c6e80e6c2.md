# homogeneousProjector_readout

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:52f4d605-827e-a497-31ad-d446274a0591",
  "kind": "theorem",
  "lexical_name": "homogeneousProjector_readout",
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
  "slug": "homogeneousprojector-readout--e80142ceed46d19c6e80e6c2",
  "source": {
    "blob": "5ea5bf9f4531ebf6c23be2181e8e8e814eb81e94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 102,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant8d68b6e4ed49518328fbcc886082dda4ff2dff3cfcf1de5ac00608218ac2cefa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e80142ceed46d19c6e80e6c2221f2bf9007f2cb551d0a1dce9472387ab6ab380",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant8d68b6e4ed49518328fbcc886082dda4ff2dff3cfcf1de5ac00608218ac2cefa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52f4d605-827e-a497-31ad-d446274a0591`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem homogeneousProjector_readout [DecidableEq n] (last : n) (w : n → ℂ) :
    quadraticReadout (homogeneousProjector last) w = Complex.normSq (w last) := by
  have h : star w ⬝ᵥ (homogeneousProjector last *ᵥ w) = star (w last) * w last := by
    simp [homogeneousProjector, Matrix.mulVec_diagonal, dotProduct, Pi.single_apply]
  unfold quadraticReadout
  rw [h, Complex.star_def, ← Complex.normSq_eq_conj_mul_self]
  rfl

/-- A homogeneous affine chart preserves the error projector exactly on quadratic readouts. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant8d68b6e4ed49518328fbcc886082dda4ff2dff3cfcf1de5ac00608218ac2cefa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceHybridStorage/Variant8d68b6e4ed49518328fbcc886082dda4ff2dff3cfcf1de5ac00608218ac2cefa.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ea5bf9f4531ebf6c23be2181e8e8e814eb81e94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
