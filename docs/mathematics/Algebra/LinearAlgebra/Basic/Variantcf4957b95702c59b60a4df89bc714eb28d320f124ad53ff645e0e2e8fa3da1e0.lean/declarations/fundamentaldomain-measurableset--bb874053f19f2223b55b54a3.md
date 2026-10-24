# fundamentalDomain_measurableSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "41ff06a60fc284974a394c63423af82e7deb545b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 332,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cf/cf4957b95702c59b60a4df89bc714eb28d320f124ad53ff645e0e2e8fa3da1e0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0a694dc5-ae46-e791-e9ba-18e5bfdcd2da",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7265d6c9-b035-682c-b1f1-3eec4a2c6222",
  "kind": "theorem",
  "lexical_name": "fundamentalDomain_measurableSet",
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
  "slug": "fundamentaldomain-measurableset--bb874053f19f2223b55b54a3",
  "source": {
    "blob": "41ff06a60fc284974a394c63423af82e7deb545b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 345,
    "line": 332,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantcf4957b95702c59b60a4df89bc714eb28d320f124ad53ff645e0e2e8fa3da1e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb874053f19f2223b55b54a33b2b5ea50f7e6e6a368a2ac1c443615905553beb",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantcf4957b95702c59b60a4df89bc714eb28d320f124ad53ff645e0e2e8fa3da1e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7265d6c9-b035-682c-b1f1-3eec4a2c6222`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 332–345.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fundamentalDomain_measurableSet [MeasurableSpace E] [OpensMeasurableSpace E] [Finite ι] :
    MeasurableSet (fundamentalDomain b) := by
  cases nonempty_fintype ι
  haveI : FiniteDimensional ℝ E := FiniteDimensional.of_fintype_basis b
  let D : Set (ι → ℝ) := Set.pi Set.univ fun _ : ι => Set.Ico (0 : ℝ) 1
  rw [(_ : fundamentalDomain b = b.equivFun.toLinearMap ⁻¹' D)]
  · refine measurableSet_preimage (LinearMap.continuous_of_finiteDimensional _).measurable ?_
    exact MeasurableSet.pi Set.countable_univ fun _ _ => measurableSet_Ico
  · ext
    simp only [D, fundamentalDomain, Set.mem_Ico, Set.mem_setOf_eq, LinearEquiv.coe_coe,
      Set.mem_preimage, Basis.equivFun_apply, Set.mem_pi, Set.mem_univ, forall_true_left]

/-- For a ℤ-lattice `Submodule.span ℤ (Set.range b)`, proves that the set defined
by `ZSpan.fundamentalDomain` is a fundamental domain. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantcf4957b95702c59b60a4df89bc714eb28d320f124ad53ff645e0e2e8fa3da1e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantcf4957b95702c59b60a4df89bc714eb28d320f124ad53ff645e0e2e8fa3da1e0.lean#L332).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41ff06a60fc284974a394c63423af82e7deb545b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
