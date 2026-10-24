# CoerciveKernelCompatibility.injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "af7b40521d0282deb04ca1dd27c465b37cf2dca0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 191,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/aa/aa422d77852d0db42a18c90fce198fef91d2f6a17169eae496866c74621ac5a5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b288486a-a049-75c7-0602-a3c44d58bf97",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f7d9f5af-38a5-bb8e-f0e3-b33e16534eb9",
  "kind": "theorem",
  "lexical_name": "CoerciveKernelCompatibility.injective",
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
  "slug": "coercivekernelcompatibility-injective--4340eecb220dd4cf608732f5",
  "source": {
    "blob": "af7b40521d0282deb04ca1dd27c465b37cf2dca0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 191,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/SemanticRealization/Variantaa422d77852d0db42a18c90fce198fef91d2f6a17169eae496866c74621ac5a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4340eecb220dd4cf608732f5d842500405da8164937123dd55a0902180b63991",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/SemanticRealization/Variantaa422d77852d0db42a18c90fce198fef91d2f6a17169eae496866c74621ac5a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f7d9f5af-38a5-bb8e-f0e3-b33e16534eb9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem CoerciveKernelCompatibility.injective
    {Atom : Type u}
    {data : Concept.QuotientNormData Atom}
    {kernel : Kernel.PositiveKernel Atom}
    (compatibility : CoerciveKernelCompatibility data kernel) :
    Function.Injective
      (banachToHilbert compatibility.toKernelCompatibility) := by
  intro left right mappedEqual
  apply sub_eq_zero.mp
  apply norm_eq_zero.mp
  have mappedDifference :
      banachToHilbert compatibility.toKernelCompatibility
          (left - right) = 0 := by
    rw [map_sub, mappedEqual, sub_self]
  have lowerEstimate :=
    compatibility.lower_bound (left - right)
  have productNonpositive :
      compatibility.lowerConstant * ‖left - right‖ ≤ 0 := by
    simpa [mappedDifference] using lowerEstimate
  have productZero :
      compatibility.lowerConstant * ‖left - right‖ = 0 :=
    le_antisymm productNonpositive
      (mul_nonneg
        (le_of_lt compatibility.lowerConstant_positive)
        (norm_nonneg (left - right)))
  exact
    (mul_eq_zero.mp productZero).resolve_left
      (ne_of_gt compatibility.lowerConstant_positive)

end Mathematics.Hilbert
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/SemanticRealization/Variantaa422d77852d0db42a18c90fce198fef91d2f6a17169eae496866c74621ac5a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/SemanticRealization/Variantaa422d77852d0db42a18c90fce198fef91d2f6a17169eae496866c74621ac5a5.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af7b40521d0282deb04ca1dd27c465b37cf2dca0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
