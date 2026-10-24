# bUnion_roots_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fc85a83f-666a-a1ac-4727-d39041794cc5",
  "kind": "theorem",
  "lexical_name": "bUnion_roots_finite",
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
  "slug": "bunion-roots-finite--9d3f20fac1f4fb07a79e356b",
  "source": {
    "blob": "f534f4a927f56b2f65c55fd8106783c88a044c03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 646,
    "line": 630,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Roots/Variant03d84be8d70f03416e0df2b2107214f8c2325ed4ee7dd683ca417573c9ae6b38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9d3f20fac1f4fb07a79e356b61a35625153370878065daeced5214d905c34f00",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Roots/Variant03d84be8d70f03416e0df2b2107214f8c2325ed4ee7dd683ca417573c9ae6b38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc85a83f-666a-a1ac-4727-d39041794cc5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 630–646.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bUnion_roots_finite {R S : Type*} [Semiring R] [CommRing S] [IsDomain S] [DecidableEq S]
    (m : R →+* S) (d : ℕ) {U : Set R} (h : U.Finite) :
    (⋃ (f : R[X]) (_ : f.natDegree ≤ d ∧ ∀ i, f.coeff i ∈ U),
        ((f.map m).roots.toFinset : Set S)).Finite :=
  Set.Finite.biUnion
    (by
      -- We prove that the set of polynomials under consideration is finite because its
      -- image by the injective map `π` is finite
      let π : R[X] → Fin (d + 1) → R := fun f i => f.coeff i
      refine ((Set.Finite.pi fun _ => h).subset <| ?_).of_finite_image (?_ : Set.InjOn π _)
      · exact Set.image_subset_iff.2 fun f hf i _ => hf.2 i
      · refine fun x hx y hy hxy => (ext_iff_natDegree_le hx.1 hy.1).2 fun i hi => ?_
        exact id congr_fun hxy ⟨i, Nat.lt_succ_of_le hi⟩)
    fun _ _ => Finset.finite_toSet _

/-- A version of `mem_rootSet` that requires the polynomial to be non-zero after mapping
instead of requiring it to be non-zero and `Module.IsTorsionFree`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Roots/Variant03d84be8d70f03416e0df2b2107214f8c2325ed4ee7dd683ca417573c9ae6b38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Roots/Variant03d84be8d70f03416e0df2b2107214f8c2325ed4ee7dd683ca417573c9ae6b38.lean#L630).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f534f4a927f56b2f65c55fd8106783c88a044c03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
