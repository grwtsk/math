# meet_left_commutative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:627ae959-4d47-0d13-f597-77a538ece753",
  "kind": "theorem",
  "lexical_name": "meet_left_commutative",
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
  "slug": "meet-left-commutative--c1529f763857d3c6c9ae4ece",
  "source": {
    "blob": "f09a4a958aea938ffb20aaff88eaf7eba1bd2d1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 32,
    "path": "GRWTSK/Algebra/Absorption/Variante1fd3c92a997c7dcb58a6a45854a14bb24744f0a952b33e78c0c6d17269131a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c1529f763857d3c6c9ae4ecee15d2baa5d70018afebb219d1d56fbd8e7f7e43f",
  "verification": {
    "reference": "docs/verification/Algebra/Absorption/Variante1fd3c92a997c7dcb58a6a45854a14bb24744f0a952b33e78c0c6d17269131a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:627ae959-4d47-0d13-f597-77a538ece753`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem meet_left_commutative (a b c : B) :
    a ⊓ (b ⊓ c) = b ⊓ (a ⊓ c) :=
  inf_left_comm a b c

end Mathematics.Boolean
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Absorption/Variante1fd3c92a997c7dcb58a6a45854a14bb24744f0a952b33e78c0c6d17269131a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Absorption/Variante1fd3c92a997c7dcb58a6a45854a14bb24744f0a952b33e78c0c6d17269131a6.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f09a4a958aea938ffb20aaff88eaf7eba1bd2d1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
