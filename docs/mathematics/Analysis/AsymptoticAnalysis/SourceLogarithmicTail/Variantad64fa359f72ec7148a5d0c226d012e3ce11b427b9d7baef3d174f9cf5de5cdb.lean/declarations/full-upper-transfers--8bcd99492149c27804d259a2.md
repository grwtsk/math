# full_upper_transfers

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6dfb3f75-c9ce-917e-2f1b-cef398a6e54d",
  "kind": "theorem",
  "lexical_name": "full_upper_transfers",
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
  "slug": "full-upper-transfers--8bcd99492149c27804d259a2",
  "source": {
    "blob": "218963ad0fdfaf0823a59f10a68bbb7525d91a02",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 293,
    "line": 255,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variantad64fa359f72ec7148a5d0c226d012e3ce11b427b9d7baef3d174f9cf5de5cdb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8bcd99492149c27804d259a2ca78e0a0e673263bc4183b884790f89cb1a97140",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variantad64fa359f72ec7148a5d0c226d012e3ce11b427b9d7baef3d174f9cf5de5cdb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6dfb3f75-c9ce-917e-2f1b-cef398a6e54d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 255–293.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem full_upper_transfers {C R D : ℝ} (hc : PositiveCountBound C)
    (hR : baseRadius≤R)
    (hfull : ∀ A : ℝ, R≤A → signedFull A≤D) :
    ∀ A : ℝ, R≤A → signedHead A (fifthHeight A)≤D+(logarithmicConstant C/5)*R^(-8:ℝ) := by
  intro A hRA
  have he := (signed_truncation_error (fifthHeight_admissible (hR.trans hRA)).1).trans
    (fifthHeight_uniform hc hR hRA)
  have h := hfull A hRA
  linarith [neg_le_abs (signedFull A-signedHead A (fifthHeight A))]

#print axioms realSquareMass
#print axioms imaginarySquareMass
#print axioms signedFull
#print axioms signedHead
#print axioms coordinate_masses_summable
#print axioms signedFull_eq_negative_re
#print axioms signedHead_eq_negative_re
#print axioms signed_partition
#print axioms signed_truncation_error
#print axioms fifthHeight_signed_error
#print axioms head_upper_transfers
#print axioms full_upper_transfers
#print axioms fifthHeight
#print axioms baseRadius
#print axioms fifthHeight_admissible
#print axioms fifthHeight_budget
#print axioms fifthHeight_error_bound
#print axioms fifthHeight_uniform
#print axioms fifthHeight_tendsto_zero
#print axioms fifthHeight_sup_bound
#print axioms logarithmicConstant
#print axioms logarithmicConstant_pos
#print axioms normalized_sixth_majorant
#print axioms actual_norm_square_tail_bound
#print axioms actual_tail_error_bound
#print axioms actual_im_square_tail_bound

end
end ContinuousResearch.SourceLogarithmicTail
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variantad64fa359f72ec7148a5d0c226d012e3ce11b427b9d7baef3d174f9cf5de5cdb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/SourceLogarithmicTail/Variantad64fa359f72ec7148a5d0c226d012e3ce11b427b9d7baef3d174f9cf5de5cdb.lean#L255).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `218963ad0fdfaf0823a59f10a68bbb7525d91a02` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
