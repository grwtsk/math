# sourceKernelTerm_deriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:26e718de-41b6-cd92-72d5-ada6def244ba",
  "kind": "theorem",
  "lexical_name": "sourceKernelTerm_deriv",
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
  "slug": "sourcekernelterm-deriv--6f1c7f93c65877816b884c12",
  "source": {
    "blob": "9eb67302332a36e79b672f8a0a5e9bbf1e579476",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 75,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AuditSource/Variantf7702fabc43f1a39fd40cc932039734c0089e0d39955d1b7d9062db444401ba2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6f1c7f93c65877816b884c128ec53fb4295da12481674400148ada04557f28d0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/AuditSource/Variantf7702fabc43f1a39fd40cc932039734c0089e0d39955d1b7d9062db444401ba2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:26e718de-41b6-cd92-72d5-ada6def244ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceKernelTerm_deriv
    (A x : ℝ) (k : ℕ) (hA : 0 < A) (hx : 0 < x) (hk : 1 ≤ k) :
    deriv (sourceKernelTerm A k) x =
      Real.log (k : ℝ) / (x * Real.sqrt (x * (k : ℝ))) *
        (deriv (sourceCorrelation Realization.explicitSecondDerivative A)
            (Real.log (x * (k : ℝ))) -
          sourceCorrelation Realization.explicitSecondDerivative A
            (Real.log (x * (k : ℝ))) / 2) :=
  (sourceKernelTerm_hasDerivAt A x k hA hx hk).deriv

/-- Differentiation commutes with this fixed finite inventory. No unbounded sum
or integral is interchanged. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/AuditSource/Variantf7702fabc43f1a39fd40cc932039734c0089e0d39955d1b7d9062db444401ba2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AuditSource/Variantf7702fabc43f1a39fd40cc932039734c0089e0d39955d1b7d9062db444401ba2.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9eb67302332a36e79b672f8a0a5e9bbf1e579476` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
