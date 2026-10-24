# tendsto_nhdsWithin_nhdsWithin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3c2b8dc6-5c74-78f7-09b5-a6b8753180b1",
  "kind": "theorem",
  "lexical_name": "tendsto_nhdsWithin_nhdsWithin",
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
  "slug": "tendsto-nhdswithin-nhdswithin--354467b6cdbb82e1565fb9dd",
  "source": {
    "blob": "d67fcb197e4a2658ac3da9ee76ba8f99572ba50f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 801,
    "line": 796,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Defs/Variante7b4ca661d152a2260627775739a4d1bdf204407728d4a0da39dbead6e7beb47.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:354467b6cdbb82e1565fb9ddde2fdcd43ac2b4ae21374751ebd3feaaad514ad8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Defs/Variante7b4ca661d152a2260627775739a4d1bdf204407728d4a0da39dbead6e7beb47.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3c2b8dc6-5c74-78f7-09b5-a6b8753180b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 796–801.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_nhdsWithin_nhdsWithin [PseudoMetricSpace β] {t : Set β} {f : α → β} {a b} :
    Tendsto f (𝓝[s] a) (𝓝[t] b) ↔
      ∀ ε > 0, ∃ δ > 0, ∀ ⦃x : α⦄, x ∈ s → dist x a < δ → f x ∈ t ∧ dist (f x) b < ε :=
  (nhdsWithin_basis_ball.tendsto_iff nhdsWithin_basis_ball).trans <| by
    simp only [inter_comm _ s, inter_comm _ t, mem_inter_iff, and_imp, gt_iff_lt, mem_ball]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Defs/Variante7b4ca661d152a2260627775739a4d1bdf204407728d4a0da39dbead6e7beb47.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Defs/Variante7b4ca661d152a2260627775739a4d1bdf204407728d4a0da39dbead6e7beb47.lean#L796).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d67fcb197e4a2658ac3da9ee76ba8f99572ba50f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
