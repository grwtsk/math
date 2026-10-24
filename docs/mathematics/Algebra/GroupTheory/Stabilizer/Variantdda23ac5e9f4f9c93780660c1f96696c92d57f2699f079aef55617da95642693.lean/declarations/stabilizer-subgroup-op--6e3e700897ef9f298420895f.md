# stabilizer_subgroup_op

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2a4c05b4-b037-405d-3762-3dcae0b95f24",
  "kind": "lemma",
  "lexical_name": "stabilizer_subgroup_op",
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
  "slug": "stabilizer-subgroup-op--6e3e700897ef9f298420895f",
  "source": {
    "blob": "2e5ac8eb93939567268dfa4f0370b1aac985138a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 166,
    "path": "GRWTSK/Algebra/GroupTheory/Stabilizer/Variantdda23ac5e9f4f9c93780660c1f96696c92d57f2699f079aef55617da95642693.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e3e700897ef9f298420895fffcd3855b3b06d2c78d53903f5b5af7722a85b7c",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Stabilizer/Variantdda23ac5e9f4f9c93780660c1f96696c92d57f2699f079aef55617da95642693.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2a4c05b4-b037-405d-3762-3dcae0b95f24`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma stabilizer_subgroup_op (s : Subgroup Gᵐᵒᵖ) : stabilizer G (s : Set Gᵐᵒᵖ) = s.unop := by
  simp_rw [SetLike.ext_iff, mem_stabilizer_set]
  refine fun a ↦ ⟨fun h ↦ ?_, fun ha b ↦ s.mul_mem_cancel_right ha⟩
  have : 1 * MulOpposite.op a ∈ s := (h 1).2 s.one_mem
  simpa only [op_smul_eq_mul, SetLike.mem_coe, one_mul] using! this

end Subgroup

/-! ### Stabilizer of a finset -/

section Finset
variable [DecidableEq α]

@[to_additive (attr := simp, norm_cast)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Stabilizer/Variantdda23ac5e9f4f9c93780660c1f96696c92d57f2699f079aef55617da95642693.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Stabilizer/Variantdda23ac5e9f4f9c93780660c1f96696c92d57f2699f079aef55617da95642693.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2e5ac8eb93939567268dfa4f0370b1aac985138a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
