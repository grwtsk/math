# strict_anti_on_dual_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e8627a3c-e8b3-8d37-5254-49840cbe5550",
  "kind": "theorem",
  "lexical_name": "strict_anti_on_dual_iff",
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
  "slug": "strict-anti-on-dual-iff--d0acd5cc6481a36752da9f77",
  "source": {
    "blob": "555d2a2ac28ba34802ef438276f5f0bb0a216ebf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 355,
    "line": 271,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantfb69dcb51b6bb92b357a4bee2ef109bd4e23431e11a2fcac96369c89fa4b9879.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d0acd5cc6481a36752da9f771da9af26722ef4c4eab797b8b90264f31c65359a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantfb69dcb51b6bb92b357a4bee2ef109bd4e23431e11a2fcac96369c89fa4b9879.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e8627a3c-e8b3-8d37-5254-49840cbe5550`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 271–355.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem strict_anti_on_dual_iff :
    StrictAntiOn (toDual ∘ f ∘ ofDual : αᵒᵈ → βᵒᵈ) s ↔ StrictAntiOn f s := by
  rw [strictAntiOn_toDual_comp_iff, strictMonoOn_comp_ofDual_iff]

alias ⟨_, Monotone.dual_left⟩ := antitone_comp_ofDual_iff
#align monotone.dual_left Monotone.dual_left

alias ⟨_, Antitone.dual_left⟩ := monotone_comp_ofDual_iff
#align antitone.dual_left Antitone.dual_left

alias ⟨_, Monotone.dual_right⟩ := antitone_toDual_comp_iff
#align monotone.dual_right Monotone.dual_right

alias ⟨_, Antitone.dual_right⟩ := monotone_toDual_comp_iff
#align antitone.dual_right Antitone.dual_right

alias ⟨_, MonotoneOn.dual_left⟩ := antitoneOn_comp_ofDual_iff
#align monotone_on.dual_left MonotoneOn.dual_left

alias ⟨_, AntitoneOn.dual_left⟩ := monotoneOn_comp_ofDual_iff
#align antitone_on.dual_left AntitoneOn.dual_left

alias ⟨_, MonotoneOn.dual_right⟩ := antitoneOn_toDual_comp_iff
#align monotone_on.dual_right MonotoneOn.dual_right

alias ⟨_, AntitoneOn.dual_right⟩ := monotoneOn_toDual_comp_iff
#align antitone_on.dual_right AntitoneOn.dual_right

alias ⟨_, StrictMono.dual_left⟩ := strictAnti_comp_ofDual_iff
#align strict_mono.dual_left StrictMono.dual_left

alias ⟨_, StrictAnti.dual_left⟩ := strictMono_comp_ofDual_iff
#align strict_anti.dual_left StrictAnti.dual_left

alias ⟨_, StrictMono.dual_right⟩ := strictAnti_toDual_comp_iff
#align strict_mono.dual_right StrictMono.dual_right

alias ⟨_, StrictAnti.dual_right⟩ := strictMono_toDual_comp_iff
#align strict_anti.dual_right StrictAnti.dual_right

alias ⟨_, StrictMonoOn.dual_left⟩ := strictAntiOn_comp_ofDual_iff
#align strict_mono_on.dual_left StrictMonoOn.dual_left

alias ⟨_, StrictAntiOn.dual_left⟩ := strictMonoOn_comp_ofDual_iff
#align strict_anti_on.dual_left StrictAntiOn.dual_left

alias ⟨_, StrictMonoOn.dual_right⟩ := strictAntiOn_toDual_comp_iff
#align strict_mono_on.dual_right StrictMonoOn.dual_right

alias ⟨_, StrictAntiOn.dual_right⟩ := strictMonoOn_toDual_comp_iff
#align strict_anti_on.dual_right StrictAntiOn.dual_right

alias ⟨_, Monotone.dual⟩ := monotone_dual_iff
#align monotone.dual Monotone.dual

alias ⟨_, Antitone.dual⟩ := antitone_dual_iff
#align antitone.dual Antitone.dual

alias ⟨_, MonotoneOn.dual⟩ := monotone_on_dual_iff
#align monotone_on.dual MonotoneOn.dual

alias ⟨_, AntitoneOn.dual⟩ := antitone_on_dual_iff
#align antitone_on.dual AntitoneOn.dual

alias ⟨_, StrictMono.dual⟩ := strict_mono_dual_iff
#align strict_mono.dual StrictMono.dual

alias ⟨_, StrictAnti.dual⟩ := strict_anti_dual_iff
#align strict_anti.dual StrictAnti.dual

alias ⟨_, StrictMonoOn.dual⟩ := strict_mono_on_dual_iff
#align strict_mono_on.dual StrictMonoOn.dual

alias ⟨_, StrictAntiOn.dual⟩ := strict_anti_on_dual_iff
#align strict_anti_on.dual StrictAntiOn.dual

end OrderDual

/-! ### Monotonicity in function spaces -/


section Preorder

variable [Preorder α]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantfb69dcb51b6bb92b357a4bee2ef109bd4e23431e11a2fcac96369c89fa4b9879.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantfb69dcb51b6bb92b357a4bee2ef109bd4e23431e11a2fcac96369c89fa4b9879.lean#L271).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `555d2a2ac28ba34802ef438276f5f0bb0a216ebf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
