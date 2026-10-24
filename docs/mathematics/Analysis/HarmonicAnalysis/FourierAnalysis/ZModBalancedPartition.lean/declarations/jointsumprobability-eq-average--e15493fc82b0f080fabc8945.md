# jointSumProbability_eq_average

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6ec6404e-b4de-4a2d-a4d1-4ac683a2cf8b",
  "kind": "theorem",
  "lexical_name": "jointSumProbability_eq_average",
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
  "slug": "jointsumprobability-eq-average--e15493fc82b0f080fabc8945",
  "source": {
    "blob": "674dfd64142382e83d5ca6e3e9725a1ec8dbd5a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 80,
    "path": "GRWTSK/Analysis/Fourier/ZModBalancedPartition.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e15493fc82b0f080fabc894547da9c6243091cafa7cc6615d8e27bc0decbac93",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModBalancedPartition.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ec6404e-b4de-4a2d-a4d1-4ac683a2cf8b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem jointSumProbability_eq_average (sizes : Fin m → ℕ)
    (label : A → ZMod p) (z : ZMod p) :
    jointSumProbability sizes label z =
      (Fintype.card (Partition (A := A) sizes) : ℝ)⁻¹ *
        ∑ P : Partition (A := A) sizes,
          valueProbability (selectionSum (fun i (x : {a // P.val a = i}) => label x.val)) z := by
  classical
  have h := jointProbability_eq_partition_average sizes
    (fun s : Sample (A := A) sizes => ∑ i, label (s.val.2 i) = z)
  have hr := congrArg (fun q : ℚ => (q : ℝ)) h
  push_cast at hr
  unfold jointSumProbability
  rw [hr, div_eq_inv_mul]
  congr 1
  apply Finset.sum_congr rfl
  intro P _
  unfold valueProbability selectionSum
  rw [Fintype.card_subtype, selection_card]
  push_cast
  congr 2

omit [NeZero p] in
/-- Uniform fixed-size sum law, obtained from the proved uniform output law. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModBalancedPartition.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/ZModBalancedPartition.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `674dfd64142382e83d5ca6e3e9725a1ec8dbd5a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
