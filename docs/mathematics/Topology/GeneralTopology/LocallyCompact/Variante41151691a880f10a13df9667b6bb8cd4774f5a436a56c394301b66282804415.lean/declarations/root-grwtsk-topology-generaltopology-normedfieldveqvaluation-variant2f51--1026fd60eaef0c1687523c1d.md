# _root_.GRWTSK.Topology.GeneralTopology.NormedFieldVEqValuation.Variant2f5156db72f830f4b0a58a52ad17141fa7541ae13d2c8bb435e0a7b1fe61331c.Irreducible.maximalIdeal_pow_eq_closedBall_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cead8a91-71e7-9163-bea3-772ea80df497",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.Topology.GeneralTopology.NormedFieldVEqValuation.Variant2f5156db72f830f4b0a58a52ad17141fa7541ae13d2c8bb435e0a7b1fe61331c.Irreducible.maximalIdeal_pow_eq_closedBall_pow",
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
  "slug": "root-grwtsk-topology-generaltopology-normedfieldveqvaluation-variant2f51--1026fd60eaef0c1687523c1d",
  "source": {
    "blob": "1a30d89f13331687b218c27f3fa5d6f773087fd9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 92,
    "path": "GRWTSK/Topology/GeneralTopology/LocallyCompact/Variante41151691a880f10a13df9667b6bb8cd4774f5a436a56c394301b66282804415.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1026fd60eaef0c1687523c1d6bdba563e5c25be7b5d9201536f48f34cbc98815",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocallyCompact/Variante41151691a880f10a13df9667b6bb8cd4774f5a436a56c394301b66282804415.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cead8a91-71e7-9163-bea3-772ea80df497`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.Topology.GeneralTopology.NormedFieldVEqValuation.Variant2f5156db72f830f4b0a58a52ad17141fa7541ae13d2c8bb435e0a7b1fe61331c.Irreducible.maximalIdeal_pow_eq_closedBall_pow [IsDiscreteValuationRing 𝒪[K]]
    {ϖ : 𝒪[K]} (h : Irreducible ϖ) (n : ℕ) :
    ((𝓂[K] ^ n : Ideal 𝒪[K]) : Set 𝒪[K]) = Metric.closedBall 0 (‖ϖ‖ ^ n) := by
  have : ‖ϖ‖ ^ n = ‖ϖ ^ n‖ := by simp
  rw [this, ← coe_span_singleton_eq_closedBall, ← Ideal.span_singleton_pow, ← h.maximalIdeal_eq]

section FiniteResidueField

variable {K : Type*} [NontriviallyNormedField K] [IsUltrametricDist K]

open Valued

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocallyCompact/Variante41151691a880f10a13df9667b6bb8cd4774f5a436a56c394301b66282804415.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocallyCompact/Variante41151691a880f10a13df9667b6bb8cd4774f5a436a56c394301b66282804415.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1a30d89f13331687b218c27f3fa5d6f773087fd9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
