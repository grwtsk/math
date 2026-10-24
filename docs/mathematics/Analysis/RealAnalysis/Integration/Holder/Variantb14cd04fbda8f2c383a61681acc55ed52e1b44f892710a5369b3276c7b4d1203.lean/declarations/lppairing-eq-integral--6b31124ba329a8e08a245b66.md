# lpPairing_eq_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e5442a83-3aed-6a7d-dafe-283725af0906",
  "kind": "lemma",
  "lexical_name": "lpPairing_eq_integral",
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
  "slug": "lppairing-eq-integral--6b31124ba329a8e08a245b66",
  "source": {
    "blob": "f5d16bb992b6c8d08235f2b5866da70a356c2170",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 190,
    "line": 160,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Holder/Variantb14cd04fbda8f2c383a61681acc55ed52e1b44f892710a5369b3276c7b4d1203.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b31124ba329a8e08a245b66c44c2f42283c661a26400e56f009bc46591fe433",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Holder/Variantb14cd04fbda8f2c383a61681acc55ed52e1b44f892710a5369b3276c7b4d1203.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e5442a83-3aed-6a7d-dafe-283725af0906`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–190.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma lpPairing_eq_integral (f : Lp E p μ) (g : Lp F q μ) :
    B.lpPairing μ p q f g = ∫ x, B (f x) (g x) ∂μ := by
  simpa [lpPairing, ← L1.integral_eq', L1.integral_eq_integral] using
    integral_congr_ae <| B.coeFn_holder _ _

end ContinuousLinearMap

end Bilinear

namespace MeasureTheory
namespace Lp

/-! ### Heterogeneous scalar multiplication

While the previous section is *nominally* more general than this one, and indeed, we could
use the constructions of the previous section to define the scalar multiplication herein,
we would lose some slight generality as we would need to require that `𝕜` is a nontrivially
normed field everywhere. Moreover, it would only simplify a few proofs.
-/

section SMul

variable {α 𝕜' 𝕜 E : Type*} {m : MeasurableSpace α} {μ : Measure α}
    {p q r : ℝ≥0∞} [hpqr : HolderTriple p q r]

section MulActionWithZero

variable [NormedRing 𝕜] [NormedAddCommGroup E] [MulActionWithZero 𝕜 E] [IsBoundedSMul 𝕜 E]

/-- Heterogeneous scalar multiplication of `MeasureTheory.Lp` functions by `MeasureTheory.Lp`
functions when the exponents satisfy `ENNReal.HolderTriple p q r`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Holder/Variantb14cd04fbda8f2c383a61681acc55ed52e1b44f892710a5369b3276c7b4d1203.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Holder/Variantb14cd04fbda8f2c383a61681acc55ed52e1b44f892710a5369b3276c7b4d1203.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5d16bb992b6c8d08235f2b5866da70a356c2170` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
