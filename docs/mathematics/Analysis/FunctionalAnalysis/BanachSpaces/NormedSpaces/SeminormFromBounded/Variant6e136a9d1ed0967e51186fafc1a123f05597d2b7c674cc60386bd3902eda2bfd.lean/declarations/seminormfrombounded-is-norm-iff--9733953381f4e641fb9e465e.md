# seminormFromBounded_is_norm_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "45cbcf0bc7591a3d82767fe4c06fb85b814b6d90",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 348,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6e/6e136a9d1ed0967e51186fafc1a123f05597d2b7c674cc60386bd3902eda2bfd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c28261b3-d623-a84c-f9ed-38f930fbaf8b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:858f933e-441b-af1c-3abb-d4e8b078c40e",
  "kind": "theorem",
  "lexical_name": "seminormFromBounded_is_norm_iff",
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
  "slug": "seminormfrombounded-is-norm-iff--9733953381f4e641fb9e465e",
  "source": {
    "blob": "45cbcf0bc7591a3d82767fe4c06fb85b814b6d90",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 364,
    "line": 348,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromBounded/Variant6e136a9d1ed0967e51186fafc1a123f05597d2b7c674cc60386bd3902eda2bfd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9733953381f4e641fb9e465e015a93f6b734d2fd94d33303a2a90d8c4ba5b22a",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromBounded/Variant6e136a9d1ed0967e51186fafc1a123f05597d2b7c674cc60386bd3902eda2bfd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:858f933e-441b-af1c-3abb-d4e8b078c40e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 348–364.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem seminormFromBounded_is_norm_iff (f_zero : f 0 = 0) (f_nonneg : 0 ≤ f)
    (f_mul : ∀ x y : R, f (x * y) ≤ c * f x * f y)
    (f_add : ∀ a b, f (a + b) ≤ f a + f b) (f_neg : ∀ x : R, f (-x) = f x) :
    (∀ x : R, (seminormFromBounded f_zero f_nonneg f_mul f_add f_neg).toFun x = 0 → x = 0) ↔
      f ⁻¹' {0} = {0} := by
  refine ⟨fun h0 ↦ ?_, fun h_ker x hx ↦ ?_⟩
  · rw [← seminormFromBounded_ker f_nonneg f_mul]
    ext x
    simp only [Set.mem_preimage, Set.mem_singleton_iff]
    exact ⟨fun h ↦ h0 x h, fun h ↦ by rw [h]; exact seminormFromBounded_zero f_zero⟩
  · rw [← Set.mem_singleton_iff, ← h_ker, Set.mem_preimage, Set.mem_singleton_iff,
      ← seminormFromBounded_eq_zero_iff f_nonneg f_mul x]
    exact hx

/-- `seminormFromBounded' f` as a `RingNorm` on `R`, provided that `f` is nonnegative,
  multiplicatively bounded and subadditive, that it preserves `0` and negation, and that `f` has
  trivial kernel. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromBounded/Variant6e136a9d1ed0967e51186fafc1a123f05597d2b7c674cc60386bd3902eda2bfd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SeminormFromBounded/Variant6e136a9d1ed0967e51186fafc1a123f05597d2b7c674cc60386bd3902eda2bfd.lean#L348).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `45cbcf0bc7591a3d82767fe4c06fb85b814b6d90` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
