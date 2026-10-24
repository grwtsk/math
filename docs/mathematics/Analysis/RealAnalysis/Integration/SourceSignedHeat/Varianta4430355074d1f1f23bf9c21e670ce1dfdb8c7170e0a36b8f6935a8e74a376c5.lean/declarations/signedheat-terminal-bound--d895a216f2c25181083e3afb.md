# signedHeat_terminal_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d3cbc44e-924d-9dc1-26f4-e49f75c88040",
  "kind": "theorem",
  "lexical_name": "signedHeat_terminal_bound",
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
  "slug": "signedheat-terminal-bound--d895a216f2c25181083e3afb",
  "source": {
    "blob": "8411695f30cbf8b66b8854b856c711e1b254b2ae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 157,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceSignedHeat/Varianta4430355074d1f1f23bf9c21e670ce1dfdb8c7170e0a36b8f6935a8e74a376c5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d895a216f2c25181083e3afbf5434055aab4b1547d9bc9e25daff087a97389df",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceSignedHeat/Varianta4430355074d1f1f23bf9c21e670ce1dfdb8c7170e0a36b8f6935a8e74a376c5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d3cbc44e-924d-9dc1-26f4-e49f75c88040`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem signedHeat_terminal_bound [IsProbabilityMeasure μ] {τ : ℝ} (hτ : 0 < τ) :
    |signedHeat μ k τ| ≤ terminalCap τ := by
  have h := norm_integral_le_of_norm_le_const (μ := μ)
    (f := fun x => k x * Real.exp (-τ * k x ^ 2)) (C := terminalCap τ)
    (ae_of_all _ (fun x => by
      simpa only [Real.norm_eq_abs] using gaussian_abs_bound (k x) hτ))
  simpa only [signedHeat, Real.norm_eq_abs, probReal_univ, mul_one] using h

omit [IsFiniteMeasure μ] in
/-- Negating the source negates the odd heat observation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceSignedHeat/Varianta4430355074d1f1f23bf9c21e670ce1dfdb8c7170e0a36b8f6935a8e74a376c5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceSignedHeat/Varianta4430355074d1f1f23bf9c21e670ce1dfdb8c7170e0a36b8f6935a8e74a376c5.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8411695f30cbf8b66b8854b856c711e1b254b2ae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
