# elabNormNumConv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5bb1134a5b2d01e0b83bcd24de7949930162bc1039a2536369c6f1a9035870e1",
  "kind": "def",
  "lexical_name": "elabNormNumConv",
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
  "slug": "elabnormnumconv--5151fc52f84fa70129935130",
  "source": {
    "blob": "ea504545bdab3fe86cd2be060e62a98cf8977398",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 908,
    "line": 889,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Varianta30bc6157f516f34334f272fa69b93e3ca46d663fda392c5d22a8b5ffe6ebf41.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5151fc52f84fa70129935130af2aa2272154749d754973786bfb8dadded08fe1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Varianta30bc6157f516f34334f272fa69b93e3ca46d663fda392c5d22a8b5ffe6ebf41.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5bb1134a5b2d01e0b83bcd24de7949930162bc1039a2536369c6f1a9035870e1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 889–908.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[tactic normNumConv] def elabNormNumConv : Tactic := fun stx ↦ withMainContext do
  let ctx ← getSimpContext stx[2] !stx[1].isNone
  Conv.applySimpResult (← deriveSimp ctx (← instantiateMVars (← Conv.getLhs)) (useSimp := true))

/--
The basic usage is `#norm_num e`, where `e` is an expression,
which will print the `norm_num` form of `e`.

Syntax: `#norm_num` (`only`)? (`[` simp lemma list `]`)? `:`? expression

This accepts the same options as the `#simp` command.
You can specify additional simp lemmas as usual, for example using `#norm_num [f, g] : e`.
(The colon is optional but helpful for the parser.)
The `only` restricts `norm_num` to using only the provided lemmas, and so
`#norm_num only : e` behaves similarly to `norm_num1`.

Unlike `norm_num`, this command does not fail when no simplifications are made.

`#norm_num` understands local variables, so you can use them to introduce parameters.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Varianta30bc6157f516f34334f272fa69b93e3ca46d663fda392c5d22a8b5ffe6ebf41.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Varianta30bc6157f516f34334f272fa69b93e3ca46d663fda392c5d22a8b5ffe6ebf41.lean#L889).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ea504545bdab3fe86cd2be060e62a98cf8977398` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
