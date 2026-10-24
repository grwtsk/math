# pi_apply_eq_sum_univ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bb28df575bc416f6a7820f54d0bab7e056f2dba1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 359,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/72/7216df49a09c85120c95db570a663a572320c92ceda0c04e0af706539b37d0c1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:da1ba34e-6ceb-e521-b0a0-1d8693e39a8d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:301507d9-d98b-739d-482e-c6f4a1b14d52",
  "kind": "theorem",
  "lexical_name": "pi_apply_eq_sum_univ",
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
  "slug": "pi-apply-eq-sum-univ--f5181cd614751229733cc1fd",
  "source": {
    "blob": "bb28df575bc416f6a7820f54d0bab7e056f2dba1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 376,
    "line": 359,
    "path": "GRWTSK/Algebra/LinearAlgebra/Pi/Variant7216df49a09c85120c95db570a663a572320c92ceda0c04e0af706539b37d0c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f5181cd614751229733cc1fd4b08efe4aebeadacc165b4118e0419b8e5a1e8ac",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Pi/Variant7216df49a09c85120c95db570a663a572320c92ceda0c04e0af706539b37d0c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:301507d9-d98b-739d-482e-c6f4a1b14d52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 359–376.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pi_apply_eq_sum_univ [Fintype ι] (f : (ι → R) →ₗ[R] M₂) (x : ι → R) :
    f x = ∑ i, x i • f fun j => if i = j then 1 else 0 := by
  conv_lhs => rw [pi_eq_sum_univ x, map_sum]
  refine Finset.sum_congr rfl (fun _ _ => ?_)
  rw [map_smul]

end LinearMap

namespace Submodule

variable [Semiring R] {φ : ι → Type*} [(i : ι) → AddCommMonoid (φ i)] [(i : ι) → Module R (φ i)]

open LinearMap

/-- A version of `Set.pi` for submodules. Given an index set `I` and a family of submodules
`p : (i : ι) → Submodule R (φ i)`, `pi I p` is the submodule of dependent functions
`f : (i : ι) → φ i` such that `f i` belongs to `p i` whenever `i ∈ I`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Pi/Variant7216df49a09c85120c95db570a663a572320c92ceda0c04e0af706539b37d0c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Pi/Variant7216df49a09c85120c95db570a663a572320c92ceda0c04e0af706539b37d0c1.lean#L359).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb28df575bc416f6a7820f54d0bab7e056f2dba1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
