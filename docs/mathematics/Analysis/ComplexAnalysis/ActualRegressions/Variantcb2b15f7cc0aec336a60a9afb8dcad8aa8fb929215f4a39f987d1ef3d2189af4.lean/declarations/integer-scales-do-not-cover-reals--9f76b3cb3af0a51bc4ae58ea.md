# integer_scales_do_not_cover_reals

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3bc74c99-b137-e1ef-a9d5-17411f2c48b2",
  "kind": "theorem",
  "lexical_name": "integer_scales_do_not_cover_reals",
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
  "slug": "integer-scales-do-not-cover-reals--9f76b3cb3af0a51bc4ae58ea",
  "source": {
    "blob": "cc340daaa63a3ff0f6e8490ebbcafc4e40e39c75",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 69,
    "path": "GRWTSK/Analysis/ComplexAnalysis/ActualRegressions/Variantcb2b15f7cc0aec336a60a9afb8dcad8aa8fb929215f4a39f987d1ef3d2189af4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9f76b3cb3af0a51bc4ae58eac9192f18ade02d8cef3227c1383c529d8f3b9a3d",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/ActualRegressions/Variantcb2b15f7cc0aec336a60a9afb8dcad8aa8fb929215f4a39f987d1ef3d2189af4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3bc74c99-b137-e1ef-a9d5-17411f2c48b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integer_scales_do_not_cover_reals :
    (∀ n : ℕ, (⌊(n : ℝ)⌋₊ : ℝ) = n) ∧
      ¬ (∀ A : ℝ, 1 ≤ A → (⌊A⌋₊ : ℝ) = A) := by
  constructor
  · intro n
    rw [Nat.floor_natCast]
  · intro h
    have hf : ⌊(3 / 2 : ℝ)⌋₊ = 1 :=
      (Nat.floor_eq_iff (by norm_num)).mpr ⟨by norm_num, by norm_num⟩
    have hz := h (3 / 2) (by norm_num)
    rw [hf] at hz
    norm_num at hz

end InnerAbel.ActualRegressions
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/ActualRegressions/Variantcb2b15f7cc0aec336a60a9afb8dcad8aa8fb929215f4a39f987d1ef3d2189af4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/ActualRegressions/Variantcb2b15f7cc0aec336a60a9afb8dcad8aa8fb929215f4a39f987d1ef3d2189af4.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc340daaa63a3ff0f6e8490ebbcafc4e40e39c75` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
