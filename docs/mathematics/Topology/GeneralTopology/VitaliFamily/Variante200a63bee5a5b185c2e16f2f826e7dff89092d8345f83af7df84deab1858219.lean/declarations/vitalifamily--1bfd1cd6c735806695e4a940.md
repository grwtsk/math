# VitaliFamily

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7fb61f19c9ba5f1c13165e1ee027696be3a71ef167360286eb8f7e6d9a6fd92d",
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
  "slug": "vitalifamily--1bfd1cd6c735806695e4a940",
  "source": {
    "blob": "125a712f41ed4043ef2d9afa01a7d1c5e5ee4f93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 72,
    "path": "GRWTSK/Topology/GeneralTopology/VitaliFamily/Variante200a63bee5a5b185c2e16f2f826e7dff89092d8345f83af7df84deab1858219.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1bfd1cd6c735806695e4a940a692b4dfa29e5f6d9649883e72bb5d0a2c0a1cca",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/VitaliFamily/Variante200a63bee5a5b185c2e16f2f826e7dff89092d8345f83af7df84deab1858219.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7fb61f19c9ba5f1c13165e1ee027696be3a71ef167360286eb8f7e6d9a6fd92d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–95.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/VitaliFamily/Variante200a63bee5a5b185c2e16f2f826e7dff89092d8345f83af7df84deab1858219.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/VitaliFamily/Variante200a63bee5a5b185c2e16f2f826e7dff89092d8345f83af7df84deab1858219.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `125a712f41ed4043ef2d9afa01a7d1c5e5ee4f93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
