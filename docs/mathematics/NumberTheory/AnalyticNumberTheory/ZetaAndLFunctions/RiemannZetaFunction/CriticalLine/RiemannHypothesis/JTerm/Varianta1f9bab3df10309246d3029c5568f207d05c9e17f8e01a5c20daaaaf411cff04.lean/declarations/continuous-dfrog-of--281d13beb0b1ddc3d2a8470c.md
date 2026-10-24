# continuous_DfroG_of

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fa15e5ca-8b7c-59d4-b455-b5d3426646b6",
  "kind": "theorem",
  "lexical_name": "continuous_DfroG_of",
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
  "slug": "continuous-dfrog-of--281d13beb0b1ddc3d2a8470c",
  "source": {
    "blob": "21e329e89807b9f3ed7a828eb75c1643d540cedf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 51,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/JTerm/Varianta1f9bab3df10309246d3029c5568f207d05c9e17f8e01a5c20daaaaf411cff04.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:281d13beb0b1ddc3d2a8470c5dcd2febaf7bc2439c91ba8a5896191c6fb3363a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/JTerm/Varianta1f9bab3df10309246d3029c5568f207d05c9e17f8e01a5c20daaaaf411cff04.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fa15e5ca-8b7c-59d4-b455-b5d3426646b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_DfroG_of (c : ℝ) {Λs : ℂ} {a : ℕ → ℂ}
    (ha : Summable (fun N : ℕ => ‖a N‖ * (N : ℝ) ^ (-c)))
    (hLS : ∀ t : ℝ, LSeries a ((c:ℂ) + t * I) = DfroG c Λs t) : Continuous (DfroG c Λs) := by
  have h := continuous_LSeries_line a c ha
  have e : (fun t : ℝ => LSeries a ((c:ℂ) + t * I)) = DfroG c Λs := funext hLS
  rwa [e] at h

/-- the correction functional on the line c against an abstract dE:  (1/2π)∫ HwC c k t · dE t. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/JTerm/Varianta1f9bab3df10309246d3029c5568f207d05c9e17f8e01a5c20daaaaf411cff04.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/JTerm/Varianta1f9bab3df10309246d3029c5568f207d05c9e17f8e01a5c20daaaaf411cff04.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21e329e89807b9f3ed7a828eb75c1643d540cedf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
