# directSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:25d112209a344fed71177c0efac9bbea372c5fea1989ed623a55c06de946bc96",
  "kind": "instance",
  "lexical_name": "directSum",
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
  "slug": "directsum--c4984382f85a208c8cfaba4c",
  "source": {
    "blob": "4f49616cb348e9d111ff6d5c3856eb2f26fbd99e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 192,
    "path": "GRWTSK/Algebra/Basic/Variantb9fceb6bdb3e7fcb76cb8cc8a07ac039f0ddd613c33536813deb4bfaa7f60a63.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c4984382f85a208c8cfaba4c97801f0fd3a4106c17dc6b7e09480cc149c1051d",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantb9fceb6bdb3e7fcb76cb8cc8a07ac039f0ddd613c33536813deb4bfaa7f60a63.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:25d112209a344fed71177c0efac9bbea372c5fea1989ed623a55c06de946bc96`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance directSum {ι : Type*} [Nonempty ι] (M : ι → Type*) [∀ i, AddCommGroup (M i)]
    [∀ i, Module R (M i)] [∀ i, FaithfullyFlat R (M i)] : FaithfullyFlat R (⨁ i, M i) := by
  classical
  rw [iff_flat_and_lTensor_faithful]
  refine ⟨inferInstance, fun N _ _ hN ↦ ?_⟩
  obtain ⟨i⟩ := ‹Nonempty ι›
  obtain ⟨x, y, hxy⟩ := Nontrivial.exists_pair_ne (α := M i ⊗[R] N)
  haveI : Nontrivial (⨁ (i : ι), M i ⊗[R] N) :=
    ⟨DirectSum.of _ i x, DirectSum.of _ i y, fun h ↦ hxy (DirectSum.of_injective i h)⟩
  apply (TensorProduct.directSumLeft R M N).toEquiv.nontrivial

/-- Free `R`-modules over discrete types are flat. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantb9fceb6bdb3e7fcb76cb8cc8a07ac039f0ddd613c33536813deb4bfaa7f60a63.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantb9fceb6bdb3e7fcb76cb8cc8a07ac039f0ddd613c33536813deb4bfaa7f60a63.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4f49616cb348e9d111ff6d5c3856eb2f26fbd99e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
