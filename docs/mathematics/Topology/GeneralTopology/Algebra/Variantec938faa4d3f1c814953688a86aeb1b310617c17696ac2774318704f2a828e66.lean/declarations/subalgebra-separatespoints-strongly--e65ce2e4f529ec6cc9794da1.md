# Subalgebra.SeparatesPoints.strongly

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ff3d01f255b2b565cb660cba3b140618c2d1d1c6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 758,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ec/ec938faa4d3f1c814953688a86aeb1b310617c17696ac2774318704f2a828e66.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d4a9814c-679e-3617-bfe9-6f6f6ce79c02",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9ac4e41e-98b8-0ee2-9bc2-0a8349981af1",
  "kind": "theorem",
  "lexical_name": "Subalgebra.SeparatesPoints.strongly",
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
  "slug": "subalgebra-separatespoints-strongly--e65ce2e4f529ec6cc9794da1",
  "source": {
    "blob": "ff3d01f255b2b565cb660cba3b140618c2d1d1c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 774,
    "line": 758,
    "path": "GRWTSK/Topology/GeneralTopology/Algebra/Variantec938faa4d3f1c814953688a86aeb1b310617c17696ac2774318704f2a828e66.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e65ce2e4f529ec6cc9794da1360accdf63f7935e43965bd69e16ae74092b3b06",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Algebra/Variantec938faa4d3f1c814953688a86aeb1b310617c17696ac2774318704f2a828e66.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ac4e41e-98b8-0ee2-9bc2-0a8349981af1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 758–774.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Subalgebra.SeparatesPoints.strongly {s : Subalgebra 𝕜 C(α, 𝕜)} (h : s.SeparatesPoints) :
    (s : Set C(α, 𝕜)).SeparatesPointsStrongly := fun v x y => by
  by_cases n : x = y
  · subst n
    exact ⟨_, (v x • (1 : s) : s).prop, mul_one _, mul_one _⟩
  obtain ⟨_, ⟨f, hf, rfl⟩, hxy⟩ := h n
  replace hxy : f x - f y ≠ 0 := sub_ne_zero_of_ne hxy
  let a := v x
  let b := v y
  let f' : s :=
    ((b - a) * (f x - f y)⁻¹) • (algebraMap _ s (f x) - (⟨f, hf⟩ : s)) + algebraMap _ s a
  refine ⟨f', f'.prop, ?_, ?_⟩
  · simp [a, b, f']
  · simp [a, b, f', inv_mul_cancel_right₀ hxy]

end ContinuousMap

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Algebra/Variantec938faa4d3f1c814953688a86aeb1b310617c17696ac2774318704f2a828e66.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Algebra/Variantec938faa4d3f1c814953688a86aeb1b310617c17696ac2774318704f2a828e66.lean#L758).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff3d01f255b2b565cb660cba3b140618c2d1d1c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
