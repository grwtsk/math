# value_sq_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ffd510a1dcaaf44453e63ea2cee7fff47a77de08",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 197,
      "path": "GRWTSK/Analysis/Operator/HolomorphicMultiplierCircle.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:94d0f9f2-5573-c572-97eb-3beefe3c8a89",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0e04fd5a-5a24-2c09-aa64-49f92e44f8ce",
  "kind": "theorem",
  "lexical_name": "value_sq_bound",
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
  "slug": "value-sq-bound--c3c2ec498cce1b36169e9fc3",
  "source": {
    "blob": "ffd510a1dcaaf44453e63ea2cee7fff47a77de08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 214,
    "line": 197,
    "path": "GRWTSK/Analysis/Operator/HolomorphicMultiplierCircle.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c3c2ec498cce1b36169e9fc3e4fc54b01d8ff51b24db4b2fb2d042c9f0d4c02c",
  "verification": {
    "reference": "docs/verification/Analysis/OperatorTheory/HolomorphicMultiplierCircle.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e04fd5a-5a24-2c09-aa64-49f92e44f8ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–214.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem value_sq_bound (q : SectionQuotient (MetricWeights.identity D) W.measure hOpen) :
    ‖W.value hOpen q‖ ^ 2 ≤ ‖q‖ ^ 2 := by
  refine Quotient.inductionOn q ?_
  intro s
  have hi := realSquare_integrable (MetricWeights.identity D) W.measure hOpen s
  have hb : ∀ᵐ x ∂W.measure, ‖s.1.value x * s.1.value x‖ ≤
      realSquare (MetricWeights.identity D) hOpen s.1 x :=
    Eventually.of_forall (fun x => (square_norm_eq_realSquare hOpen s.1 x).le)
  have h := norm_integral_le_of_norm_le hi hb
  rw [W.section_square_mean hOpen s.1, norm_mul, ← pow_two] at h
  have he : (∫ x, realSquare (MetricWeights.identity D) hOpen s.1 x ∂W.measure) =
      (energy (MetricWeights.identity D) W.measure hOpen s.1).toReal :=
    integral_eq_lintegral_of_nonneg_ae
      (Eventually.of_forall (realSquare_nonneg (MetricWeights.identity D) hOpen s.1))
      hi.aestronglyMeasurable
  rw [he] at h
  simpa only [value_classOf, norm_sq_eq_energy, quotientEnergy_classOf] using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/OperatorTheory/HolomorphicMultiplierCircle.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Operator/HolomorphicMultiplierCircle.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ffd510a1dcaaf44453e63ea2cee7fff47a77de08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
