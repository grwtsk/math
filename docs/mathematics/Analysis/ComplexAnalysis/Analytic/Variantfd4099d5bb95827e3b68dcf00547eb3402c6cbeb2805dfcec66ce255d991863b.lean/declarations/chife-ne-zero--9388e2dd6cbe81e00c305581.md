# chiFE_ne_zero'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e0471827-2ea6-c721-b17c-354e6f4c9a8b",
  "kind": "theorem",
  "lexical_name": "chiFE_ne_zero'",
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
  "slug": "chife-ne-zero--9388e2dd6cbe81e00c305581",
  "source": {
    "blob": "cd7e7663cb813ea13eff8dc9ba4aacf777775a93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 204,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Analytic/Variantfd4099d5bb95827e3b68dcf00547eb3402c6cbeb2805dfcec66ce255d991863b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9388e2dd6cbe81e00c30558147afa705ff318ec5612d9634f239709ebcf4f349",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Analytic/Variantfd4099d5bb95827e3b68dcf00547eb3402c6cbeb2805dfcec66ce255d991863b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e0471827-2ea6-c721-b17c-354e6f4c9a8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem chiFE_ne_zero' {s : ℂ} (h1 : Gammaℝ (1 - s) ≠ 0) (h0 : Gammaℝ s ≠ 0) : chiFE s ≠ 0 := by
  rw [chiFE]; exact div_ne_zero h1 h0

/-- logDeriv χ = logDeriv (Γℝ∘(1−·)) + logDeriv G wherever both factors are nonzero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Analytic/Variantfd4099d5bb95827e3b68dcf00547eb3402c6cbeb2805dfcec66ce255d991863b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Analytic/Variantfd4099d5bb95827e3b68dcf00547eb3402c6cbeb2805dfcec66ce255d991863b.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cd7e7663cb813ea13eff8dc9ba4aacf777775a93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
