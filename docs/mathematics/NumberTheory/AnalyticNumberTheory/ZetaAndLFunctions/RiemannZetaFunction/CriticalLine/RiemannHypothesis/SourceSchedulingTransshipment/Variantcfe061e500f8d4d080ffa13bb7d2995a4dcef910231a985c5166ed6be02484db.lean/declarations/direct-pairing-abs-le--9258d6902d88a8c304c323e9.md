# direct_pairing_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:06386d4a-9862-7a44-2fd5-7219bb4e2464",
  "kind": "theorem",
  "lexical_name": "direct_pairing_abs_le",
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
  "slug": "direct-pairing-abs-le--9258d6902d88a8c304c323e9",
  "source": {
    "blob": "62f9b852950550aaccee4e136d58685edcbffec8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 114,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingTransshipment/Variantcfe061e500f8d4d080ffa13bb7d2995a4dcef910231a985c5166ed6be02484db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9258d6902d88a8c304c323e93ff648ea9717ef0bf79828adff9287d7f8fa266f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingTransshipment/Variantcfe061e500f8d4d080ffa13bb7d2995a4dcef910231a985c5166ed6be02484db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:06386d4a-9862-7a44-2fd5-7219bb4e2464`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem direct_pairing_abs_le (f g : ℝ → ℝ) (L : ℝ)
    (ht : ∀ x y, |f x - f y - (x - y) * g y| ≤ L * (x - y) ^ 2 / 2) :
    |readout twoC twoB twoD f g| ≤ L * 2 := by
  have hidentity : readout twoC twoB twoD f g = -(f 2 - f 0 - 2 * g 0) := by
    norm_num [readout, twoC, twoB, twoD, Fin.sum_univ_two]
    ring
  rw [hidentity, abs_neg]
  have hnum : L * (2 : ℝ) ^ 2 / 2 = L * 2 := by ring
  simpa only [sub_zero, hnum] using ht 2 0

end FormalResearch.RiemannHypothesis.SourceSchedulingTransshipment
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingTransshipment/Variantcfe061e500f8d4d080ffa13bb7d2995a4dcef910231a985c5166ed6be02484db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceSchedulingTransshipment/Variantcfe061e500f8d4d080ffa13bb7d2995a4dcef910231a985c5166ed6be02484db.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62f9b852950550aaccee4e136d58685edcbffec8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
