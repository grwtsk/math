# elabTypeOf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:32fc33edc51c9b468096729c1044276431661057275428199f0e43a58241e25d",
  "kind": "def",
  "lexical_name": "elabTypeOf",
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
  "slug": "elabtypeof--ed8c9d1c176a2893e9f56ff7",
  "source": {
    "blob": "42da4fd6c8b37be7552d26a5cbf6500ad6184e58",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 300,
    "line": 276,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTerm/Variantc3e8bb3e4bf34f98324811a1ec07e2f3482002e67c290354ae324e0fd05a428f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ed8c9d1c176a2893e9f56ff778a5845e8a84d12e9b56360c2b55523c5792257f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTerm/Variantc3e8bb3e4bf34f98324811a1ec07e2f3482002e67c290354ae324e0fd05a428f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:32fc33edc51c9b468096729c1044276431661057275428199f0e43a58241e25d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 276–300.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
@[builtin_term_elab typeOf] def elabTypeOf : TermElab := fun stx _ => do
  inferType (← elabTerm stx[1] none)

/--
  Recall that `mkTermInfo` does not create an `ofTermInfo` node in the info tree
  if `e` corresponds to a hole that is going to be filled "later" by executing a tactic or resuming elaboration.
  This behavior is problematic for auxiliary elaboration steps that are "almost" no-ops.
  For example, consider the elaborator for
  ```
  ensure_type_of% s msg e
  ```
  It elaborates `s`, infers its type `t`, and then elaborates `e` ensuring the resulting type is `t`.
  If the elaboration of `e` is postponed, then the result is just a metavariable, and an `ofTermInfo` would not be created.
  This happens because `ensure_type_of%` is almost a no-op. The elaboration of `s` does not directly contribute to the
  final result, just its type.
  To make sure, we don't miss any information in the `InfoTree`, we can just create a "silent" annotation to force
  `mTermInfo` to create a node for the `ensure_type_of% s msg e` even if `e` has been postponed.

  Another possible solution is to elaborate `ensure_type_of% s msg e` as `ensureType s e` where `ensureType` has type
  ```
  ensureType (s e : α) := e
  ```
  We decided to use the silent notation because `ensure_type_of%` is heavily used in the `Do` elaborator, and the extra
  overhead could be significant.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTerm/Variantc3e8bb3e4bf34f98324811a1ec07e2f3482002e67c290354ae324e0fd05a428f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTerm/Variantc3e8bb3e4bf34f98324811a1ec07e2f3482002e67c290354ae324e0fd05a428f.lean#L276).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42da4fd6c8b37be7552d26a5cbf6500ad6184e58` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
