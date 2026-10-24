# polynomialFunctions_closure_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "14b5a528741abcaf924242b002ecf70cef82fb10",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 49,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3d/3dc4fb93faf434d1e038b652cfb08bc3d3df96d84463a9ea1fc8c9196b733912.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:aa331115-dfcc-1cdf-ba2f-2985a195acbb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9d6791b6-5dc3-47f0-3222-3e1edbd0eb76",
  "kind": "theorem",
  "lexical_name": "polynomialFunctions_closure_eq_top",
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
  "slug": "polynomialfunctions-closure-eq-top--588ae91a2ff76c47c93b340c",
  "source": {
    "blob": "14b5a528741abcaf924242b002ecf70cef82fb10",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 49,
    "path": "GRWTSK/Topology/GeneralTopology/Weierstrass/Variant3dc4fb93faf434d1e038b652cfb08bc3d3df96d84463a9ea1fc8c9196b733912.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:588ae91a2ff76c47c93b340cf6315a30c2155b1e7d0ea6780ec5512fb1ba5363",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Weierstrass/Variant3dc4fb93faf434d1e038b652cfb08bc3d3df96d84463a9ea1fc8c9196b733912.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d6791b6-5dc3-47f0-3222-3e1edbd0eb76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem polynomialFunctions_closure_eq_top (a b : ℝ) :
    (polynomialFunctions (Set.Icc a b)).topologicalClosure = ⊤ := by
  rcases lt_or_le a b with h | h
  -- (Otherwise it's easy; we'll deal with that later.)
  · -- We can pullback continuous functions on `[a,b]` to continuous functions on `[0,1]`,
    -- by precomposing with an affine map.
    let W : C(Set.Icc a b, ℝ) →ₐ[ℝ] C(I, ℝ) :=
      compRightAlgHom ℝ ℝ (iccHomeoI a b h).symm
    -- This operation is itself a homeomorphism
    -- (with respect to the norm topologies on continuous functions).
    let W' : C(Set.Icc a b, ℝ) ≃ₜ C(I, ℝ) := (iccHomeoI a b h).arrowCongr (.refl _)
    have w : (W : C(Set.Icc a b, ℝ) → C(I, ℝ)) = W' := rfl
    -- Thus we take the statement of the Weierstrass approximation theorem for `[0,1]`,
    have p := polynomialFunctions_closure_eq_top'
    -- and pullback both sides, obtaining an equation between subalgebras of `C([a,b], ℝ)`.
    apply_fun fun s => s.comap W at p
    simp only [Algebra.comap_top] at p
    -- Since the pullback operation is continuous, it commutes with taking `topologicalClosure`,
    rw [Subalgebra.topologicalClosure_comap_homeomorph _ W W' w] at p
    -- and precomposing with an affine map takes polynomial functions to polynomial functions.
    rw [polynomialFunctions.comap_compRightAlgHom_iccHomeoI] at p
    -- 🎉
    exact p
  · -- Otherwise, `b ≤ a`, and the interval is a subsingleton,
    subsingleton [(Set.subsingleton_Icc_of_ge h).coe_sort]

/-- An alternative statement of Weierstrass' theorem.

Every real-valued continuous function on `[a,b]` is a uniform limit of polynomials.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Weierstrass/Variant3dc4fb93faf434d1e038b652cfb08bc3d3df96d84463a9ea1fc8c9196b733912.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Weierstrass/Variant3dc4fb93faf434d1e038b652cfb08bc3d3df96d84463a9ea1fc8c9196b733912.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14b5a528741abcaf924242b002ecf70cef82fb10` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
