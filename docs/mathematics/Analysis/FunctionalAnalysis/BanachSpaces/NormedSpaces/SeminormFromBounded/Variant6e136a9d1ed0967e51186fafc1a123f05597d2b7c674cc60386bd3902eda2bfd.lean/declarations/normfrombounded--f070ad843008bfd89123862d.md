# normFromBounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:12b9d5b684af9a574ecbbed5b5969a1c9babe14eb309a98012d35d632ef43f9f",
  "kind": "def",
  "lexical_name": "normFromBounded",
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
  "slug": "normfrombounded--f070ad843008bfd89123862d",
  "source": {
    "blob": "45cbcf0bc7591a3d82767fe4c06fb85b814b6d90",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 374,
    "line": 365,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromBounded/Variant6e136a9d1ed0967e51186fafc1a123f05597d2b7c674cc60386bd3902eda2bfd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f070ad843008bfd89123862dcbbe188aa10fd5cc7f4535ef2f2c5cdaaec90bd6",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromBounded/Variant6e136a9d1ed0967e51186fafc1a123f05597d2b7c674cc60386bd3902eda2bfd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:12b9d5b684af9a574ecbbed5b5969a1c9babe14eb309a98012d35d632ef43f9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 365–374.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def normFromBounded (f_zero : f 0 = 0) (f_nonneg : 0 ≤ f)
    (f_mul : ∀ x y : R, f (x * y) ≤ c * f x * f y)
    (f_add : ∀ a b, f (a + b) ≤ f a + f b) (f_neg : ∀ x : R, f (-x) = f x)
    (f_ker : f ⁻¹' {0} = {0}) : RingNorm R :=
  { seminormFromBounded f_zero f_nonneg f_mul f_add f_neg with
    eq_zero_of_map_eq_zero' :=
      (seminormFromBounded_is_norm_iff f_zero f_nonneg f_mul f_add f_neg).mpr f_ker }

/-- If `f : R → ℝ` is a nonnegative, multiplicatively bounded function and `x : R` is
  multiplicative for `f`, then `x` is multiplicative for `seminormFromBounded' f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromBounded/Variant6e136a9d1ed0967e51186fafc1a123f05597d2b7c674cc60386bd3902eda2bfd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromBounded/Variant6e136a9d1ed0967e51186fafc1a123f05597d2b7c674cc60386bd3902eda2bfd.lean#L365).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45cbcf0bc7591a3d82767fe4c06fb85b814b6d90` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
