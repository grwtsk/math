# strict_anti_on_dual_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d46fd5754027356adec56aaaec888156bde1049d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 263,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7a/7a9c9719cb7349932cda0195b06fec8ccb6199e2e547eb191705312316e26036.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2527c348-eeaf-2a54-2f43-6c379d31771b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0606c9dd-511f-e534-4b5d-41a12d94d766",
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
  "slug": "strict-anti-on-dual-iff--e09698b1fde51afa82b4609e",
  "source": {
    "blob": "d46fd5754027356adec56aaaec888156bde1049d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 347,
    "line": 263,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant7a9c9719cb7349932cda0195b06fec8ccb6199e2e547eb191705312316e26036.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e09698b1fde51afa82b4609ef26bc4bf678408a49a8818919eb987e68606d198",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant7a9c9719cb7349932cda0195b06fec8ccb6199e2e547eb191705312316e26036.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0606c9dd-511f-e534-4b5d-41a12d94d766`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 263–347.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant7a9c9719cb7349932cda0195b06fec8ccb6199e2e547eb191705312316e26036.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant7a9c9719cb7349932cda0195b06fec8ccb6199e2e547eb191705312316e26036.lean#L263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d46fd5754027356adec56aaaec888156bde1049d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
