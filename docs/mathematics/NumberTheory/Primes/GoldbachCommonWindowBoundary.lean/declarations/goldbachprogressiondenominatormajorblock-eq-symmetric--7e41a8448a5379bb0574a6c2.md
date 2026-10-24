# goldbachProgressionDenominatorMajorBlock_eq_symmetric

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:708129e6-0b92-5b83-d35d-80e1636d728a",
  "kind": "theorem",
  "lexical_name": "goldbachProgressionDenominatorMajorBlock_eq_symmetric",
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
  "slug": "goldbachprogressiondenominatormajorblock-eq-symmetric--7e41a8448a5379bb0574a6c2",
  "source": {
    "blob": "cedbbaac59215df5bb72f3a1e041b43697e028d0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 112,
    "path": "GRWTSK/NumberTheory/Primes/GoldbachCommonWindowBoundary.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e41a8448a5379bb0574a6c2a691a62367f9e1e975ba8e391efae087f7102d10",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/GoldbachCommonWindowBoundary.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:708129e6-0b92-5b83-d35d-80e1636d728a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem goldbachProgressionDenominatorMajorBlock_eq_symmetric
    {Q N q : ℕ}
    (hq : 0 < q) (hqQ : q ≤ Q)
    (hscale : 2 * Q ^ 2 < N + 1) :
    goldbachProgressionDenominatorMajorBlock Q N q =
      goldbachProgressionDenominatorCoefficient q N *
        goldbachSymmetricRealSingularIntegral Q N q := by
  rw [goldbachProgressionDenominatorMajorBlock_eq_common hq hqQ,
    goldbachCommonCircleSingularIntegral_eq_symmetric]
  exact goldbachRationalArcRadius_lt_half_of_denominator
    hq hqQ hscale

/-- A lower bound for the intrinsic common-window major sum can be passed to
the inherited strict progression-residue consumer. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Primes/GoldbachCommonWindowBoundary.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/GoldbachCommonWindowBoundary.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cedbbaac59215df5bb72f3a1e041b43697e028d0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
