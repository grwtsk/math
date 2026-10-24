# exists_sum_tmul_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e7d5dbfa-3525-a459-d1dd-689f6f50e45f",
  "kind": "lemma",
  "lexical_name": "exists_sum_tmul_eq",
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
  "slug": "exists-sum-tmul-eq--30e68336ad5d80e73f1739db",
  "source": {
    "blob": "d0ee288ab0f9b26f61f64e09ebbb2ce355ac604a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 190,
    "path": "GRWTSK/Algebra/LinearAlgebra/Finiteness/Variantf233b4cf39d1c224de5bac02282e0db3c0e6660939d53776f420c54cac97e2e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:30e68336ad5d80e73f1739dbe6abb0f707cc8701174c1e761851fa9a7c962692",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Finiteness/Variantf233b4cf39d1c224de5bac02282e0db3c0e6660939d53776f420c54cac97e2e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7d5dbfa-3525-a459-d1dd-689f6f50e45f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_sum_tmul_eq (x : M ⊗[R] N) :
    ∃ (k : ℕ) (m : Fin k → M) (n : Fin k → N), x = ∑ j, m j ⊗ₜ n j := by
  induction x with
  | tmul x y => exact ⟨1, fun _ ↦ x, fun _ ↦ y, by simp⟩
  | add x y hx hy =>
    obtain ⟨kx, mx, nx, rfl⟩ := hx
    obtain ⟨ky, my, ny, rfl⟩ := hy
    use kx + ky, Fin.addCases mx my, Fin.addCases nx ny
    simp [Fin.sum_univ_add]

end TensorProduct
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Finiteness/Variantf233b4cf39d1c224de5bac02282e0db3c0e6660939d53776f420c54cac97e2e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Finiteness/Variantf233b4cf39d1c224de5bac02282e0db3c0e6660939d53776f420c54cac97e2e3.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0ee288ab0f9b26f61f64e09ebbb2ce355ac604a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
