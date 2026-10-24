# intersectionOfLocallyDirected

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b623d05f694c688926762245abbd5b65b14790c8506f21d681e03b5f9a37df05",
  "kind": "def",
  "lexical_name": "intersectionOfLocallyDirected",
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
  "slug": "intersectionoflocallydirected--503cb274319ba597749919f4",
  "source": {
    "blob": "bd4cfb063daa86c8271de6f6d6cff27ea478211b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 99,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Directed/Variant4cb434aa0fae69924f38843a7ce577ebded4373bf31b5c52f57d716a5a537f2a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:503cb274319ba597749919f49cfa10b73f52599bc3cd60450092208dfec50f95",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Directed/Variant4cb434aa0fae69924f38843a7ce577ebded4373bf31b5c52f57d716a5a537f2a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b623d05f694c688926762245abbd5b65b14790c8506f21d681e03b5f9a37df05`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def intersectionOfLocallyDirected [P.IsStableUnderBaseChange] [P.HasOfPostcompProperty P]
    (i j : 𝒰.I₀) : (pullback (𝒰.f i) (𝒰.f j)).Cover (precoverage P) where
  I₀ := Σ (k : 𝒰.I₀), (k ⟶ i) × (k ⟶ j)
  X k := 𝒰.X k.1
  f k := pullback.lift (𝒰.trans k.2.1) (𝒰.trans k.2.2) (by simp)
  mem₀ := by
    rw [presieve₀_mem_precoverage_iff]
    refine ⟨fun x ↦ ?_, fun k ↦ ?_⟩
    · use ⟨(𝒰.exists_lift_trans_eq x).choose, (𝒰.exists_lift_trans_eq x).choose_spec.choose,
        (𝒰.exists_lift_trans_eq x).choose_spec.choose_spec.choose⟩
      exact (𝒰.exists_lift_trans_eq x).choose_spec.choose_spec.choose_spec
    · apply P.of_postcomp (W' := P) _ (pullback.fst _ _) (P.pullback_fst _ _ (𝒰.map_prop _))
      rw [pullback.lift_fst]
      exact 𝒰.property_trans _

/-- The canonical diagram induced by a locally directed cover. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Directed/Variant4cb434aa0fae69924f38843a7ce577ebded4373bf31b5c52f57d716a5a537f2a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Directed/Variant4cb434aa0fae69924f38843a7ce577ebded4373bf31b5c52f57d716a5a537f2a.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd4cfb063daa86c8271de6f6d6cff27ea478211b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
