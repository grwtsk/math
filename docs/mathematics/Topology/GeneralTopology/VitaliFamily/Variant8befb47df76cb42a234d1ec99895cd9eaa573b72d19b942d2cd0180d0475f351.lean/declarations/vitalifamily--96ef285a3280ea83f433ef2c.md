# VitaliFamily

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a9ff94aa66f03dd91b3ec1378b74f714fcf5213ef7ea119ddf592b861ebba608",
  "kind": "structure",
  "lexical_name": "VitaliFamily",
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
  "slug": "vitalifamily--96ef285a3280ea83f433ef2c",
  "source": {
    "blob": "e0875e0ff0ce4dc6632f4886194e337384cc1afc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 64,
    "path": "GRWTSK/Topology/GeneralTopology/VitaliFamily/Variant8befb47df76cb42a234d1ec99895cd9eaa573b72d19b942d2cd0180d0475f351.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:96ef285a3280ea83f433ef2c9195be095cc2dfad5daf7523205c3dfd185a1804",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/VitaliFamily/Variant8befb47df76cb42a234d1ec99895cd9eaa573b72d19b942d2cd0180d0475f351.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a9ff94aa66f03dd91b3ec1378b74f714fcf5213ef7ea119ddf592b861ebba608`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure VitaliFamily {m : MeasurableSpace X} (μ : Measure X) where
  /-- Sets of the family "centered" at a given point. -/
  setsAt :  X → Set (Set X)
  /-- All sets of the family are measurable. -/
  measurableSet : ∀ x : X, ∀ s ∈ setsAt x, MeasurableSet s
  /-- All sets of the family have nonempty interior. -/
  nonempty_interior : ∀ x : X, ∀ s ∈ setsAt x, (interior s).Nonempty
  /-- For any closed ball around `x`, there exists a set of the family contained in this ball. -/
  nontrivial : ∀ (x : X), ∀ ε > (0 : ℝ), ∃ s ∈ setsAt x, s ⊆ closedBall x ε
  /-- Consider a (possibly non-measurable) set `s`,
  and for any `x` in `s` a subfamily `f x` of `setsAt x`
  containing sets of arbitrarily small diameter.
  Then one can extract a disjoint subfamily covering almost all `s`. -/
  covering : ∀ (s : Set X) (f : X → Set (Set X)),
    (∀ x ∈ s, f x ⊆ setsAt x) → (∀ x ∈ s, ∀ ε > (0 : ℝ), ∃ t ∈ f x, t ⊆ closedBall x ε) →
    ∃ t : Set (X × Set X), (∀ p ∈ t, p.1 ∈ s) ∧ (t.PairwiseDisjoint fun p ↦ p.2) ∧
      (∀ p ∈ t, p.2 ∈ f p.1) ∧ μ (s \ ⋃ p ∈ t, p.2) = 0

namespace VitaliFamily

variable {m0 : MeasurableSpace X} {μ : Measure X}

/-- A Vitali family for a measure `μ` is also a Vitali family for any measure absolutely continuous
with respect to `μ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/VitaliFamily/Variant8befb47df76cb42a234d1ec99895cd9eaa573b72d19b942d2cd0180d0475f351.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/VitaliFamily/Variant8befb47df76cb42a234d1ec99895cd9eaa573b72d19b942d2cd0180d0475f351.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0875e0ff0ce4dc6632f4886194e337384cc1afc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
