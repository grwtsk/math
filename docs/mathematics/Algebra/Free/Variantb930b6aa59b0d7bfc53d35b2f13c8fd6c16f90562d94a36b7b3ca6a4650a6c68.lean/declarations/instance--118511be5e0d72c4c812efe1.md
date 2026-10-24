# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b23512f523131c8ee1c11d509688ba44112e33c4a56861ae733183017217e816",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--118511be5e0d72c4c812efe1",
  "source": {
    "blob": "3a908e6107ad17d3c24a838bedff2196bdd8e1f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 680,
    "line": 661,
    "path": "GRWTSK/Algebra/Free/Variantb930b6aa59b0d7bfc53d35b2f13c8fd6c16f90562d94a36b7b3ca6a4650a6c68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:118511be5e0d72c4c812efe124676603fa7c1009be81f7d668c1f1749d44e642",
  "verification": {
    "reference": "docs/verification/Algebra/Free/Variantb930b6aa59b0d7bfc53d35b2f13c8fd6c16f90562d94a36b7b3ca6a4650a6c68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b23512f523131c8ee1c11d509688ba44112e33c4a56861ae733183017217e816`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 661–680.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : LawfulTraversable FreeSemigroup.{u} :=
  { instLawfulMonad with
    id_traverse := fun x ↦
      FreeSemigroup.recOnMul x (fun _ ↦ rfl) fun x y ih1 ih2 ↦ by
        rw [traverse_mul, ih1, ih2, seq_pure, map_pure, map_pure]
    comp_traverse := fun f g x ↦
      recOnPure x (fun x ↦ by simp only [traverse_pure, functor_norm, Function.comp_def])
        fun x y ih1 ih2 ↦ by
          rw [traverse_mul, ih1, ih2, traverse_mul, Functor.Comp.map_mk]
          simp only [Function.comp_def, functor_norm, traverse_mul]
    naturality := fun η α β f x ↦
      recOnPure x (fun x ↦ by simp only [traverse_pure, functor_norm, Function.comp])
          (fun x y ih1 ih2 ↦ by simp only [traverse_mul, functor_norm, ih1, ih2])
    traverse_eq_map_id := fun f x ↦
      FreeSemigroup.recOnMul x (fun _ ↦ rfl) fun x y ih1 ih2 ↦ by
        rw [traverse_mul, ih1, ih2, map_mul', map_pure, seq_pure, map_pure] }

end Category

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Free/Variantb930b6aa59b0d7bfc53d35b2f13c8fd6c16f90562d94a36b7b3ca6a4650a6c68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Free/Variantb930b6aa59b0d7bfc53d35b2f13c8fd6c16f90562d94a36b7b3ca6a4650a6c68.lean#L661).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a908e6107ad17d3c24a838bedff2196bdd8e1f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
