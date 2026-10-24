# analyticPregroupoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:040930fbeef673855b01990d349bc84cf0968c5fc1654f956ed2f68f2f39d49c",
  "kind": "def",
  "lexical_name": "analyticPregroupoid",
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
  "slug": "analyticpregroupoid--384037e223e35ba2845fe128",
  "source": {
    "blob": "1dd0f05ea6de964945846af5f766a4b5c3e59dde",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 58,
    "path": "GRWTSK/Analysis/ComplexAnalysis/AnalyticManifold/Variant7c7b7d1b7b8ce45791c5bbf82a3eb45a73f81422eb6e1da5d9036c416768711a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:384037e223e35ba2845fe128898f2dde2904ab66b0644d4263d3b13059b7f0de",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/AnalyticManifold/Variant7c7b7d1b7b8ce45791c5bbf82a3eb45a73f81422eb6e1da5d9036c416768711a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:040930fbeef673855b01990d349bc84cf0968c5fc1654f956ed2f68f2f39d49c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def analyticPregroupoid : Pregroupoid H where
  property f s := AnalyticOn 𝕜 (I ∘ f ∘ I.symm) (I.symm ⁻¹' s ∩ range I)
  comp {f g u v} hf hg _ _ _ := by
    have : I ∘ (g ∘ f) ∘ I.symm = (I ∘ g ∘ I.symm) ∘ I ∘ f ∘ I.symm := by ext x; simp
    simp only [this]
    apply hg.comp
    · exact hf.mono fun _ ⟨hx1, hx2⟩ ↦ ⟨hx1.1, hx2⟩
    · rintro x ⟨hx1, _⟩
      simpa only [mfld_simps] using hx1.2
  id_mem := by
    apply analyticOn_id.congr
    rintro x ⟨_, hx2⟩
    obtain ⟨y, hy⟩ := mem_range.1 hx2
    simp only [mfld_simps, ← hy]
  locality {f u} _ H := by
    apply analyticOn_of_locally_analyticOn
    rintro y ⟨hy1, hy2⟩
    obtain ⟨x, hx⟩ := mem_range.1 hy2
    simp only [mfld_simps, ← hx] at hy1 ⊢
    obtain ⟨v, v_open, xv, hv⟩ := H x hy1
    have : I.symm ⁻¹' (u ∩ v) ∩ range I = I.symm ⁻¹' u ∩ range I ∩ I.symm ⁻¹' v := by
      rw [preimage_inter, inter_assoc, inter_assoc, inter_comm _ (range I)]
    exact ⟨I.symm ⁻¹' v, v_open.preimage I.continuous_symm, by simpa, this ▸ hv⟩
  congr {f g u} _ fg hf := by
    apply hf.congr
    rintro y ⟨hy1, hy2⟩
    obtain ⟨x, hx⟩ := mem_range.1 hy2
    simp only [mfld_simps, ← hx] at hy1 ⊢
    rw [fg _ hy1]

variable (I) in
/-- Given a model with corners `(E, H)`, we define the groupoid of analytic transformations of
`H` as the maps that are `AnalyticOn` when read in `E` through `I`.  Using `AnalyticOn`
rather than `AnalyticOnNhd` gives us meaningful definitions at boundary points. -/
@[deprecated "use instead `contDiffGroupoid ω`" (since := "2025-04-13")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/AnalyticManifold/Variant7c7b7d1b7b8ce45791c5bbf82a3eb45a73f81422eb6e1da5d9036c416768711a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/AnalyticManifold/Variant7c7b7d1b7b8ce45791c5bbf82a3eb45a73f81422eb6e1da5d9036c416768711a.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1dd0f05ea6de964945846af5f766a4b5c3e59dde` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
