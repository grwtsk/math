# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:88935a07925cdd61adca54175c6823eae175c7bc315e5bdd2718a81a46aa6cb3",
  "kind": "example",
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
  "slug": "example--7958a01e8ed0dd446fd37fee",
  "source": {
    "blob": "2c36256ab5d73a0a8983791a1b514f5d562d57cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 410,
    "line": 373,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7a22116f2abc29a83b5e92749ea434831f32494e8a251cca969a257a3e377e4c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7958a01e8ed0dd446fd37fee1c060934166984a53f842fd7544403ec67a2b747",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7a22116f2abc29a83b5e92749ea434831f32494e8a251cca969a257a3e377e4c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:88935a07925cdd61adca54175c6823eae175c7bc315e5bdd2718a81a46aa6cb3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 373–410.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (D : Type u) [SmallCategory D] : LargeCategory (ULift.{u + 1} D) := by infer_instance

end

end CategoryTheory

-- Porting note: We hope that this will become less necessary,
-- as in Lean4 `simp` will automatically enter "`dsimp` mode" when needed with dependent arguments.
-- Optimistically, we will eventually remove this library note.
library_note "dsimp, simp"
/-- Many proofs in the category theory library use the `dsimp, simp` pattern,
which typically isn't necessary elsewhere.

One would usually hope that the same effect could be achieved simply with `simp`.

The essential issue is that composition of morphisms involves dependent types.
When you have a chain of morphisms being composed, say `f : X ⟶ Y` and `g : Y ⟶ Z`,
then `simp` can operate successfully on the morphisms
(e.g. if `f` is the identity it can strip that off).

However if we have an equality of objects, say `Y = Y'`,
then `simp` can't operate because it would break the typing of the composition operations.
We rarely have interesting equalities of objects
(because that would be "evil" --- anything interesting should be expressed as an isomorphism
and tracked explicitly),
except of course that we have plenty of definitional equalities of objects.

`dsimp` can apply these safely, even inside a composition.

After `dsimp` has cleared up the object level, `simp` can resume work on the morphism level ---
but without the `dsimp` step, because `simp` looks at expressions syntactically,
the relevant lemmas might not fire.

There's no bound on how many times you potentially could have to switch back and forth,
if the `simp` introduced new objects we again need to `dsimp`.
In practice this does occur, but only rarely, because `simp` tends to shorten chains of compositions
(i.e. not introduce new objects at all).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7a22116f2abc29a83b5e92749ea434831f32494e8a251cca969a257a3e377e4c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7a22116f2abc29a83b5e92749ea434831f32494e8a251cca969a257a3e377e4c.lean#L373).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c36256ab5d73a0a8983791a1b514f5d562d57cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
