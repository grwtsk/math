# cycleIcc_of_le_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "377fb0e6477fa964b9ba897bf349d473e6f15ef8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 390,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8d/8dd395d98c0a15a149e25a600117c086f30ae8cfa7cf30c008ad0d3453f23657.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:66dfb11a-aa72-841d-dd8d-246372e4d705",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:82dc3ac7-3b77-bfd9-3801-b16607971fcd",
  "kind": "theorem",
  "lexical_name": "cycleIcc_of_le_of_le",
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
  "slug": "cycleicc-of-le-of-le--df8fb970b8e7ce5ac5413e84",
  "source": {
    "blob": "377fb0e6477fa964b9ba897bf349d473e6f15ef8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 411,
    "line": 390,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant8dd395d98c0a15a149e25a600117c086f30ae8cfa7cf30c008ad0d3453f23657.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df8fb970b8e7ce5ac5413e84b544423d27f00492d8aa022fec67ed203e73e9f2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant8dd395d98c0a15a149e25a600117c086f30ae8cfa7cf30c008ad0d3453f23657.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:82dc3ac7-3b77-bfd9-3801-b16607971fcd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 390–411.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cycleIcc_of_le_of_le (hik : i ≤ k) (hkj : k ≤ j) [NeZero n] :
    (cycleIcc i j) k = if k = j then i else k + 1 := by
  have hij : i ≤ j := le_trans hik hkj
  have kin : k ∈ Set.range (natAdd_castLEEmb (Nat.sub_le n i)) := by
    simp [range_natAdd_castLEEmb]; lia
  have : (((addNatEmb (n - (n - i.1))).trans (finCongr _).toEmbedding).toEquivRange.symm ⟨k, kin⟩)
      = subNat i.1 (k.cast (by lia)) (by simp; lia) := by
    simpa [-Function.Embedding.coe_trans, symm_apply_eq] using eq_of_val_eq (by simp; lia)
  simp only [cycleIcc_to_cycleRange hij kin, natAdd_castLEEmb, this, Function.Embedding.trans_apply,
    addNatEmb_apply, coe_toEmbedding, finCongr_apply]
  refine eq_of_val_eq ?_
  split_ifs with ch
  · have : subNat i.1 (j.cast (by lia)) (by simp [hij]) = (j - i).castLT (sub_val_lt_sub hij) :=
      eq_of_val_eq (by simp [sub_val_of_le hij])
    simp [ch, cycleRange_of_eq this]; lia
  · have : subNat i.1 (k.cast (by lia)) (by simp [hik]) < (j - i).castLT (sub_val_lt_sub hij) := by
      simp [lt_def, sub_val_of_le hij]; lia
    rw [cycleRange_of_lt this, subNat]
    simp only [val_cast, add_def, val_one', Nat.add_mod_mod, addNat_mk, cast_mk]
    rw [Nat.mod_eq_of_lt (by lia), Nat.mod_eq_of_lt (by lia)]
    lia

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant8dd395d98c0a15a149e25a600117c086f30ae8cfa7cf30c008ad0d3453f23657.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant8dd395d98c0a15a149e25a600117c086f30ae8cfa7cf30c008ad0d3453f23657.lean#L390).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `377fb0e6477fa964b9ba897bf349d473e6f15ef8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
