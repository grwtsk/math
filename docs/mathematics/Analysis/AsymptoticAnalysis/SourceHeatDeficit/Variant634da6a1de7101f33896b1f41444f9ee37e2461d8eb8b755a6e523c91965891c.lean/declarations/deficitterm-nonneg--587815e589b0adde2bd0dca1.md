# deficitTerm_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2ada9dd8-2ac1-1c68-24ec-a974f6aeae65",
  "kind": "theorem",
  "lexical_name": "deficitTerm_nonneg",
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
  "slug": "deficitterm-nonneg--587815e589b0adde2bd0dca1",
  "source": {
    "blob": "c08aec2d2f82925ed335e6c9f14bad4a6aff4c24",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 45,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/SourceHeatDeficit/Variant634da6a1de7101f33896b1f41444f9ee37e2461d8eb8b755a6e523c91965891c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:587815e589b0adde2bd0dca1d35d0d147e83a01b80832ec5335ac55ca036a8c7",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/SourceHeatDeficit/Variant634da6a1de7101f33896b1f41444f9ee37e2461d8eb8b755a6e523c91965891c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2ada9dd8-2ac1-1c68-24ec-a974f6aeae65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem deficitTerm_nonneg {t : ℝ} (ht : 0 ≤ t) (m : ℕ) (delta gamma : ℝ) :
    0 ≤ deficitTerm t m delta gamma := by
  have he : Real.exp (-t * delta ^ 2) ≤ 1 :=
    Real.exp_le_one_iff.mpr (by nlinarith [sq_nonneg delta])
  exact mul_nonneg (gaussianTerm_nonneg t m gamma) (sub_nonneg.mpr he)

/-- One positive-multiplicity object in the closed region pays the full threshold. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/SourceHeatDeficit/Variant634da6a1de7101f33896b1f41444f9ee37e2461d8eb8b755a6e523c91965891c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/SourceHeatDeficit/Variant634da6a1de7101f33896b1f41444f9ee37e2461d8eb8b755a6e523c91965891c.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c08aec2d2f82925ed335e6c9f14bad4a6aff4c24` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
