# goldbachSymmetricRealSingularIntegral_re_eq_fejerIntegral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:058ac787-d06c-790f-57d9-d60b41a45776",
  "kind": "theorem",
  "lexical_name": "goldbachSymmetricRealSingularIntegral_re_eq_fejerIntegral",
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
  "slug": "goldbachsymmetricrealsingularintegral-re-eq-fejerintegral--6c31b5b061ac05f052f6632e",
  "source": {
    "blob": "bf516f0e84b56741728594781af922e362708f05",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 300,
    "line": 287,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachFejerCoreLowerBound.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c31b5b061ac05f052f6632e0ac1bca37e0c6ec8e214bc3c1c0fc5405c192674",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachFejerCoreLowerBound.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:058ac787-d06c-790f-57d9-d60b41a45776`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 287–300.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem goldbachSymmetricRealSingularIntegral_re_eq_fejerIntegral
    (Q N q : ℕ) :
    (goldbachSymmetricRealSingularIntegral Q N q).re =
      ∫ β in Set.Icc
          (-goldbachRationalArcRadius Q N q)
          (goldbachRationalArcRadius Q N q),
        goldbachFejerKernel N β := by
  unfold goldbachSymmetricRealSingularIntegral
  simp_rw [goldbachFiniteSingularKernel_eq_fejer]
  rw [integral_complex_ofReal]
  rfl

/-- A denominator-uniform lower bound for the actual symmetric finite
singular integral. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachFejerCoreLowerBound.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachFejerCoreLowerBound.lean#L287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf516f0e84b56741728594781af922e362708f05` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
