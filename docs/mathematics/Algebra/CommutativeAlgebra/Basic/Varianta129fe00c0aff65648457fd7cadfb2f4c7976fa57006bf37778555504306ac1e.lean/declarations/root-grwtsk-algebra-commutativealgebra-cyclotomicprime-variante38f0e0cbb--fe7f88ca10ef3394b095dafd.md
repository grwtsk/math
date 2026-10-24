# _root_.GRWTSK.Algebra.CommutativeAlgebra.CyclotomicPrime.Variante38f0e0cbb9f0c47fcd418c2a6e5ed49e1ebb6d6466d39ac243b6557cd09823f.IsPrimitiveRoot.pow_sub_pow_eq_prod_sub_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1841e3f0-5580-bbf9-f471-f963e82cf0b8",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.CommutativeAlgebra.CyclotomicPrime.Variante38f0e0cbb9f0c47fcd418c2a6e5ed49e1ebb6d6466d39ac243b6557cd09823f.IsPrimitiveRoot.pow_sub_pow_eq_prod_sub_mul",
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
  "slug": "root-grwtsk-algebra-commutativealgebra-cyclotomicprime-variante38f0e0cbb--fe7f88ca10ef3394b095dafd",
  "source": {
    "blob": "ed9ef4a7bff968610b03a1b277d439f21544f387",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 656,
    "line": 637,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Varianta129fe00c0aff65648457fd7cadfb2f4c7976fa57006bf37778555504306ac1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe7f88ca10ef3394b095dafd380ccfb3be1d3abf63f81abf3857162801b36a5f",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Varianta129fe00c0aff65648457fd7cadfb2f4c7976fa57006bf37778555504306ac1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1841e3f0-5580-bbf9-f471-f963e82cf0b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 637–656.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.CommutativeAlgebra.CyclotomicPrime.Variante38f0e0cbb9f0c47fcd418c2a6e5ed49e1ebb6d6466d39ac243b6557cd09823f.IsPrimitiveRoot.pow_sub_pow_eq_prod_sub_mul (hpos : 0 < n)
    (h : IsPrimitiveRoot ζ n) : x ^ n - y ^ n = ∏ ζ ∈ nthRootsFinset n (1 : R), (x - ζ * y) := by
  let K := FractionRing R
  apply FaithfulSMul.algebraMap_injective R K
  rw [map_sub, map_pow, map_pow, map_prod]
  simp_rw [map_sub, map_mul]
  have h' : IsPrimitiveRoot (algebraMap R K ζ) n :=
    h.map_of_injective <| FaithfulSMul.algebraMap_injective R K
  rw [h'.pow_sub_pow_eq_prod_sub_mul_field _ _ hpos]
  refine (prod_nbij (algebraMap R K) (fun a ha ↦ map_mem_nthRootsFinset_one ha _)
    (fun a _ b _ H ↦ FaithfulSMul.algebraMap_injective R K H) (fun a ha ↦ ?_) (fun _ _ ↦ rfl)).symm
  have := Set.surj_on_of_inj_on_of_ncard_le (s := nthRootsFinset n (1 : R))
    (t := nthRootsFinset n (1 : K)) _ (fun _ hr ↦ map_mem_nthRootsFinset_one hr _)
    (fun a _ b _ H ↦ FaithfulSMul.algebraMap_injective R K H)
    (by simp [h.card_nthRootsFinset, h'.card_nthRootsFinset])
  obtain ⟨x, hx, hx1⟩ := this _ ha
  exact ⟨x, hx, hx1.symm⟩

/-- If there is a primitive `n`th root of unity in `R` and `n` is odd, then
`X ^ n + Y ^ n = ∏ (X + μ Y)`, where `μ` varies over the `n`-th roots of unity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Varianta129fe00c0aff65648457fd7cadfb2f4c7976fa57006bf37778555504306ac1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Varianta129fe00c0aff65648457fd7cadfb2f4c7976fa57006bf37778555504306ac1e.lean#L637).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed9ef4a7bff968610b03a1b277d439f21544f387` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
