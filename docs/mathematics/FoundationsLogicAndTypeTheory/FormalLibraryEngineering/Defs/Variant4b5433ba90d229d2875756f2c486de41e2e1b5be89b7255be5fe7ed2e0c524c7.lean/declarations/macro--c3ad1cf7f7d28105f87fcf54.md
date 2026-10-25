# Anonymous macro

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8015e109143d1197906ac793eecd4537a9a228eb98b3679edfbe1ac568566835",
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
  "slug": "macro--c3ad1cf7f7d28105f87fcf54",
  "source": {
    "blob": "866ef6ab673f737a4ffbb7b2138402d5c76e6c05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 165,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant4b5433ba90d229d2875756f2c486de41e2e1b5be89b7255be5fe7ed2e0c524c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c3ad1cf7f7d28105f87fcf542acc1017066077ce84fabe492c67db47b6c118c7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant4b5433ba90d229d2875756f2c486de41e2e1b5be89b7255be5fe7ed2e0c524c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `macro` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8015e109143d1197906ac793eecd4537a9a228eb98b3679edfbe1ac568566835`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
macro (priority := low) "{" t:term " | " bs:extBinders "}" : term =>
  `({x | ∃ᵉ $bs:extBinders, $t = x})

/--
* `{ pat : X | p }` is notation for pattern matching in set-builder notation,
  where `pat` is a pattern that is matched by all objects of type `X`
  and `p` is a proposition that can refer to variables in the pattern.
  It is the set of all objects of type `X` which, when matched with the pattern `pat`,
  make `p` come out true.
* `{ pat | p }` is the same, but in the case when the type `X` can be inferred.

For example, `{ (m, n) : ℕ × ℕ | m * n = 12 }` denotes the set of all ordered pairs of
natural numbers whose product is 12.

Note that if the type ascription is left out and `p` can be interpreted as an extended binder,
then the extended binder interpretation will be used.  For example, `{ n + 1 | n < 3 }` will
be interpreted as `{ x : Nat | ∃ n < 3, n + 1 = x }` rather than using pattern matching.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant4b5433ba90d229d2875756f2c486de41e2e1b5be89b7255be5fe7ed2e0c524c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Defs/Variant4b5433ba90d229d2875756f2c486de41e2e1b5be89b7255be5fe7ed2e0c524c7.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `866ef6ab673f737a4ffbb7b2138402d5c76e6c05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
