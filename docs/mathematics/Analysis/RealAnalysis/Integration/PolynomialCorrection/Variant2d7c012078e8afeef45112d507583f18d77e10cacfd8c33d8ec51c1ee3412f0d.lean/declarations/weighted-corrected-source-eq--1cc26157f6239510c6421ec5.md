# weighted_corrected_source_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2db5c477-4cc8-a6d0-1a56-dbaa6814470f",
  "kind": "theorem",
  "lexical_name": "weighted_corrected_source_eq",
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
  "slug": "weighted-corrected-source-eq--1cc26157f6239510c6421ec5",
  "source": {
    "blob": "f6bec6e97654bd19ff20e363f60a9616f8c53c6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 157,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/PolynomialCorrection/Variant2d7c012078e8afeef45112d507583f18d77e10cacfd8c33d8ec51c1ee3412f0d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1cc26157f6239510c6421ec5d8c43457fdb47e6e184515e1b8d08c71510451c5",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/PolynomialCorrection/Variant2d7c012078e8afeef45112d507583f18d77e10cacfd8c33d8ec51c1ee3412f0d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2db5c477-4cc8-a6d0-1a56-dbaa6814470f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weighted_corrected_source_eq (m : ℕ) (C : ℝ) (s : ℂ) (A : ℝ) (hA : 1 ≤ A) :
    Complex.exp (-s * A) * (correctedSource m C A : ℂ) =
      Complex.exp (-s * A) * (weightedSource A : ℂ) +
        (C : ℂ) * (Complex.exp (-s * A) * (normalizationPolynomial m A : ℂ)) := by
  rw [corrected_source_eq m C A (by linarith)]
  push_cast
  ring

/-- The corrected source has a genuine initial-half-plane Laplace integral. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/PolynomialCorrection/Variant2d7c012078e8afeef45112d507583f18d77e10cacfd8c33d8ec51c1ee3412f0d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/PolynomialCorrection/Variant2d7c012078e8afeef45112d507583f18d77e10cacfd8c33d8ec51c1ee3412f0d.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6bec6e97654bd19ff20e363f60a9616f8c53c6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
