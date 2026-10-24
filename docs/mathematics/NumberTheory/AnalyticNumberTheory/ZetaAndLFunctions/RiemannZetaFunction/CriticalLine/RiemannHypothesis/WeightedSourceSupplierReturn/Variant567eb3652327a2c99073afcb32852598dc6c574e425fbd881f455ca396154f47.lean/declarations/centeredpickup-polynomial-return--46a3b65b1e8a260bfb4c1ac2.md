# centeredPickup_polynomial_return

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c8494ff1-0128-89cb-27ed-12ab265e3b57",
  "kind": "theorem",
  "lexical_name": "centeredPickup_polynomial_return",
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
  "slug": "centeredpickup-polynomial-return--46a3b65b1e8a260bfb4c1ac2",
  "source": {
    "blob": "f30c52a03714a620e2529556822140ea1b604437",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 71,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourceSupplierReturn/Variant567eb3652327a2c99073afcb32852598dc6c574e425fbd881f455ca396154f47.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:46a3b65b1e8a260bfb4c1ac2a3781e5ac3ef6aac7e6c2fe6e816bc4cafba1218",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourceSupplierReturn/Variant567eb3652327a2c99073afcb32852598dc6c574e425fbd881f455ca396154f47.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c8494ff1-0128-89cb-27ed-12ab265e3b57`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem centeredPickup_polynomial_return {A t C r : ℝ} (hA : 1 ≤ A)
    (ht : t ∈ readingWindow A) (hC : 0 ≤ C)
    (hX : crossEnergy A t ≤ C * A ^ r) :
    |centeredPickup A t| ≤ returnConstant C * A ^ returnExponent r := by
  rw [centeredPickup_exact hA ht]
  have hd := weightedRecording_uniform_decoder hA t
  have hn := mul_le_mul_of_nonneg_left (sourceNorm_polynomial_return hA ht hC hX) decoder_nonneg
  exact hd.trans (by simpa only [returnConstant, mul_assoc] using hn)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourceSupplierReturn/Variant567eb3652327a2c99073afcb32852598dc6c574e425fbd881f455ca396154f47.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourceSupplierReturn/Variant567eb3652327a2c99073afcb32852598dc6c574e425fbd881f455ca396154f47.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f30c52a03714a620e2529556822140ea1b604437` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
