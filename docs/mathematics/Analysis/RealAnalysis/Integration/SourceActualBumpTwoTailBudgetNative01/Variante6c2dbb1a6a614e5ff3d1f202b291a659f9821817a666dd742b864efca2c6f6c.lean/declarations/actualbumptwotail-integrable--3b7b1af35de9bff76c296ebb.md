# actualBumpTwoTail_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:010205af-c5b4-669f-58d2-c14f3c90c31f",
  "kind": "theorem",
  "lexical_name": "actualBumpTwoTail_integrable",
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
  "slug": "actualbumptwotail-integrable--3b7b1af35de9bff76c296ebb",
  "source": {
    "blob": "54e3d7439a99dac4e7d3551a621a1cdcea4ec64f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 116,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualBumpTwoTailBudgetNative01/Variante6c2dbb1a6a614e5ff3d1f202b291a659f9821817a666dd742b864efca2c6f6c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b7b1af35de9bff76c296ebb3b2c4a55dfad2ef98c4d18b291808d8e7990e67b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualBumpTwoTailBudgetNative01/Variante6c2dbb1a6a614e5ff3d1f202b291a659f9821817a666dd742b864efca2c6f6c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:010205af-c5b4-669f-58d2-c14f3c90c31f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualBumpTwoTail_integrable (A c T : ℝ) (hA : 1 ≤ A) (hc : 1 < c)
    (hT : 1 ≤ T) :
    IntegrableOn (actualRightBumpDensity A c) (Ioi T) ∧
      IntegrableOn (fun t => actualRightBumpDensity A c (-t)) (Ioi T) := by
  constructor
  · simpa only [one_mul] using actual_one_tail_integrable A c T 1 hA hc hT (by norm_num)
  · simpa only [neg_one_mul] using actual_one_tail_integrable A c T (-1) hA hc hT (by norm_num)

/-- The exact normalized two-tail loss is the literal paper numerator/(5πT⁵). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualBumpTwoTailBudgetNative01/Variante6c2dbb1a6a614e5ff3d1f202b291a659f9821817a666dd742b864efca2c6f6c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualBumpTwoTailBudgetNative01/Variante6c2dbb1a6a614e5ff3d1f202b291a659f9821817a666dd742b864efca2c6f6c.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54e3d7439a99dac4e7d3551a621a1cdcea4ec64f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
