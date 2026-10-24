# mem_frontier_of_gauge_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9fca42b4-1327-60f9-8d6a-a5123df22e7c",
  "kind": "theorem",
  "lexical_name": "mem_frontier_of_gauge_eq_one",
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
  "slug": "mem-frontier-of-gauge-eq-one--97c537c04ceb99f64b8c488c",
  "source": {
    "blob": "415db982bc4a48c22e0df9c86eb1e74e69a417a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 436,
    "line": 432,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Gauge/Variantb0f18e226aed78cf2f7a74a299d936c0f49588830595d6e8b5c7b3ff84782846.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:97c537c04ceb99f64b8c488c1b9f8f8e2f2100e90a08fc6f7f0b70176d69dd0e",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Gauge/Variantb0f18e226aed78cf2f7a74a299d936c0f49588830595d6e8b5c7b3ff84782846.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9fca42b4-1327-60f9-8d6a-a5123df22e7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 432–436.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_frontier_of_gauge_eq_one (hc : Convex ℝ s) (hs₀ : 0 ∈ s) (ha : Absorbent ℝ s)
    (h : gauge s x = 1) : x ∈ frontier s :=
  ⟨mem_closure_of_gauge_le_one hc hs₀ ha h.le, fun h' ↦
    (interior_subset_gauge_lt_one s h').out.ne h⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Gauge/Variantb0f18e226aed78cf2f7a74a299d936c0f49588830595d6e8b5c7b3ff84782846.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Gauge/Variantb0f18e226aed78cf2f7a74a299d936c0f49588830595d6e8b5c7b3ff84782846.lean#L432).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `415db982bc4a48c22e0df9c86eb1e74e69a417a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
