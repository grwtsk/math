# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b32a9c92776c238debc78b500ad43866ca8c1f05bbad9a2fc26746076386656e",
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
  "slug": "instance--ae6b3a0e05514aaaffee689b",
  "source": {
    "blob": "29ad2b03899617812d30bfcbcc9f2eb83524d85c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 281,
    "line": 257,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Free/Variantcc5f6f500bed193ed4f32b3bd2b05563a56b70c25c4f75c639a68e4ee307807d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ae6b3a0e05514aaaffee689b898dbaa34f68f5c58c81436420df11a7a3026b27",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Free/Variantcc5f6f500bed193ed4f32b3bd2b05563a56b70c25c4f75c639a68e4ee307807d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b32a9c92776c238debc78b500ad43866ca8c1f05bbad9a2fc26746076386656e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–281.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : LawfulTraversable FreeMagma.{u} :=
  { instLawfulMonad with
    id_traverse := fun x ↦
      FreeMagma.recOnPure x (fun _ ↦ rfl) fun x y ih1 ih2 ↦ by
        rw [traverse_mul, ih1, ih2, seq_pure, map_pure, map_pure]
    comp_traverse := fun f g x ↦
      FreeMagma.recOnPure x
        (fun x ↦ by simp only [Function.comp_def, traverse_pure, traverse_pure', functor_norm])
        (fun x y ih1 ih2 ↦ by
          rw [traverse_mul, ih1, ih2, traverse_mul]
          simp [Functor.Comp.map_mk, Functor.map_map, Function.comp_def, Comp.seq_mk, seq_map_assoc,
            map_seq, traverse_mul])
    naturality := fun η α β f x ↦
      FreeMagma.recOnPure x
        (fun x ↦ by simp only [traverse_pure, functor_norm, Function.comp_apply])
        (fun x y ih1 ih2 ↦ by simp only [traverse_mul, functor_norm, ih1, ih2])
    traverse_eq_map_id := fun f x ↦
      FreeMagma.recOnPure x (fun _ ↦ rfl) fun x y ih1 ih2 ↦ by
        rw [traverse_mul, ih1, ih2, map_mul', map_pure, seq_pure, map_pure] }

end Category

end FreeMagma

/-- Representation of an element of a free magma. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Free/Variantcc5f6f500bed193ed4f32b3bd2b05563a56b70c25c4f75c639a68e4ee307807d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Free/Variantcc5f6f500bed193ed4f32b3bd2b05563a56b70c25c4f75c639a68e4ee307807d.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29ad2b03899617812d30bfcbcc9f2eb83524d85c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
