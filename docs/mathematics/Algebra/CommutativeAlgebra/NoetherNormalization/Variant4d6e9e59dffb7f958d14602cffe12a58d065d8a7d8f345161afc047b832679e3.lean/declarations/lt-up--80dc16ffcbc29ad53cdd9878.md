# lt_up

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d4708a04-5353-c272-0aba-26d6c71efe0b",
  "kind": "lemma",
  "lexical_name": "lt_up",
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
  "slug": "lt-up--80dc16ffcbc29ad53cdd9878",
  "source": {
    "blob": "2a445413b664d3680302a670a674fb0910334143",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 77,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/NoetherNormalization/Variant4d6e9e59dffb7f958d14602cffe12a58d065d8a7d8f345161afc047b832679e3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:80dc16ffcbc29ad53cdd9878b52b6b007b88d7bd27f2215f30a1b76d2ea9dc1a",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/NoetherNormalization/Variant4d6e9e59dffb7f958d14602cffe12a58d065d8a7d8f345161afc047b832679e3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4708a04-5353-c272-0aba-26d6c71efe0b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma lt_up (vlt : ∀ i, v i < up) : ∀ l ∈ ofFn v, l < up := by
  grind

/-- `r` maps `(i : Fin (n + 1))` to `up ^ i`. -/
local notation3 "r" => fun (i : Fin (n + 1)) ↦ up ^ i.1

/-- We construct an algebra map `T1 f c` which maps `X_i` into `X_i + c • X_0 ^ r_i` when `i ≠ 0`
and `X_0` to `X_0`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/NoetherNormalization/Variant4d6e9e59dffb7f958d14602cffe12a58d065d8a7d8f345161afc047b832679e3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/NoetherNormalization/Variant4d6e9e59dffb7f958d14602cffe12a58d065d8a7d8f345161afc047b832679e3.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a445413b664d3680302a670a674fb0910334143` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
