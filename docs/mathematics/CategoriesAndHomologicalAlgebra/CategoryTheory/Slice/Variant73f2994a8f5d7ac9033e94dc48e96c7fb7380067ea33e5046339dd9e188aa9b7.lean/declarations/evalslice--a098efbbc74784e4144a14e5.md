# evalSlice

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f6c20930f32205b8b62a6206468210db7c4975398dbb84ebcc5447628a608200",
  "kind": "def",
  "lexical_name": "evalSlice",
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
  "slug": "evalslice--a098efbbc74784e4144a14e5",
  "source": {
    "blob": "66942584daf0be014099611f3de8503927186000",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 44,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Slice/Variant73f2994a8f5d7ac9033e94dc48e96c7fb7380067ea33e5046339dd9e188aa9b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a098efbbc74784e4144a14e5d8cd5d50eabfb3de408686019bb50bdd6bbc03bf",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Slice/Variant73f2994a8f5d7ac9033e94dc48e96c7fb7380067ea33e5046339dd9e188aa9b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f6c20930f32205b8b62a6206468210db7c4975398dbb84ebcc5447628a608200`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def evalSlice (a b : Nat) : TacticM Unit := do
  let _ ← iterateUntilFailureWithResults do
    evalTactic (← `(conv| rw [Category.assoc]))
  iterateRange (a - 1) (a - 1) do
      evalTactic (← `(conv| congr))
      evalTactic (← `(tactic| rotate_left))
  let k ← iterateUntilFailureCount
    <| evalTactic (← `(conv| rw [← Category.assoc]))
  let c := k+1+a-b
  iterateRange c c <| evalTactic (← `(conv| congr))
  let _ ← iterateUntilFailureWithResults do
    evalTactic (← `(conv| rw [Category.assoc]))

/-- `slice` is implemented by `evalSlice`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Slice/Variant73f2994a8f5d7ac9033e94dc48e96c7fb7380067ea33e5046339dd9e188aa9b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Slice/Variant73f2994a8f5d7ac9033e94dc48e96c7fb7380067ea33e5046339dd9e188aa9b7.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66942584daf0be014099611f3de8503927186000` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
