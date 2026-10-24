# ae_differentiableAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b6c0ce2f9784001414193108af3a16296416c979",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 84,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bc/bcde0f1f3a65abb34e7abb71cf4592710fa7b0847c039e4298e60591e79bbdac.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7527fe8b-a447-0061-4ad5-02ec6c15df78",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c44ec9f5-c7c8-1f5c-36c4-8c9a8646a029",
  "kind": "theorem",
  "lexical_name": "ae_differentiableAt",
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
  "slug": "ae-differentiableat--7686aaa674e607f48292fb78",
  "source": {
    "blob": "b6c0ce2f9784001414193108af3a16296416c979",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 84,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BoundedVariation/Variantbcde0f1f3a65abb34e7abb71cf4592710fa7b0847c039e4298e60591e79bbdac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7686aaa674e607f48292fb78970f3db30f38a560e6ccc7dfcbbbf9514e57cab1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/BoundedVariation/Variantbcde0f1f3a65abb34e7abb71cf4592710fa7b0847c039e4298e60591e79bbdac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c44ec9f5-c7c8-1f5c-36c4-8c9a8646a029`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ae_differentiableAt {f : ℝ → V} (h : LocallyBoundedVariationOn f univ) :
    ∀ᵐ x, DifferentiableAt ℝ f x := by
  filter_upwards [h.ae_differentiableWithinAt_of_mem] with x hx
  rw [differentiableWithinAt_univ] at hx
  exact hx (mem_univ _)

end LocallyBoundedVariationOn

/-- A real function into a finite dimensional real vector space which is Lipschitz on a set
is differentiable almost everywhere in this set. For the general Rademacher theorem assuming
that the source space is finite dimensional, see `LipschitzOnWith.ae_differentiableWithinAt_of_mem`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/BoundedVariation/Variantbcde0f1f3a65abb34e7abb71cf4592710fa7b0847c039e4298e60591e79bbdac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BoundedVariation/Variantbcde0f1f3a65abb34e7abb71cf4592710fa7b0847c039e4298e60591e79bbdac.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6c0ce2f9784001414193108af3a16296416c979` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
