# heightCount_eq_twice_certifiedCount_of_gap_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:192a4366-7a08-98c7-7ab3-daa6e4003685",
  "kind": "theorem",
  "lexical_name": "heightCount_eq_twice_certifiedCount_of_gap_eq_zero",
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
  "slug": "heightcount-eq-twice-certifiedcount-of-gap-eq-zero--1e762a33fe0611091392edae",
  "source": {
    "blob": "35bf67032adde4213817968469a2fc03d71c3da4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 185,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringFullHead.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e762a33fe0611091392edae37f2178750d972067273c8cba6bb0684c7cb09ad",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringFullHead.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:192a4366-7a08-98c7-7ab3-daa6e4003685`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem heightCount_eq_twice_certifiedCount_of_gap_eq_zero
    (packet : CanonicalPositiveTuringPacket family)
    (zeroGap : packet.certificate.gap = 0) :
    heightCount packet.certificate.height =
      2 * family.certifiedCount := by
  have complete := (TuringCountCertificate.gap_eq_zero_iff_complete
    packet.certificate).mp zeroGap
  have certifiedEq : family.certifiedCount = packet.certificate.totalCount := by
    simpa [TuringCountCertificate.Complete] using complete
  rw [packet.heightCount_eq_twice_totalCount, ← certifiedEq]

/-- Every finite multiplicity-weighted source expression can be evaluated from the
positive certified family plus its actual conjugates. No tail or infinite sum is implied. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringFullHead.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringFullHead.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35bf67032adde4213817968469a2fc03d71c3da4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
