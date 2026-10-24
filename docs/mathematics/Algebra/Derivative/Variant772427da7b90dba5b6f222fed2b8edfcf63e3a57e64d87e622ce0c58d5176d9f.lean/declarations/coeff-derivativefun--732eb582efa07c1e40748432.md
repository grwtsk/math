# coeff_derivativeFun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4a94b20d-baa1-1a1e-9b72-7a424901229f",
  "kind": "theorem",
  "lexical_name": "coeff_derivativeFun",
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
  "slug": "coeff-derivativefun--732eb582efa07c1e40748432",
  "source": {
    "blob": "249c0316e681afa432d7115d7e136f83c002d858",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 49,
    "path": "GRWTSK/Algebra/Derivative/Variant772427da7b90dba5b6f222fed2b8edfcf63e3a57e64d87e622ce0c58d5176d9f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:732eb582efa07c1e40748432824b856b0bb91b849bd149afa4cddd715d4a6162",
  "verification": {
    "reference": "docs/verification/Algebra/Derivative/Variant772427da7b90dba5b6f222fed2b8edfcf63e3a57e64d87e622ce0c58d5176d9f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4a94b20d-baa1-1a1e-9b72-7a424901229f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coeff_derivativeFun (f : R⟦X⟧) (n : ℕ) :
    coeff R n f.derivativeFun = coeff R (n + 1) f * (n + 1) := by
  rw [derivativeFun, coeff_mk]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Derivative/Variant772427da7b90dba5b6f222fed2b8edfcf63e3a57e64d87e622ce0c58d5176d9f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Derivative/Variant772427da7b90dba5b6f222fed2b8edfcf63e3a57e64d87e622ce0c58d5176d9f.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `249c0316e681afa432d7115d7e136f83c002d858` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
