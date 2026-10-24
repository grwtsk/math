# head!

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:716ea3d8f9345dd076edd3581a21a7391cd0269667c7fbbf1169f839ca93cd6b",
  "kind": "def",
  "lexical_name": "head!",
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
  "slug": "head--9501b7ee126daea4cefe7c12",
  "source": {
    "blob": "39680919ddf376e715105b20a7e40ca70ffcc248",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 87,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variant1a99917aa08f7fdcab65fa8abdd8958fee81b139bf1a2b0b1ad6d9db077d8dcd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9501b7ee126daea4cefe7c1263a2173791e0c4da6bd8d2859aa1df515f20a3d4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variant1a99917aa08f7fdcab65fa8abdd8958fee81b139bf1a2b0b1ad6d9db077d8dcd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:716ea3d8f9345dd076edd3581a21a7391cd0269667c7fbbf1169f839ca93cd6b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[expose] def head! [Inhabited α] : List α → α
  | []   => panic! "empty list"
  | a::_ => a

/-! ### tail! -/

/--
Drops the first element of a nonempty list, returning the tail. If the list is empty, this function
panics when executed and returns the empty list.

Safer alternatives include
 * `tail`, which returns the empty list without panicking,
 * `tail?`, which returns an `Option`, and
 * `tailD`, which returns a fallback value when passed the empty list.

Examples:
 * `["apple", "banana", "grape"].tail! = ["banana", "grape"]`
 * `["banana", "grape"].tail! = ["grape"]`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variant1a99917aa08f7fdcab65fa8abdd8958fee81b139bf1a2b0b1ad6d9db077d8dcd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BasicAux/Variant1a99917aa08f7fdcab65fa8abdd8958fee81b139bf1a2b0b1ad6d9db077d8dcd.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39680919ddf376e715105b20a7e40ca70ffcc248` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
