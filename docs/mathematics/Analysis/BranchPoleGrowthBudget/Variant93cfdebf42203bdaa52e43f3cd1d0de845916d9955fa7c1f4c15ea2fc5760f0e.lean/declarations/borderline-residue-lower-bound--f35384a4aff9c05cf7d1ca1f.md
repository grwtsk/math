# borderline_residue_lower_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1bc30a07-39ec-4181-7b5f-7b41038d60b7",
  "kind": "theorem",
  "lexical_name": "borderline_residue_lower_bound",
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
  "slug": "borderline-residue-lower-bound--f35384a4aff9c05cf7d1ca1f",
  "source": {
    "blob": "0c7882f0f345eb2d00a8db514d9cbab20e13f504",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 45,
    "path": "GRWTSK/Analysis/BranchPoleGrowthBudget/Variant93cfdebf42203bdaa52e43f3cd1d0de845916d9955fa7c1f4c15ea2fc5760f0e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f35384a4aff9c05cf7d1ca1f6f2233026c235f3fea6670e0b1b7cb0b15ea78c7",
  "verification": {
    "reference": "docs/verification/Analysis/BranchPoleGrowthBudget/Variant93cfdebf42203bdaa52e43f3cd1d0de845916d9955fa7c1f4c15ea2fc5760f0e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1bc30a07-39ec-4181-7b5f-7b41038d60b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem borderline_residue_lower_bound (m : ℕ) (C γ ρ derivativeNorm : ℝ)
    (hC : 0 < C) (hγ : 0 < γ) (hρ : 0 < ρ) (hd : 0 < derivativeNorm)
    (hresidue : (m : ℝ) / (γ * ρ * derivativeNorm) ≤ C) :
    (m : ℝ) / (C * γ * ρ) ≤ derivativeNorm := by
  have hden : 0 < γ * ρ * derivativeNorm := by positivity
  have hcden : 0 < C * γ * ρ := by positivity
  apply (div_le_iff₀ hcden).mpr
  have h := (div_le_iff₀ hden).mp hresidue
  nlinarith

end FormalResearch.RiemannHypothesis.Conversation.BranchPoleGrowthBudget
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/BranchPoleGrowthBudget/Variant93cfdebf42203bdaa52e43f3cd1d0de845916d9955fa7c1f4c15ea2fc5760f0e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/BranchPoleGrowthBudget/Variant93cfdebf42203bdaa52e43f3cd1d0de845916d9955fa7c1f4c15ea2fc5760f0e.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c7882f0f345eb2d00a8db514d9cbab20e13f504` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
