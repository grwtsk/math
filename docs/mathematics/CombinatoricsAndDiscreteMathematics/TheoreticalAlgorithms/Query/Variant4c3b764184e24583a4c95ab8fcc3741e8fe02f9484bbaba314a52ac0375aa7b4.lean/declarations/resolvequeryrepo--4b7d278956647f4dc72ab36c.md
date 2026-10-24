# resolveQueryRepo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1a1b047a9a7cb594208e49aa4a512904af67b5d38fd7f6b21aa5b332ec9cfe9f",
  "kind": "def",
  "lexical_name": "resolveQueryRepo",
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
  "slug": "resolvequeryrepo--4b7d278956647f4dc72ab36c",
  "source": {
    "blob": "4ac66d54a1d47eb3b247ef9ff110438523a99758",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 157,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Query/Variant4c3b764184e24583a4c95ab8fcc3741e8fe02f9484bbaba314a52ac0375aa7b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4b7d278956647f4dc72ab36ca971c02489ed4db0f62109fd79d762a12dcaab3f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Query/Variant4c3b764184e24583a4c95ab8fcc3741e8fe02f9484bbaba314a52ac0375aa7b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1a1b047a9a7cb594208e49aa4a512904af67b5d38fd7f6b21aa5b332ec9cfe9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def resolveQueryRepo (repoExplicit? : Option String) : IO String := do
  match repoExplicit? with
  | some r => pure r
  | none =>
    match ← getRemoteRepo "." with
    | some info => pure info.repo
    | none => pure MATHLIBREPO

/--
Boolean probe for a single commit: prints `cached` or `not cached` and exits
with status 0 / 1 respectively. Intended for scripting.

Probes the `forks` per-SHA marker, the only SHA-scoped container. Canonical repos
have no per-commit namespace, so it exits non-zero with a note instead of a
misleading `not cached`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Query/Variant4c3b764184e24583a4c95ab8fcc3741e8fe02f9484bbaba314a52ac0375aa7b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Query/Variant4c3b764184e24583a4c95ab8fcc3741e8fe02f9484bbaba314a52ac0375aa7b4.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ac66d54a1d47eb3b247ef9ff110438523a99758` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
