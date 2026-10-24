# top_le_span_range_lapMatrix_ker_basis_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9dcf3017-219e-0a34-639b-fc557a4de21b",
  "kind": "lemma",
  "lexical_name": "top_le_span_range_lapMatrix_ker_basis_aux",
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
  "slug": "top-le-span-range-lapmatrix-ker-basis-aux--5bbf95d12a8a9e1da63eb422",
  "source": {
    "blob": "f211046e228ee9f5ae10ef17a259a3df5c378792",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 284,
    "line": 269,
    "path": "GRWTSK/Algebra/LinearAlgebra/LapMatrix/Variantb7e3f22cf48d67ad3e1c7a6887162d25600f63607a73beeaa478a313ceca5f7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5bbf95d12a8a9e1da63eb42283f785c6b9980293ae4f5e5c9fee15f47299aa20",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LapMatrix/Variantb7e3f22cf48d67ad3e1c7a6887162d25600f63607a73beeaa478a313ceca5f7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9dcf3017-219e-0a34-639b-fc557a4de21b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 269–284.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma top_le_span_range_lapMatrix_ker_basis_aux :
    ⊤ ≤ Submodule.span ℝ (Set.range (lapMatrix_ker_basis_aux G)) := by
  intro x _
  rw [Submodule.mem_span_range_iff_exists_fun]
  use Quot.lift x.val (by rw [← lapMatrix_mulVec_eq_zero_iff_forall_reachable,
    ← toLin'_apply, LinearMap.map_coe_ker])
  ext j
  simp only [lapMatrix_ker_basis_aux]
  rw [AddSubmonoid.coe_finsetSum]
  simp only [SetLike.mk_smul_mk, Finset.sum_apply, Pi.smul_apply, smul_eq_mul, mul_ite, mul_one,
    mul_zero, sum_ite_eq, mem_univ, ↓reduceIte]
  rfl

/-- `lapMatrix_ker_basis G` is a basis of the nullspace indexed by its connected components,
the basis is made up of the functions `V → ℝ` which are `1` on the vertices of the given
connected component and `0` elsewhere. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LapMatrix/Variantb7e3f22cf48d67ad3e1c7a6887162d25600f63607a73beeaa478a313ceca5f7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LapMatrix/Variantb7e3f22cf48d67ad3e1c7a6887162d25600f63607a73beeaa478a313ceca5f7a.lean#L269).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f211046e228ee9f5ae10ef17a259a3df5c378792` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
