# WithSeminorms.isVonNBounded_iff_finset_seminorm_bounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8db34dd9-764d-ab44-7087-abf6e297e3da",
  "kind": "theorem",
  "lexical_name": "WithSeminorms.isVonNBounded_iff_finset_seminorm_bounded",
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
  "slug": "withseminorms-isvonnbounded-iff-finset-seminorm-bounded--10c00ac754d834824f6672a5",
  "source": {
    "blob": "0863e0adc73c06f53ace6226fbc77d994e489898",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 577,
    "line": 555,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/WithSeminorms/Variantb9a022558c4a60ba4ab37ba2e17ea802c435ba2965bec05c33084eefd5be3a46.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:10c00ac754d834824f6672a5fc526f21b0443023bd4cfd22bf39cca0edb98349",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/WithSeminorms/Variantb9a022558c4a60ba4ab37ba2e17ea802c435ba2965bec05c33084eefd5be3a46.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8db34dd9-764d-ab44-7087-abf6e297e3da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 555–577.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem WithSeminorms.isVonNBounded_iff_finset_seminorm_bounded {s : Set E} (hp : WithSeminorms p) :
    IsVonNBounded 𝕜 s ↔ ∀ I : Finset ι, ∃ r > 0, ∀ x ∈ s, I.sup p x < r := by
  rw [hp.hasBasis.isVonNBounded_iff]
  constructor
  · intro h I
    simp only [id] at h
    specialize h ((I.sup p).ball 0 1) (p.basisSets_mem I zero_lt_one)
    rcases h.exists_pos with ⟨r, hr, h⟩
    obtain ⟨a, ha⟩ := NormedField.exists_lt_norm 𝕜 r
    specialize h a (le_of_lt ha)
    rw [Seminorm.smul_ball_zero (norm_pos_iff.1 <| hr.trans ha), mul_one] at h
    refine ⟨‖a‖, lt_trans hr ha, ?_⟩
    intro x hx
    specialize h hx
    exact (Finset.sup I p).mem_ball_zero.mp h
  intro h s' hs'
  rcases p.basisSets_iff.mp hs' with ⟨I, r, hr, hs'⟩
  rw [id, hs']
  rcases h I with ⟨r', _, h'⟩
  simp_rw [← (I.sup p).mem_ball_zero] at h'
  refine Absorbs.mono_right ?_ h'
  exact (Finset.sup I p).ball_zero_absorbs_ball_zero hr

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/WithSeminorms/Variantb9a022558c4a60ba4ab37ba2e17ea802c435ba2965bec05c33084eefd5be3a46.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/WithSeminorms/Variantb9a022558c4a60ba4ab37ba2e17ea802c435ba2965bec05c33084eefd5be3a46.lean#L555).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0863e0adc73c06f53ace6226fbc77d994e489898` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
