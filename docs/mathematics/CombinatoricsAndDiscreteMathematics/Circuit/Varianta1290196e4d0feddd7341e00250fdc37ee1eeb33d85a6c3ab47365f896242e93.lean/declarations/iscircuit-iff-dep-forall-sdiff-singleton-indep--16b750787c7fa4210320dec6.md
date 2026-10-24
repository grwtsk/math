# isCircuit_iff_dep_forall_sdiff_singleton_indep

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c52d178e-cecc-19a4-4e7f-e66cdd47afff",
  "kind": "lemma",
  "lexical_name": "isCircuit_iff_dep_forall_sdiff_singleton_indep",
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
  "slug": "iscircuit-iff-dep-forall-sdiff-singleton-indep--16b750787c7fa4210320dec6",
  "source": {
    "blob": "a0b8673db619c1bc16a9da99a689b62d313d45b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 139,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Circuit/Varianta1290196e4d0feddd7341e00250fdc37ee1eeb33d85a6c3ab47365f896242e93.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:16b750787c7fa4210320dec610157dd8cc0bc1098f7015113dc7dd4d1046df63",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Circuit/Varianta1290196e4d0feddd7341e00250fdc37ee1eeb33d85a6c3ab47365f896242e93.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c52d178e-cecc-19a4-4e7f-e66cdd47afff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isCircuit_iff_dep_forall_sdiff_singleton_indep :
    M.IsCircuit C ↔ M.Dep C ∧ ∀ e ∈ C, M.Indep (C \ {e}) := by
  wlog hCE : C ⊆ M.E
  · exact iff_of_false (hCE ∘ IsCircuit.subset_ground) (fun h ↦ hCE h.1.subset_ground)
  simp [isCircuit_iff_minimal_not_indep hCE, ← not_indep_iff hCE,
    minimal_iff_forall_sdiff_singleton (P := (¬ M.Indep ·))
    (fun _ _ hY hYX hX ↦ hY <| hX.subset hYX)]

@[deprecated (since := "2026-06-03")]
alias isCircuit_iff_dep_forall_diff_singleton_indep :=
  isCircuit_iff_dep_forall_sdiff_singleton_indep

/-! ### Independence and bases -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Circuit/Varianta1290196e4d0feddd7341e00250fdc37ee1eeb33d85a6c3ab47365f896242e93.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Circuit/Varianta1290196e4d0feddd7341e00250fdc37ee1eeb33d85a6c3ab47365f896242e93.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0b8673db619c1bc16a9da99a689b62d313d45b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
