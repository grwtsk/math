# toValued

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b3fdced70ae103f70072c383347d3935078e190afa72e12c9e30209787893530",
  "kind": "def",
  "lexical_name": "toValued",
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
  "slug": "tovalued--65da719cd0f1b0fa0dd8129c",
  "source": {
    "blob": "e95bb2d606654b45d628d5e2bf380eef65edeb57",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 59,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedValued/Variant9a2a0033e78db4fe6c4b7380ab70580b382890941843cd76efdf7a7d67521ea7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:65da719cd0f1b0fa0dd8129c851bbd00ed3ee4782cd7ea217519da3fc0a97b78",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedValued/Variant9a2a0033e78db4fe6c4b7380ab70580b382890941843cd76efdf7a7d67521ea7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b3fdced70ae103f70072c383347d3935078e190afa72e12c9e30209787893530`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toValued : Valued K ℝ≥0 :=
  { hK.toUniformSpace,
    inferInstanceAs (IsUniformAddGroup K) with
    v := valuation
    is_topological_valuation := fun U => by
      rw [Metric.mem_nhds_iff]
      exact ⟨fun ⟨ε, hε, h⟩  =>
          ⟨Units.mk0 ⟨ε, le_of_lt hε⟩ (ne_of_gt hε), fun x hx ↦ h (mem_ball_zero_iff.mpr hx)⟩,
        fun ⟨ε, hε⟩ => ⟨(ε : ℝ), NNReal.coe_pos.mpr (Units.zero_lt _),
          fun x hx ↦ hε (mem_ball_zero_iff.mp hx)⟩⟩ }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedValued/Variant9a2a0033e78db4fe6c4b7380ab70580b382890941843cd76efdf7a7d67521ea7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/NormedValued/Variant9a2a0033e78db4fe6c4b7380ab70580b382890941843cd76efdf7a7d67521ea7.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e95bb2d606654b45d628d5e2bf380eef65edeb57` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
