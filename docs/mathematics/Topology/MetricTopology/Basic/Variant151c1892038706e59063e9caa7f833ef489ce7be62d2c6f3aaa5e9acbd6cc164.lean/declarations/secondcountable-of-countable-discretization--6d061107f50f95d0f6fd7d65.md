# secondCountable_of_countable_discretization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d8d86e49fa9eb22eebfabd940a53e29ddb329509",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 162,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/15/151c1892038706e59063e9caa7f833ef489ce7be62d2c6f3aaa5e9acbd6cc164.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d3eb6632-f7b3-bf42-86f7-2f1616f4cfea",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3fd7b097-5ea5-7cc5-eabc-ebdeab869cba",
  "kind": "theorem",
  "lexical_name": "secondCountable_of_countable_discretization",
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
  "slug": "secondcountable-of-countable-discretization--6d061107f50f95d0f6fd7d65",
  "source": {
    "blob": "d8d86e49fa9eb22eebfabd940a53e29ddb329509",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 162,
    "path": "GRWTSK/Topology/MetricTopology/Basic/Variant151c1892038706e59063e9caa7f833ef489ce7be62d2c6f3aaa5e9acbd6cc164.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6d061107f50f95d0f6fd7d653765eb7920ea7fc82eb1e4896a9acfa571681564",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Basic/Variant151c1892038706e59063e9caa7f833ef489ce7be62d2c6f3aaa5e9acbd6cc164.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3fd7b097-5ea5-7cc5-eabc-ebdeab869cba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem secondCountable_of_countable_discretization {α : Type u} [PseudoMetricSpace α]
    (H : ∀ ε > (0 : ℝ), ∃ (β : Type*) (_ : Encodable β) (F : α → β),
      ∀ x y, F x = F y → dist x y ≤ ε) :
    SecondCountableTopology α := by
  refine secondCountable_of_almost_dense_set fun ε ε0 => ?_
  rcases H ε ε0 with ⟨β, fβ, F, hF⟩
  let Finv := rangeSplitting F
  refine ⟨range Finv, ⟨countable_range _, fun x => ?_⟩⟩
  let x' := Finv ⟨F x, mem_range_self _⟩
  have : F x' = F x := apply_rangeSplitting F _
  exact ⟨x', mem_range_self _, hF _ _ this.symm⟩

end SecondCountable

end Metric

section EqRel

-- TODO: add `dist_congr` similar to `edist_congr`?
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Basic/Variant151c1892038706e59063e9caa7f833ef489ce7be62d2c6f3aaa5e9acbd6cc164.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Basic/Variant151c1892038706e59063e9caa7f833ef489ce7be62d2c6f3aaa5e9acbd6cc164.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8d86e49fa9eb22eebfabd940a53e29ddb329509` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
