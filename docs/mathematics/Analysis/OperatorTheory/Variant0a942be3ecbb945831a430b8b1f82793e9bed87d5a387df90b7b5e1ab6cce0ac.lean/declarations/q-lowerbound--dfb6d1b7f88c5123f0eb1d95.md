# q_lowerBound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:818b8a74-c8bf-d136-e03d-d2f56c45a157",
  "kind": "lemma",
  "lexical_name": "q_lowerBound",
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
  "slug": "q-lowerbound--dfb6d1b7f88c5123f0eb1d95",
  "source": {
    "blob": "e6b304e95c45810276bb67a51f753a570069f3c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 103,
    "path": "GRWTSK/Analysis/Operator/Variant0a942be3ecbb945831a430b8b1f82793e9bed87d5a387df90b7b5e1ab6cce0ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dfb6d1b7f88c5123f0eb1d95c4043a7fc9e3f8dce13134dd1ba5a77e02195072",
  "verification": {
    "reference": "docs/verification/Analysis/OperatorTheory/Variant0a942be3ecbb945831a430b8b1f82793e9bed87d5a387df90b7b5e1ab6cce0ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:818b8a74-c8bf-d136-e03d-d2f56c45a157`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma q_lowerBound :
    ∃ C : ℝ, ∀ u, q P u ≥ C * ‖u‖ ^ 2 := by
  rcases P.boundedBelow with ⟨C₀, hV⟩
  refine ⟨C₀, ?_⟩
  intro u
  have hkin := kineticEnergy_nonneg P u
  have hpoint :
      (fun x : ℝ≥0 ↦ P.V x * ‖u x‖ ^ 2) ≥ᵐ[μ₊]
      (fun x ↦ C₀ * ‖u x‖ ^ 2) := by
    filter_upwards [self_mem_ae_restrict] with x
    have : C₀ ≤ P.V x := hV x
    exact mul_le_mul_of_nonneg_right this (pow_two_nonneg _)
  have hpot : potentialEnergy P u ≥ C₀ * ‖u‖ ^ 2 := by
    have := integral_mono hpoint
    simpa [potentialEnergy] using this
  simpa [q, add_comm] using add_le_add hkin hpot

/-! ## 4.  Closed quadratic form -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/OperatorTheory/Variant0a942be3ecbb945831a430b8b1f82793e9bed87d5a387df90b7b5e1ab6cce0ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Operator/Variant0a942be3ecbb945831a430b8b1f82793e9bed87d5a387df90b7b5e1ab6cce0ac.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6b304e95c45810276bb67a51f753a570069f3c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
