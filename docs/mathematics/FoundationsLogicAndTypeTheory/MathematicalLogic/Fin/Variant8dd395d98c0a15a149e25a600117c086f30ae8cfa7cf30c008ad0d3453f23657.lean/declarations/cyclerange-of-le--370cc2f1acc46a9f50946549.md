# cycleRange_of_le

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
      "line": 154,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8d/8dd395d98c0a15a149e25a600117c086f30ae8cfa7cf30c008ad0d3453f23657.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:777e8640-7df3-1fe5-f6ff-43763c939c5a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:201dce70-bd41-6149-c719-1d368fd83ff1",
  "kind": "theorem",
  "lexical_name": "cycleRange_of_le",
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
  "slug": "cyclerange-of-le--370cc2f1acc46a9f50946549",
  "source": {
    "blob": "377fb0e6477fa964b9ba897bf349d473e6f15ef8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 154,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant8dd395d98c0a15a149e25a600117c086f30ae8cfa7cf30c008ad0d3453f23657.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:370cc2f1acc46a9f509465492679ded5ab1990222ba40e7f24045abd6f6f3329",
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

Occurrence: `result:201dce70-bd41-6149-c719-1d368fd83ff1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cycleRange_of_le [NeZero n] (h : i ≤ j) :
    cycleRange j i = if i = j then 0 else i + 1 := by
  have iin : i ∈ Set.range (castLEEmb (n := j + 1) (by lia)) := by
    simp; lia
  have : (castLEEmb (by lia)).toEquivRange (castLT i (by lia)) = ⟨i, iin⟩ := by
    simp [coe_castLEEmb]; rfl
  rw [cycleRange,
    (finRotate (j + 1)).extendDomain_apply_subtype (castLEEmb (by lia)).toEquivRange iin,
    Function.Embedding.toEquivRange_apply]
  split_ifs with ch
  · have : ((castLEEmb (by lia)).toEquivRange.symm ⟨i, iin⟩) = last j := by
      simpa only [coe_castLEEmb, ← this, symm_apply_apply] using eq_of_val_eq (by simp [ch])
    rw [this, finRotate_last]
    rfl
  · have hj1 : (i + 1).1 = i.1 + 1 := val_add_one_of_lt' (by lia)
    have hj2 : (i.castLT (by lia) + 1 : Fin (j + 1)).1 =
      (i.castLT (by lia) : Fin (j + 1)) + 1 := val_add_one_of_lt' (by simp; lia)
    exact eq_of_val_eq (by simp [← this, hj1, hj2])

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant8dd395d98c0a15a149e25a600117c086f30ae8cfa7cf30c008ad0d3453f23657.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant8dd395d98c0a15a149e25a600117c086f30ae8cfa7cf30c008ad0d3453f23657.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `377fb0e6477fa964b9ba897bf349d473e6f15ef8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
