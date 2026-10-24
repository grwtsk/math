# Indep.fundCircuit_isCircuit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c2fd3193f52863b78b94e2e5dba8c47beb4f325b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 237,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/23/230747e69923404de76ce2fdf216cd8ae37a3b4ff4afd28598de465f5e81fbef.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2a4dac3d-de3d-b824-1269-3a3bb37600b0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5865c695-934a-f2bc-949a-4497bebbfac5",
  "kind": "lemma",
  "lexical_name": "Indep.fundCircuit_isCircuit",
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
  "slug": "indep-fundcircuit-iscircuit--fd258b498bd0fd3391d8d480",
  "source": {
    "blob": "c2fd3193f52863b78b94e2e5dba8c47beb4f325b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 237,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Circuit/Variant230747e69923404de76ce2fdf216cd8ae37a3b4ff4afd28598de465f5e81fbef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd258b498bd0fd3391d8d480f44deca3f52883ab28cf657a1b7faa45b2d3b55e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Circuit/Variant230747e69923404de76ce2fdf216cd8ae37a3b4ff4afd28598de465f5e81fbef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5865c695-934a-f2bc-949a-4497bebbfac5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 237–247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Indep.fundCircuit_isCircuit (hI : M.Indep I) (hecl : e ∈ M.closure I) (heI : e ∉ I) :
    M.IsCircuit (M.fundCircuit e I) := by
  have aux : ⋂₀ {J | J ⊆ I ∧ e ∈ M.closure J} ⊆ I := sInter_subset_of_mem (by simpa)
  rw [fundCircuit_eq_sInter hecl]
  refine (hI.subset aux).insert_isCircuit_of_forall ?_ ?_ ?_
  · simp [show ∃ x ⊆ I, e ∈ M.closure x ∧ e ∉ x from ⟨I, by simp [hecl, heI]⟩]
  · rw [hI.closure_sInter_eq_biInter_closure_of_forall_subset ⟨I, by simpa⟩ (by simp +contextual)]
    simp
  simp only [mem_sInter, mem_setOf_eq, and_imp]
  exact fun f hf hecl ↦ (hf _ (diff_subset.trans aux) hecl).2 rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Circuit/Variant230747e69923404de76ce2fdf216cd8ae37a3b4ff4afd28598de465f5e81fbef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Circuit/Variant230747e69923404de76ce2fdf216cd8ae37a3b4ff4afd28598de465f5e81fbef.lean#L237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2fd3193f52863b78b94e2e5dba8c47beb4f325b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
