# cycleRange_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a0761b54-0199-9edb-692d-b8660e297b0a",
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
  "slug": "cyclerange-of-le--d2f793926806a4aa1938d1d7",
  "source": {
    "blob": "cd5ef9c23015fad6c56281100d374fb674bdef3f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 162,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant1157cbe2f52015d34fada9b0e45a0a88af4f990237bbb12c76aa57fdd711dc53.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2f793926806a4aa1938d1d771825fcf6d1a56827f999dec29ee3c95e63d1e3a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant1157cbe2f52015d34fada9b0e45a0a88af4f990237bbb12c76aa57fdd711dc53.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a0761b54-0199-9edb-692d-b8660e297b0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–180.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant1157cbe2f52015d34fada9b0e45a0a88af4f990237bbb12c76aa57fdd711dc53.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Fin/Variant1157cbe2f52015d34fada9b0e45a0a88af4f990237bbb12c76aa57fdd711dc53.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd5ef9c23015fad6c56281100d374fb674bdef3f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
