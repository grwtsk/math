# NoTestableInstance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e510895c377093a249286a5dd83b15956bf53006b6bd1d79035f68745e92c68a",
  "kind": "structure",
  "lexical_name": "NoTestableInstance",
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
  "slug": "notestableinstance--e51a442bdbca2bb4ff8bda4f",
  "source": {
    "blob": "0b6b0e8573dea21d31fd7204441798a7621c93f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 181,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tactic/Variant7ce56ce90528e7e0ad91a08c8aef4b4eed9b62dfd91abf386a3fb8708feecb34.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e51a442bdbca2bb4ff8bda4f33ad98b8243e5b9c1265d128b0a76c87de3fae89",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tactic/Variant7ce56ce90528e7e0ad91a08c8aef4b4eed9b62dfd91abf386a3fb8708feecb34.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e510895c377093a249286a5dd83b15956bf53006b6bd1d79035f68745e92c68a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private structure NoTestableInstance where
  x : Nat

/--
error: Failed to create a `testable` instance for `∀ (a : NoTestableInstance), a.x = 0`.
What to do:
1. make sure that the types you are using have `Plausible.SampleableExt` instances
 (you can use `#sample my_type` if you are unsure);
2. make sure that the relations and predicates that your proposition use are decidable;
3. if your hypothesis is big consider increasing `set_option synthInstance.maxSize` to a
    ⏎
  higher power of two
    ⏎
4. make sure that instances of `Plausible.Testable` exist that, when combined,
  apply to your decorated proposition:
```
Plausible.NamedBinder "a" (∀ (a : NoTestableInstance), a.x = 0)
```

Use `set_option trace.Meta.synthInstance true` to understand what instances are missing.

Try this:
set_option trace.Meta.synthInstance true
#synth Plausible.Testable (Plausible.NamedBinder "a" (∀ (a : NoTestableInstance), a.x = 0))
-/
#guard_msgs in
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tactic/Variant7ce56ce90528e7e0ad91a08c8aef4b4eed9b62dfd91abf386a3fb8708feecb34.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Tactic/Variant7ce56ce90528e7e0ad91a08c8aef4b4eed9b62dfd91abf386a3fb8708feecb34.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b6b0e8573dea21d31fd7204441798a7621c93f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
