# sub_one_div_inv_le_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4e6f01472b8aa52689eb5a535d58f8497b030df8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 921,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ae/ae1024dabe96062c5534b43ef4715ca461f261a1407ef1b5e3b6cbaff7d4a900.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a9540beb-58b7-459b-f7b1-91cf8bd931de",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:60a244a4-cfe0-7aa0-68b5-a79f23e455b8",
  "kind": "theorem",
  "lexical_name": "sub_one_div_inv_le_two",
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
  "slug": "sub-one-div-inv-le-two--b445962b280f439901785be5",
  "source": {
    "blob": "4e6f01472b8aa52689eb5a535d58f8497b030df8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 935,
    "line": 921,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantae1024dabe96062c5534b43ef4715ca461f261a1407ef1b5e3b6cbaff7d4a900.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b445962b280f439901785be51c01b421332e8a49f9859c7144f6b353c1f4b33a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantae1024dabe96062c5534b43ef4715ca461f261a1407ef1b5e3b6cbaff7d4a900.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:60a244a4-cfe0-7aa0-68b5-a79f23e455b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 921–935.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sub_one_div_inv_le_two (a2 : 2 ≤ a) : (1 - 1 / a)⁻¹ ≤ 2 := by
  -- Take inverses on both sides to obtain `2⁻¹ ≤ 1 - 1 / a`
  refine' (inv_le_inv_of_le (inv_pos.2 <| zero_lt_two' α) _).trans_eq (inv_inv (2 : α))
  -- move `1 / a` to the left and `2⁻¹` to the right.
  rw [le_sub_iff_add_le, add_comm, ←le_sub_iff_add_le]
  -- take inverses on both sides and use the assumption `2 ≤ a`.
  convert (one_div a).le.trans (inv_le_inv_of_le zero_lt_two a2) using 1
  -- show `1 - 1 / 2 = 1 / 2`.
  rw [sub_eq_iff_eq_add, ←two_mul, mul_inv_cancel two_ne_zero]
#align sub_one_div_inv_le_two sub_one_div_inv_le_two

/-! ### Results about `IsLUB` -/


-- TODO: Generalize to `LinearOrderedSemifield`
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantae1024dabe96062c5534b43ef4715ca461f261a1407ef1b5e3b6cbaff7d4a900.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variantae1024dabe96062c5534b43ef4715ca461f261a1407ef1b5e3b6cbaff7d4a900.lean#L921).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e6f01472b8aa52689eb5a535d58f8497b030df8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
