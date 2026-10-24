# primeHigherMoment_summable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b477549c-6efc-9477-8a5b-a213a9b0f7d1",
  "kind": "theorem",
  "lexical_name": "primeHigherMoment_summable",
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
  "slug": "primehighermoment-summable--870e5ed4d078320c37aef603",
  "source": {
    "blob": "95dbaf4a1b0b86be461d1395233cc71f2e3c0043",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 127,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant52a5517ebd3e8548439b4b371640a12dd3d65a9cbc0e1a4795ba62c4e5acab97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:870e5ed4d078320c37aef60331d80682725b61f833ab956d77b63d17ffb5d636",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant52a5517ebd3e8548439b4b371640a12dd3d65a9cbc0e1a4795ba62c4e5acab97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b477549c-6efc-9477-8a5b-a213a9b0f7d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primeHigherMoment_summable :
    Summable (fun q : {p : ℕ // p.Prime} × {k : ℕ // 3 ≤ k} =>
      Real.log (q.1.val : ℝ) / (q.1.val : ℝ) ^ ((q.2.val : ℝ) / 2) *
        ((q.2.val : ℝ) * Real.log (q.1.val : ℝ)) ^ 2) := by
  have hp := integerMoment_summable.subtype (fun p : ℕ => p.Prime)
  have hk := exponentMoment_summable.subtype (fun k : ℕ => 3 ≤ k)
  have h := hp.mul_of_nonneg hk (fun p => integerMoment_nonneg p.val)
    (fun k => exponentMoment_nonneg k.val)
  exact Summable.of_nonneg_of_le
    (fun q => higherMoment_nonneg q.1.val q.2.val)
    (fun q => higherMoment_le_product q.1.val q.2.val q.1.property.two_le q.2.property) h

/-- The squared logarithmic location is at least one on the actual higher-power index set. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant52a5517ebd3e8548439b4b371640a12dd3d65a9cbc0e1a4795ba62c4e5acab97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/HigherPowerMomentStatements/Variant52a5517ebd3e8548439b4b371640a12dd3d65a9cbc0e1a4795ba62c4e5acab97.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95dbaf4a1b0b86be461d1395233cc71f2e3c0043` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
