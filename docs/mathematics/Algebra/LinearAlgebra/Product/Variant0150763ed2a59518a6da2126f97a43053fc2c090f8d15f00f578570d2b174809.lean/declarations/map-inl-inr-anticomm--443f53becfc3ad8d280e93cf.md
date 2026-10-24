# map_inl_inr_anticomm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2560bebd-e838-a492-d276-f9be0010d1b3",
  "kind": "lemma",
  "lexical_name": "map_inl_inr_anticomm",
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
  "slug": "map-inl-inr-anticomm--443f53becfc3ad8d280e93cf",
  "source": {
    "blob": "38edf6dbcb4e8714d99af70842ec998da8e0c623",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 70,
    "path": "GRWTSK/Algebra/LinearAlgebra/Product/Variant0150763ed2a59518a6da2126f97a43053fc2c090f8d15f00f578570d2b174809.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:443f53becfc3ad8d280e93cf504fb7fc369bba9dc54292c7cc6b0ee5663e0cee",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Product/Variant0150763ed2a59518a6da2126f97a43053fc2c090f8d15f00f578570d2b174809.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2560bebd-e838-a492-d276-f9be0010d1b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma map_inl_inr_anticomm (i j : ℕ) (a : ⋀[R]^i M) (b : ⋀[R]^j N) :
    (map (LinearMap.inl R M N)) a * (map (LinearMap.inr R M N)) b =
      (-1) ^ (j * i) • ((map (LinearMap.inr R M N)) b * (map (LinearMap.inl R M N)) a) := by
  have amem : a.1 ∈ ⋀[R]^i M := a.2
  have bmem : b.1 ∈ ⋀[R]^j N := b.2
  rw [← (Submodule.ext_iff.mp (ιMulti_span_fixedDegree R _))] at amem bmem
  refine Submodule.span_induction₂ (p := fun x y hx hy ↦
    (map (LinearMap.inl R M N)) x * (map (LinearMap.inr R M N)) y =
      (-1) ^ (j * i) • ((map (LinearMap.inr R M N)) y * (map (LinearMap.inl R M N)) x))
        ?_ ?_ ?_ ?_ ?_ ?_ ?_ amem bmem
  · rintro x y ⟨mx, rfl⟩ ⟨my, rfl⟩
    rw [map_apply_ιMulti, map_apply_ιMulti]
    exact ιMulti_mul_ιMulti_anticomm R _ _
  all_goals simp +contextual [add_mul, mul_add]

/-- The inverse function for the equivalence between `ExteriorAlgebra R (M × N)` and
graded tensor product of the two exterior algebras, lift form universal property. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Product/Variant0150763ed2a59518a6da2126f97a43053fc2c090f8d15f00f578570d2b174809.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Product/Variant0150763ed2a59518a6da2126f97a43053fc2c090f8d15f00f578570d2b174809.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38edf6dbcb4e8714d99af70842ec998da8e0c623` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
