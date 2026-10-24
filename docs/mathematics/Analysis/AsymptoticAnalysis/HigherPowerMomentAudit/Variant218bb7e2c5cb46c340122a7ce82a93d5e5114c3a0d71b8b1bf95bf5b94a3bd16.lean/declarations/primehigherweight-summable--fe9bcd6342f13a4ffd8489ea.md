# primeHigherWeight_summable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:337e835a-7112-1100-736d-067296cef4da",
  "kind": "theorem",
  "lexical_name": "primeHigherWeight_summable",
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
  "slug": "primehigherweight-summable--fe9bcd6342f13a4ffd8489ea",
  "source": {
    "blob": "b8d18595f0c8fb9a75be2d75f559a4958ba617b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 156,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerMomentAudit/Variant218bb7e2c5cb46c340122a7ce82a93d5e5114c3a0d71b8b1bf95bf5b94a3bd16.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe9bcd6342f13a4ffd8489ead824091c385835863872d9cde0bca34471080180",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/HigherPowerMomentAudit/Variant218bb7e2c5cb46c340122a7ce82a93d5e5114c3a0d71b8b1bf95bf5b94a3bd16.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:337e835a-7112-1100-736d-067296cef4da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primeHigherWeight_summable :
    Summable (fun q : {p : ℕ // p.Prime} × {k : ℕ // 3 ≤ k} =>
      Real.log (q.1.val : ℝ) / (q.1.val : ℝ) ^ ((q.2.val : ℝ) / 2)) := by
  apply Summable.of_nonneg_of_le (fun q => by positivity) _ primeHigherMoment_summable
  intro q
  exact higherWeight_le_moment q.1.val q.2.val q.1.property.two_le q.2.property

end
end HigherPowerMomentScratch

set_option pp.universes true
#print HigherPowerMomentScratch.integerMoment
#print axioms HigherPowerMomentScratch.integerMoment
#print HigherPowerMomentScratch.higherMoment
#print axioms HigherPowerMomentScratch.higherMoment
#print HigherPowerMomentScratch.geometricRatio
#print axioms HigherPowerMomentScratch.geometricRatio
#print HigherPowerMomentScratch.exponentMoment
#print axioms HigherPowerMomentScratch.exponentMoment
#print HigherPowerMomentScratch.integerMoment_nonneg
#print axioms HigherPowerMomentScratch.integerMoment_nonneg
#print HigherPowerMomentScratch.higherMoment_nonneg
#print axioms HigherPowerMomentScratch.higherMoment_nonneg
#print HigherPowerMomentScratch.geometricRatio_pos
#print axioms HigherPowerMomentScratch.geometricRatio_pos
#print HigherPowerMomentScratch.geometricRatio_lt_one
#print axioms HigherPowerMomentScratch.geometricRatio_lt_one
#print HigherPowerMomentScratch.exponentMoment_nonneg
#print axioms HigherPowerMomentScratch.exponentMoment_nonneg
#print HigherPowerMomentScratch.integerMoment_le
#print axioms HigherPowerMomentScratch.integerMoment_le
#print HigherPowerMomentScratch.integerMoment_summable
#print axioms HigherPowerMomentScratch.integerMoment_summable
#print HigherPowerMomentScratch.exponentMoment_summable
#print axioms HigherPowerMomentScratch.exponentMoment_summable
#print HigherPowerMomentScratch.higherMoment_factorization
#print axioms HigherPowerMomentScratch.higherMoment_factorization
#print HigherPowerMomentScratch.higherMoment_le_product
#print axioms HigherPowerMomentScratch.higherMoment_le_product
#print HigherPowerMomentScratch.higherMoment_summable
#print axioms HigherPowerMomentScratch.higherMoment_summable
#print HigherPowerMomentScratch.primeHigherMoment_summable
#print axioms HigherPowerMomentScratch.primeHigherMoment_summable
#print HigherPowerMomentScratch.logLocation_sq_ge_one
#print axioms HigherPowerMomentScratch.logLocation_sq_ge_one
#print HigherPowerMomentScratch.higherWeight_le_moment
#print axioms HigherPowerMomentScratch.higherWeight_le_moment
#print HigherPowerMomentScratch.primeHigherWeight_summable
#print axioms HigherPowerMomentScratch.primeHigherWeight_summable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/HigherPowerMomentAudit/Variant218bb7e2c5cb46c340122a7ce82a93d5e5114c3a0d71b8b1bf95bf5b94a3bd16.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerMomentAudit/Variant218bb7e2c5cb46c340122a7ce82a93d5e5114c3a0d71b8b1bf95bf5b94a3bd16.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8d18595f0c8fb9a75be2d75f559a4958ba617b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
