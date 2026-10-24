# autocorrelation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:eaebe56cbf3e5fa1aedb27accf98a937eb8b324da3e0ffbfa9328cf44ace932b",
  "kind": "def",
  "lexical_name": "autocorrelation",
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
  "slug": "autocorrelation--8cb363c6e8b7b805e4f2314f",
  "source": {
    "blob": "9df70abf9ff6a31bdf001db0ea9ff82e074cefcf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 59,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Autocorrelation/Variantc909f318aa30f6d05c2b7ef57c646e0a48764b3ea53635fea8fcdf0b561ea817.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8cb363c6e8b7b805e4f2314f786dc91f6e76d3d1c28743b7dc9e4cfe85955766",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Autocorrelation/Variantc909f318aa30f6d05c2b7ef57c646e0a48764b3ea53635fea8fcdf0b561ea817.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:eaebe56cbf3e5fa1aedb27accf98a937eb8b324da3e0ffbfa9328cf44ace932b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def autocorrelation (g : PrimitiveWeilTestFunction) :
    PrimitiveWeilTestFunction where
  toFun := autocorrelationFun g
  smooth := by
    exact g.star.hasCompactSupport.contDiff_convolution_right
      complexMultiplication g.locallyIntegrable g.star.smooth
  supportRadius := 2 * g.supportRadius
  supportRadius_nonneg := mul_nonneg (by norm_num) g.supportRadius_nonneg
  support_subset := by
    intro x hx
    have hsum : x ∈ Function.support g + Function.support g.star :=
      MeasureTheory.support_convolution_subset complexMultiplication hx
    rcases hsum with ⟨a, ha, b, hb, hab⟩
    rcases g.support_subset ha with ⟨haLower, haUpper⟩
    rcases g.star.support_subset hb with ⟨hbLower, hbUpper⟩
    rw [star_supportRadius] at hbLower hbUpper
    change a + b = x at hab
    constructor <;> linarith

@[surface_adapter, simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Autocorrelation/Variantc909f318aa30f6d05c2b7ef57c646e0a48764b3ea53635fea8fcdf0b561ea817.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Autocorrelation/Variantc909f318aa30f6d05c2b7ef57c646e0a48764b3ea53635fea8fcdf0b561ea817.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9df70abf9ff6a31bdf001db0ea9ff82e074cefcf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
