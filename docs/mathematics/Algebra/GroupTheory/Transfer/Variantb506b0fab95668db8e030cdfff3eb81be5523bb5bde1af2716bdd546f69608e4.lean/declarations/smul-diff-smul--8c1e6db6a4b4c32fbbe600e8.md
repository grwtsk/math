# smul_diff_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "376081fd0cc9b731857052a8de498c3a46141bbf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 80,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b5/b506b0fab95668db8e030cdfff3eb81be5523bb5bde1af2716bdd546f69608e4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e12bb795-d956-6189-5222-bdb63a5acf88",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:51a8125a-c109-6342-6391-f101d11841d5",
  "kind": "theorem",
  "lexical_name": "smul_diff_smul",
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
  "slug": "smul-diff-smul--8c1e6db6a4b4c32fbbe600e8",
  "source": {
    "blob": "376081fd0cc9b731857052a8de498c3a46141bbf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 80,
    "path": "GRWTSK/Algebra/GroupTheory/Transfer/Variantb506b0fab95668db8e030cdfff3eb81be5523bb5bde1af2716bdd546f69608e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c1e6db6a4b4c32fbbe600e8753afaefc70117abe7bb86b44337d2f356790ac3",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Transfer/Variantb506b0fab95668db8e030cdfff3eb81be5523bb5bde1af2716bdd546f69608e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:51a8125a-c109-6342-6391-f101d11841d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smul_diff_smul (g : G) : diff ϕ (g • S) (g • T) = diff ϕ S T :=
  let _ := H.fintypeQuotientOfFiniteIndex
  prod_bij' (fun q _ => g⁻¹ • q) (fun _ _ => mem_univ _)
    (fun _ _ =>
      congr_arg ϕ
        (by
          simp_rw [smul_apply_eq_smul_apply_inv_smul, smul_eq_mul, mul_inv_rev, mul_assoc,
            inv_mul_cancel_left]))
    (fun q _ => g • q) (fun _ _ => mem_univ _) (fun q _ => smul_inv_smul g q) fun q _ =>
    inv_smul_smul g q
#align subgroup.left_transversals.smul_diff_smul Subgroup.leftTransversals.smul_diff_smul
#align add_subgroup.left_transversals.vadd_diff_vadd AddSubgroup.leftTransversals.vadd_diff_vadd

end leftTransversals

end Subgroup

namespace MonoidHom

open MulAction Subgroup Subgroup.leftTransversals

/-- Given `ϕ : H →* A` from `H : Subgroup G` to a commutative group `A`,
the transfer homomorphism is `transfer ϕ : G →* A`. -/
@[to_additive "Given `ϕ : H →+ A` from `H : AddSubgroup G` to an additive commutative group `A`,
the transfer homomorphism is `transfer ϕ : G →+ A`."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Transfer/Variantb506b0fab95668db8e030cdfff3eb81be5523bb5bde1af2716bdd546f69608e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Transfer/Variantb506b0fab95668db8e030cdfff3eb81be5523bb5bde1af2716bdd546f69608e4.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `376081fd0cc9b731857052a8de498c3a46141bbf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
