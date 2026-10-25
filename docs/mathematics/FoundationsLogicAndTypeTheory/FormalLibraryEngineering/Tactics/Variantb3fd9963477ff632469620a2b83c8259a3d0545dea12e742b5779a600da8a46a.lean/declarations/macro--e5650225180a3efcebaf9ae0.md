# Anonymous macro

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f1a12d8326f59298dc3eb08bc425494bc80ab7142e2cd61c5fd85be19c124f44",
  "kind": "macro",
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
  "slug": "macro--e5650225180a3efcebaf9ae0",
  "source": {
    "blob": "1bafb4df56922fab687e1bea8e5a6c4d8fc5083d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2390,
    "line": 2366,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variantb3fd9963477ff632469620a2b83c8259a3d0545dea12e742b5779a600da8a46a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e5650225180a3efcebaf9ae06ca568eb2cd7bb1645cd2e864f588d33e19ccf26",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variantb3fd9963477ff632469620a2b83c8259a3d0545dea12e742b5779a600da8a46a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `macro` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f1a12d8326f59298dc3eb08bc425494bc80ab7142e2cd61c5fd85be19c124f44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2366–2390.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
macro (name := vcgenMacro) (priority:=low) "vcgen" : tactic =>
  Macro.throwError "to use `vcgen`, please include `import Std.Tactic.Do`"

/--
`cbv` performs simplification that closely mimics call-by-value evaluation.
It reduces terms by unfolding definitions using their defining equations and
applying matcher equations. The unfolding is propositional, so `cbv` also works
with functions defined via well-founded recursion or partial fixpoints.

`cbv` reduces the goal type (and optionally hypothesis types) using call-by-value
evaluation. For equation goals (`lhs = rhs`), `cbv` automatically attempts `refl`
after reduction to close the goal.

`cbv` supports the standard `at` location syntax:
- `cbv` — reduce the goal target
- `cbv at h` — reduce hypothesis `h`
- `cbv at h |-` — reduce hypothesis `h` and the goal target
- `cbv at *` — reduce all non-dependent propositional hypotheses and the goal target

`cbv` is not a finishing tactic in general: it may leave a new (simpler) goal.

The proofs produced by `cbv` only use the three standard axioms.
In particular, they do not require trust in the correctness of the code
generator.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variantb3fd9963477ff632469620a2b83c8259a3d0545dea12e742b5779a600da8a46a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Tactics/Variantb3fd9963477ff632469620a2b83c8259a3d0545dea12e742b5779a600da8a46a.lean#L2366).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bafb4df56922fab687e1bea8e5a6c4d8fc5083d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
