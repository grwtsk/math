# scalene_iff_dist_ne_and_dist_ne_and_dist_ne

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "230d2160a32882d6098735e31cdce61e10eb79da",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 145,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/06/06cb35723ab5765e6b821861da5b6f86b20008240013368dd9584277e68e5daf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0d047378-dc40-0849-c818-4540ea00ba50",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:540396a6-35ff-4571-9428-875e2e59e7a1",
  "kind": "lemma",
  "lexical_name": "scalene_iff_dist_ne_and_dist_ne_and_dist_ne",
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
  "slug": "scalene-iff-dist-ne-and-dist-ne-and-dist-ne--8203524d32f4de2d1fec3ac2",
  "source": {
    "blob": "230d2160a32882d6098735e31cdce61e10eb79da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 145,
    "path": "GRWTSK/Topology/MetricTopology/Simplex/Variant06cb35723ab5765e6b821861da5b6f86b20008240013368dd9584277e68e5daf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8203524d32f4de2d1fec3ac2a2f0e88de0cb5b175abef9dabeacc59b74880e67",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Simplex/Variant06cb35723ab5765e6b821861da5b6f86b20008240013368dd9584277e68e5daf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:540396a6-35ff-4571-9428-875e2e59e7a1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 145–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma scalene_iff_dist_ne_and_dist_ne_and_dist_ne {t : Triangle R P} :
    t.Scalene ↔ dist (t.points 0) (t.points 1) ≠ dist (t.points 0) (t.points 2) ∧
      dist (t.points 0) (t.points 1) ≠ dist (t.points 1) (t.points 2) ∧
      dist (t.points 0) (t.points 2) ≠ dist (t.points 1) (t.points 2) := by
  refine ⟨fun h ↦
    ⟨h.dist_ne (by decide : (0 : Fin 3) ≠ 1) (by decide : (0 : Fin 3) ≠ 2) (by decide) (by decide),
     h.dist_ne (by decide : (0 : Fin 3) ≠ 1) (by decide : (1 : Fin 3) ≠ 2) (by decide) (by decide),
     h.dist_ne (by decide : (0 : Fin 3) ≠ 2) (by decide : (1 : Fin 3) ≠ 2) (by decide) (by decide)⟩,
    fun ⟨h₁, h₂, h₃⟩ ↦ ?_⟩
  intro ⟨⟨x₁, x₂⟩, hx⟩ ⟨⟨y₁, y₂⟩, hy⟩ hxy
  simp only at hx hy hxy
  simp only [Subtype.mk.injEq, Prod.mk.injEq]
  fin_cases x₁ <;> fin_cases x₂ <;> simp +decide only at hx <;>
    fin_cases y₁ <;> fin_cases y₂ <;> simp +decide only at hy <;>
    simp [h₁, h₂, h₃, h₁.symm, h₂.symm, h₃.symm] at hxy ⊢

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Simplex/Variant06cb35723ab5765e6b821861da5b6f86b20008240013368dd9584277e68e5daf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Simplex/Variant06cb35723ab5765e6b821861da5b6f86b20008240013368dd9584277e68e5daf.lean#L145).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `230d2160a32882d6098735e31cdce61e10eb79da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
