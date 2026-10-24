# goldbachExponentialSum_at_lift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:04341dc8-5500-46fc-2146-fc6bc0a4862c",
  "kind": "theorem",
  "lexical_name": "goldbachExponentialSum_at_lift",
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
  "slug": "goldbachexponentialsum-at-lift--10761bf9031e9e9ce9219491",
  "source": {
    "blob": "2b61b3f660aa896762a098b24fd7a4908e5c2480",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 163,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachRationalArcCoordinates.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:10761bf9031e9e9ce92194917e2539d48c49d31afacba76c4c97f23f4ecc4f35",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachRationalArcCoordinates.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:04341dc8-5500-46fc-2146-fc6bc0a4862c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem goldbachExponentialSum_at_lift
    (N a q : ℕ) (k : ℤ) (β : ℝ) :
    goldbachExponentialSum N
        (goldbachLiftedRationalArcCenter a q k + β) =
      goldbachCenteredExponentialSum N a q β := by
  unfold goldbachLiftedRationalArcCenter
    goldbachCenteredExponentialSum
  rw [show
      goldbachRationalArcCenter a q + (k : ℝ) + β =
        (goldbachRationalArcCenter a q + β) + (k : ℝ) by ring,
    goldbachExponentialSum_add_int]

/-- The exact circle integrand equals its centered local-coordinate form. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachRationalArcCoordinates.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachRationalArcCoordinates.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b61b3f660aa896762a098b24fd7a4908e5c2480` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
