# ωSup_iterate_mem_fixedPoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:68de7122-1867-b2e7-7cca-a7447bd81f66",
  "kind": "theorem",
  "lexical_name": "ωSup_iterate_mem_fixedPoint",
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
  "slug": "sup-iterate-mem-fixedpoint--ebac0daa9f240c5511ce586b",
  "source": {
    "blob": "51705aa6cd242dc0035dc77dc1da86f500d38843",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 821,
    "line": 798,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OmegaCompletePartialOrder/Variant925eb481de1f760cee59cf6dc04604bcfb5b2ffd2acb89def393b7d58cd8c83f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ebac0daa9f240c5511ce586be25e79dd6e66d9711383f816980838ba8cc7678a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OmegaCompletePartialOrder/Variant925eb481de1f760cee59cf6dc04604bcfb5b2ffd2acb89def393b7d58cd8c83f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:68de7122-1867-b2e7-7cca-a7447bd81f66`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 798–821.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ωSup_iterate_mem_fixedPoint (h : x ≤ f x) :
    ωSup (iterateChain f x h) ∈ fixedPoints f := by
  rw [mem_fixedPoints, IsFixedPt, f.continuous]
  apply le_antisymm
  · apply ωSup_le
    intro n
    simp only [Chain.map_coe, OrderHomClass.coe_coe, comp_apply]
    have : iterateChain f x h (n.succ) = f (iterateChain f x h n) :=
      Function.iterate_succ_apply' ..
    rw [← this]
    apply le_ωSup
  · apply ωSup_le
    rintro (_ | n)
    · apply le_trans h
      change ((iterateChain f x h).map f) 0 ≤ ωSup ((iterateChain f x h).map (f : α →o α))
      apply le_ωSup
    · have : iterateChain f x h (n.succ) = (iterateChain f x h).map f n :=
        Function.iterate_succ_apply' ..
      rw [this]
      apply le_ωSup

/-- The supremum of iterating a function on x arbitrary often is smaller than any prefixed point.

A prefixed point is a value `a` with `f a ≤ a`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OmegaCompletePartialOrder/Variant925eb481de1f760cee59cf6dc04604bcfb5b2ffd2acb89def393b7d58cd8c83f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OmegaCompletePartialOrder/Variant925eb481de1f760cee59cf6dc04604bcfb5b2ffd2acb89def393b7d58cd8c83f.lean#L798).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51705aa6cd242dc0035dc77dc1da86f500d38843` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
