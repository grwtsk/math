# integral_le_measure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a321c269cae05328919f28c3863537392d5a74fb",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 733,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8e/8e3ca700c6df44d9bf0ca2078737b05ef751221f6de2f077bfae63d8592904fc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b4e2b422-d36b-8a14-ad7a-479bd28673dd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ca12080f-4b63-b0a8-81ab-947a0b369a90",
  "kind": "lemma",
  "lexical_name": "integral_le_measure",
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
  "slug": "integral-le-measure--536910829e3b8bb54672ab0a",
  "source": {
    "blob": "a321c269cae05328919f28c3863537392d5a74fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 760,
    "line": 733,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Set/Variant8e3ca700c6df44d9bf0ca2078737b05ef751221f6de2f077bfae63d8592904fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:536910829e3b8bb54672ab0af85d84f2a39df4b0f47f2931934987f36fa48449",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Set/Variant8e3ca700c6df44d9bf0ca2078737b05ef751221f6de2f077bfae63d8592904fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca12080f-4b63-b0a8-81ab-947a0b369a90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 733–760.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integral_le_measure {f : X → ℝ} {s : Set X}
    (hs : ∀ x ∈ s, f x ≤ 1) (h's : ∀ x ∈ sᶜ, f x ≤ 0) :
    ENNReal.ofReal (∫ x, f x ∂μ) ≤ μ s := by
  by_cases H : Integrable f μ; swap
  · simp [integral_undef H]
  let g x := max (f x) 0
  have g_int : Integrable g μ := H.pos_part
  have : ENNReal.ofReal (∫ x, f x ∂μ) ≤ ENNReal.ofReal (∫ x, g x ∂μ) := by
    apply ENNReal.ofReal_le_ofReal
    exact integral_mono H g_int (fun x ↦ le_max_left _ _)
  apply this.trans
  rw [ofReal_integral_eq_lintegral_ofReal g_int (Eventually.of_forall (fun x ↦ le_max_right _ _))]
  apply lintegral_le_meas
  · intro x
    apply ENNReal.ofReal_le_of_le_toReal
    by_cases H : x ∈ s
    · simpa [g] using hs x H
    · apply le_trans _ zero_le_one
      simpa [g] using h's x H
  · intro x hx
    simpa [g] using h's x hx

end Nonneg

section IntegrableUnion

variable {ι : Type*} [Countable ι] {μ : Measure X} [NormedAddCommGroup E]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Set/Variant8e3ca700c6df44d9bf0ca2078737b05ef751221f6de2f077bfae63d8592904fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Set/Variant8e3ca700c6df44d9bf0ca2078737b05ef751221f6de2f077bfae63d8592904fc.lean#L733).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a321c269cae05328919f28c3863537392d5a74fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
