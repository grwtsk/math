# NormedAddGroupHom.ker_completion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bb24ed31-b260-9b3e-5ded-37b6a003f557",
  "kind": "theorem",
  "lexical_name": "NormedAddGroupHom.ker_completion",
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
  "slug": "normedaddgrouphom-ker-completion--3133d85a5017a3cdd0676317",
  "source": {
    "blob": "952e3578590de9a9ba4b8fed91c623c8266b6b34",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 179,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variant1a53f8bbecd1f1d3f7320ca0d5ca4eeb0a5b14acba89bc47266d885ee2ba6feb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3133d85a5017a3cdd0676317b1a53d3991e6e4638d4249fb9fb9c2877c687bac",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variant1a53f8bbecd1f1d3f7320ca0d5ca4eeb0a5b14acba89bc47266d885ee2ba6feb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bb24ed31-b260-9b3e-5ded-37b6a003f557`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem NormedAddGroupHom.ker_completion {f : NormedAddGroupHom G H} {C : ℝ}
    (h : f.SurjectiveOnWith f.range C) :
    (f.completion.ker : Set <| Completion G) = closure (toCompl.comp <| incl f.ker).range := by
  refine le_antisymm ?_ (closure_minimal f.ker_le_ker_completion f.completion.isClosed_ker)
  rintro hatg (hatg_in : f.completion hatg = 0)
  rw [SeminormedAddCommGroup.mem_closure_iff]
  intro ε ε_pos
  rcases h.exists_pos with ⟨C', C'_pos, hC'⟩
  rcases exists_pos_mul_lt ε_pos (1 + C' * ‖f‖) with ⟨δ, δ_pos, hδ⟩
  obtain ⟨_, ⟨g : G, rfl⟩, hg : ‖hatg - g‖ < δ⟩ :=
    SeminormedAddCommGroup.mem_closure_iff.mp (Completion.denseInducing_coe.dense hatg) δ δ_pos
  obtain ⟨g' : G, hgg' : f g' = f g, hfg : ‖g'‖ ≤ C' * ‖f g‖⟩ := hC' (f g) (mem_range_self _ g)
  have mem_ker : g - g' ∈ f.ker := by rw [f.mem_ker, map_sub, sub_eq_zero.mpr hgg'.symm]
  refine ⟨_, ⟨⟨g - g', mem_ker⟩, rfl⟩, ?_⟩
  have : ‖f g‖ ≤ ‖f‖ * δ
  calc ‖f g‖ ≤ ‖f‖ * ‖hatg - g‖ := by simpa [hatg_in] using f.completion.le_opNorm (hatg - g)
    _ ≤ ‖f‖ * δ := by gcongr
  calc ‖hatg - ↑(g - g')‖ = ‖hatg - g + g'‖ := by rw [Completion.coe_sub, sub_add]
    _ ≤ ‖hatg - g‖ + ‖(g' : Completion G)‖ := norm_add_le _ _
    _ = ‖hatg - g‖ + ‖g'‖ := by rw [Completion.norm_coe]
    _ < δ + C' * ‖f g‖ := add_lt_add_of_lt_of_le hg hfg
    _ ≤ δ + C' * (‖f‖ * δ) := by gcongr
    _ < ε := by simpa only [add_mul, one_mul, mul_assoc] using hδ
#align normed_add_group_hom.ker_completion NormedAddGroupHom.ker_completion

end Completion

section Extension

variable {G : Type*} [SeminormedAddCommGroup G]

variable {H : Type*} [SeminormedAddCommGroup H] [SeparatedSpace H] [CompleteSpace H]

/-- If `H` is complete, the extension of `f : NormedAddGroupHom G H` to a
`NormedAddGroupHom (completion G) H`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variant1a53f8bbecd1f1d3f7320ca0d5ca4eeb0a5b14acba89bc47266d885ee2ba6feb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/HomCompletion/Variant1a53f8bbecd1f1d3f7320ca0d5ca4eeb0a5b14acba89bc47266d885ee2ba6feb.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `952e3578590de9a9ba4b8fed91c623c8266b6b34` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
