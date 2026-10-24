# positiveHeightCount_eq_record_sum_of_gap_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:88ead6a8-5f72-28d0-c52a-f13f05647981",
  "kind": "theorem",
  "lexical_name": "positiveHeightCount_eq_record_sum_of_gap_eq_zero",
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
  "slug": "positiveheightcount-eq-record-sum-of-gap-eq-zero--198dcc6be2eca7f3397e59da",
  "source": {
    "blob": "2b8ecdbeb2421fa84206d7e1676f1dc24a5b3369",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 203,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringEnumeration.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:198dcc6be2eca7f3397e59da8d6b6bad7e51b5ab7d7983a0dc74aa48c2dc23e5",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringEnumeration.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88ead6a8-5f72-28d0-c52a-f13f05647981`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–219.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem positiveHeightCount_eq_record_sum_of_gap_eq_zero
    (packet : CanonicalPositiveTuringPacket family)
    (zeroGap : packet.certificate.gap = 0) :
    positiveHeightCount packet.certificate.height =
      ∑ i : Index, (family.record i).multiplicity := by
  have complete := (TuringCountCertificate.gap_eq_zero_iff_complete
    packet.certificate).mp zeroGap
  have certifiedEq : family.certifiedCount = packet.certificate.totalCount := by
    simpa [TuringCountCertificate.Complete] using complete
  calc
    positiveHeightCount packet.certificate.height =
        packet.certificate.totalCount := packet.exact_count
    _ = family.certifiedCount := certifiedEq.symm
    _ = ∑ i : Index, (family.record i).multiplicity := rfl

/-- The complete finite divisor sum can be indexed directly by certified records.
Record multiplicity is rewritten to the same actual analytic multiplicity before use. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringEnumeration.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringEnumeration.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b8ecdbeb2421fa84206d7e1676f1dc24a5b3369` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
