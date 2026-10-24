# strictAntiOn_dual_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "266fbb3b3f403c1beafd3ec999b5b2ad11fffd29",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 168,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/76/760e114a924b7978aa8f9a54c3fdeb8649031fec55a654f9dfb0fe4141336b3c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9c999167-6aeb-e97d-b2a7-9a0778a01753",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2084e8e1-9d93-6967-abd5-fae53ef05e18",
  "kind": "theorem",
  "lexical_name": "strictAntiOn_dual_iff",
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
  "slug": "strictantion-dual-iff--1b7e41fea815128482c2804d",
  "source": {
    "blob": "266fbb3b3f403c1beafd3ec999b5b2ad11fffd29",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 168,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant760e114a924b7978aa8f9a54c3fdeb8649031fec55a654f9dfb0fe4141336b3c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b7e41fea815128482c2804dd72a232ce4cd34590436574cb1e90187afc58e62",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant760e114a924b7978aa8f9a54c3fdeb8649031fec55a654f9dfb0fe4141336b3c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2084e8e1-9d93-6967-abd5-fae53ef05e18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem strictAntiOn_dual_iff :
    StrictAntiOn (toDual ∘ f ∘ ofDual : αᵒᵈ → βᵒᵈ) s ↔ StrictAntiOn f s := by
  rw [strictAntiOn_toDual_comp_iff, strictMonoOn_comp_ofDual_iff]

alias ⟨_, Monotone.dual_left⟩ := antitone_comp_ofDual_iff

alias ⟨_, Antitone.dual_left⟩ := monotone_comp_ofDual_iff

alias ⟨_, Monotone.dual_right⟩ := antitone_toDual_comp_iff

alias ⟨_, Antitone.dual_right⟩ := monotone_toDual_comp_iff

alias ⟨_, MonotoneOn.dual_left⟩ := antitoneOn_comp_ofDual_iff

alias ⟨_, AntitoneOn.dual_left⟩ := monotoneOn_comp_ofDual_iff

alias ⟨_, MonotoneOn.dual_right⟩ := antitoneOn_toDual_comp_iff

alias ⟨_, AntitoneOn.dual_right⟩ := monotoneOn_toDual_comp_iff

alias ⟨_, StrictMono.dual_left⟩ := strictAnti_comp_ofDual_iff

alias ⟨_, StrictAnti.dual_left⟩ := strictMono_comp_ofDual_iff

alias ⟨_, StrictMono.dual_right⟩ := strictAnti_toDual_comp_iff

alias ⟨_, StrictAnti.dual_right⟩ := strictMono_toDual_comp_iff

alias ⟨_, StrictMonoOn.dual_left⟩ := strictAntiOn_comp_ofDual_iff

alias ⟨_, StrictAntiOn.dual_left⟩ := strictMonoOn_comp_ofDual_iff

alias ⟨_, StrictMonoOn.dual_right⟩ := strictAntiOn_toDual_comp_iff

alias ⟨_, StrictAntiOn.dual_right⟩ := strictMonoOn_toDual_comp_iff

alias ⟨_, Monotone.dual⟩ := monotone_dual_iff

alias ⟨_, Antitone.dual⟩ := antitone_dual_iff

alias ⟨_, MonotoneOn.dual⟩ := monotoneOn_dual_iff

alias ⟨_, AntitoneOn.dual⟩ := antitoneOn_dual_iff

alias ⟨_, StrictMono.dual⟩ := strictMono_dual_iff

alias ⟨_, StrictAnti.dual⟩ := strictAnti_dual_iff

alias ⟨_, StrictMonoOn.dual⟩ := strictMonoOn_dual_iff

alias ⟨_, StrictAntiOn.dual⟩ := strictAntiOn_dual_iff

end OrderDual

section WellFounded

variable [Preorder α] [Preorder β] {f : α → β}

@[to_dual]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant760e114a924b7978aa8f9a54c3fdeb8649031fec55a654f9dfb0fe4141336b3c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant760e114a924b7978aa8f9a54c3fdeb8649031fec55a654f9dfb0fe4141336b3c.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `266fbb3b3f403c1beafd3ec999b5b2ad11fffd29` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
