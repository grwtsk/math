# transferTransversal_apply''

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0d7a32e035651bcca42599d7e60c087ebbf5329a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 125,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/86/8656e05566ec2522c791280bc92cc1205256298a6a20378375511e0338323876.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ee2e80db-ea15-9cfc-a2be-215045c887ac",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c199aac5-6905-7662-caab-0f170aa5e060",
  "kind": "lemma",
  "lexical_name": "transferTransversal_apply''",
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
  "slug": "transfertransversal-apply--0eb443ee2c6767fc0b63ccd5",
  "source": {
    "blob": "0d7a32e035651bcca42599d7e60c087ebbf5329a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 125,
    "path": "GRWTSK/Algebra/GroupTheory/Transfer/Variant8656e05566ec2522c791280bc92cc1205256298a6a20378375511e0338323876.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0eb443ee2c6767fc0b63ccd54a6f59d86ca766b79a41a766ded59e04776717e1",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Transfer/Variant8656e05566ec2522c791280bc92cc1205256298a6a20378375511e0338323876.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c199aac5-6905-7662-caab-0f170aa5e060`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma transferTransversal_apply'' (q : orbitRel.Quotient (zpowers g) (G ⧸ H))
    (k : ZMod (minimalPeriod (g • ·) q.out)) :
    ↑((g • transferTransversal H g).2.leftQuotientEquiv (g ^ (cast k : ℤ) • q.out)) =
      if k = 0 then g ^ minimalPeriod (g • ·) q.out * q.out.out
      else g ^ (cast k : ℤ) * q.out.out := by
  rw [smul_apply_eq_smul_apply_inv_smul, transferTransversal_apply, transferFunction_apply, ←
    mul_smul, ← zpow_neg_one, ← zpow_add, quotientEquivSigmaZMod_apply, smul_eq_mul, ← mul_assoc,
    ← zpow_one_add, Int.cast_add, Int.cast_neg, Int.cast_one, intCast_cast, cast_id', id, ←
    sub_eq_neg_add, cast_sub_one, add_sub_cancel]
  by_cases hk : k = 0
  · rw [ite_eq_left hk, ite_eq_left hk, zpow_natCast]
  · rw [ite_eq_right hk, ite_eq_right hk]

end Subgroup

namespace MonoidHom

open MulAction Subgroup Subgroup.leftTransversals

/-- Given `ϕ : H →* A` from `H : Subgroup G` to a commutative group `A`,
the transfer homomorphism is `transfer ϕ : G →* A`. -/
@[to_additive /-- Given `ϕ : H →+ A` from `H : AddSubgroup G` to an additive commutative group `A`,
the transfer homomorphism is `transfer ϕ : G →+ A`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Transfer/Variant8656e05566ec2522c791280bc92cc1205256298a6a20378375511e0338323876.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Transfer/Variant8656e05566ec2522c791280bc92cc1205256298a6a20378375511e0338323876.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d7a32e035651bcca42599d7e60c087ebbf5329a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
