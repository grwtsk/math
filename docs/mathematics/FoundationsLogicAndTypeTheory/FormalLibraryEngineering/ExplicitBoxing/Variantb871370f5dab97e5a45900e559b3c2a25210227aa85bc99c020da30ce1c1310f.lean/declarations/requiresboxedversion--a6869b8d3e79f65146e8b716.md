# requiresBoxedVersion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4d1da69965d9cef65e20f80fb88e95a2bf8084e1cec3df30d27445744cbff913",
  "kind": "def",
  "lexical_name": "requiresBoxedVersion",
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
  "slug": "requiresboxedversion--a6869b8d3e79f65146e8b716",
  "source": {
    "blob": "7d36b3223bd202cd176ea6d7d6cbac1bfdc1c87b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 30,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitBoxing/Variantb871370f5dab97e5a45900e559b3c2a25210227aa85bc99c020da30ce1c1310f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a6869b8d3e79f65146e8b7160b2ea543295503265c8187fa126693afa0980d1e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitBoxing/Variantb871370f5dab97e5a45900e559b3c2a25210227aa85bc99c020da30ce1c1310f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4d1da69965d9cef65e20f80fb88e95a2bf8084e1cec3df30d27445744cbff913`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def requiresBoxedVersion (sig : Signature .impure) : CompilerM Bool := do
  let ps := sig.params
  let env ← getEnv
  return (ps.size > 0
    && (sig.type.isScalar
      || ps.any (fun p => p.type.isScalar || p.borrow || p.type.isVoid)
      || isExtern env sig.name))
    || ps.size > closureMaxArgs

/--
For a given signature we generate the `boxed` version by:
- declaring all parameters as the boxed variant of the current parameters
- inserting unbox instructions as required
- invoking the function
- boxing the result if required before returning it
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitBoxing/Variantb871370f5dab97e5a45900e559b3c2a25210227aa85bc99c020da30ce1c1310f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExplicitBoxing/Variantb871370f5dab97e5a45900e559b3c2a25210227aa85bc99c020da30ce1c1310f.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d36b3223bd202cd176ea6d7d6cbac1bfdc1c87b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
