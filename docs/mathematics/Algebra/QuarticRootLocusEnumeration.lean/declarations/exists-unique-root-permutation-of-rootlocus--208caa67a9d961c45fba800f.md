# exists_unique_root_permutation_of_rootLocus

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bc3c7175cb6d8f9fd6e423efac7a350cd0a4fcac",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 48,
      "path": "GRWTSK/Algebra/QuarticRootLocusEnumeration.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:29464ec7-efd5-2e1f-8d8d-42085e751edf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:df1e3fa0-38f9-6025-2251-e8edba5a073d",
  "kind": "theorem",
  "lexical_name": "exists_unique_root_permutation_of_rootLocus",
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
  "slug": "exists-unique-root-permutation-of-rootlocus--208caa67a9d961c45fba800f",
  "source": {
    "blob": "bc3c7175cb6d8f9fd6e423efac7a350cd0a4fcac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 48,
    "path": "GRWTSK/Algebra/QuarticRootLocusEnumeration.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:208caa67a9d961c45fba800fc7ae5d87dd5a22bb581330281a74846f1aad2f3e",
  "verification": {
    "reference": "docs/verification/Algebra/QuarticRootLocusEnumeration.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df1e3fa0-38f9-6025-2251-e8edba5a073d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_unique_root_permutation_of_rootLocus
    (p : K[X]) (e : QuarticRootEnumeration (L := L) p)
    (hne : p ≠ 0) (he : Function.Injective e.r)
    (φ : L ≃ₐ[K] L) :
    ∃! σ : Equiv.Perm (Fin 4),
      ∀ i, e.r (σ i) = φ (e.r i) := by
  have hrange := rootLocus_eq_range_of_enumeration p e hne
  have hmem (i : Fin 4) : φ (e.r i) ∈ Set.range e.r := by
    rw [← hrange]
    apply (rootLocus_iff p φ (e.r i)).2
    rw [hrange]
    exact ⟨i, rfl⟩
  let f : Fin 4 → Fin 4 := fun i => Classical.choose (hmem i)
  have hf (i : Fin 4) : e.r (f i) = φ (e.r i) :=
    Classical.choose_spec (hmem i)
  have hinj : Function.Injective f := by
    intro i j hij
    apply he
    apply φ.injective
    calc
      φ (e.r i) = e.r (f i) := (hf i).symm
      _ = e.r (f j) := congrArg e.r hij
      _ = φ (e.r j) := hf j
  let σ : Equiv.Perm (Fin 4) := Equiv.ofBijective f
    ⟨hinj, Finite.surjective_of_injective hinj⟩
  refine ⟨σ, hf, ?_⟩
  intro τ hτ
  ext i
  apply he
  exact (hf i).trans (hτ i).symm

end
end GRWTSK.Algebra.QuarticRootLocusEnumeration
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/Algebra/QuarticRootLocusEnumeration.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/QuarticRootLocusEnumeration.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc3c7175cb6d8f9fd6e423efac7a350cd0a4fcac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
