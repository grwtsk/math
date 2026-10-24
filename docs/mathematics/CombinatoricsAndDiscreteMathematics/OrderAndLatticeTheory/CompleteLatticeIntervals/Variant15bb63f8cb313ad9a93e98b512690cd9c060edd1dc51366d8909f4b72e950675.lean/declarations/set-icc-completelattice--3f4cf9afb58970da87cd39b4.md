# Set.Icc.completeLattice

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9625b8416752e4a135eff1ee1cf38fe15aa2c8c7acb89659c8614a7fed9c0ed0",
  "kind": "instance",
  "lexical_name": "Set.Icc.completeLattice",
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
  "slug": "set-icc-completelattice--3f4cf9afb58970da87cd39b4",
  "source": {
    "blob": "5c9a57baa333e8d4a23f7c0c1a3823086584ad82",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 180,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variant15bb63f8cb313ad9a93e98b512690cd9c060edd1dc51366d8909f4b72e950675.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3f4cf9afb58970da87cd39b405f667c961ca2659410e7f23c98a5a4c0afc5bc1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variant15bb63f8cb313ad9a93e98b512690cd9c060edd1dc51366d8909f4b72e950675.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9625b8416752e4a135eff1ee1cf38fe15aa2c8c7acb89659c8614a7fed9c0ed0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance Set.Icc.completeLattice [ConditionallyCompleteLattice α]
    {a b : α} [Fact (a ≤ b)] : CompleteLattice (Set.Icc a b) where
  __ := (inferInstance : BoundedOrder ↑(Icc a b))
  sSup S := if hS : S = ∅ then ⟨a, le_rfl, Fact.out⟩ else ⟨sSup ((↑) '' S), by
    rw [← Set.not_nonempty_iff_eq_empty, not_not] at hS
    refine ⟨?_, csSup_le (hS.image Subtype.val) (fun _ ⟨c, _, hc⟩ ↦ hc ▸ c.2.2)⟩
    obtain ⟨c, hc⟩ := hS
    exact c.2.1.trans (le_csSup ⟨b, fun _ ⟨d, _, hd⟩ ↦ hd ▸ d.2.2⟩ ⟨c, hc, rfl⟩)⟩
  isLUB_sSup S := by
    split_ifs with hS
    · subst hS; simp only [isLUB_empty_iff, isBot_iff_eq_bot]; rfl
    · exact .of_image Subtype.coe_le_coe <| isLUB_csSup ((Set.nonempty_iff_ne_empty.mpr hS).image _)
        ((Subtype.mono_coe _).map_bddAbove (OrderTop.bddAbove S))
  sInf S := if hS : S = ∅ then ⟨b, Fact.out, le_rfl⟩ else ⟨sInf ((↑) '' S), by
    rw [← Set.not_nonempty_iff_eq_empty, not_not] at hS
    refine ⟨le_csInf (hS.image Subtype.val) (fun _ ⟨c, _, hc⟩ ↦ hc ▸ c.2.1), ?_⟩
    obtain ⟨c, hc⟩ := hS
    exact le_trans (csInf_le ⟨a, fun _ ⟨d, _, hd⟩ ↦ hd ▸ d.2.1⟩ ⟨c, hc, rfl⟩) c.2.2⟩
  isGLB_sInf S := by
    split_ifs with hS
    · subst hS; simp only [isGLB_empty_iff, isTop_iff_eq_top]; rfl
    · exact .of_image Subtype.coe_le_coe <| isGLB_csInf ((Set.nonempty_iff_ne_empty.mpr hS).image _)
        ((Subtype.mono_coe _).map_bddBelow (OrderBot.bddBelow S))

/-- Complete linear order structure on `Set.Icc` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variant15bb63f8cb313ad9a93e98b512690cd9c060edd1dc51366d8909f4b72e950675.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLatticeIntervals/Variant15bb63f8cb313ad9a93e98b512690cd9c060edd1dc51366d8909f4b72e950675.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c9a57baa333e8d4a23f7c0c1a3823086584ad82` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
