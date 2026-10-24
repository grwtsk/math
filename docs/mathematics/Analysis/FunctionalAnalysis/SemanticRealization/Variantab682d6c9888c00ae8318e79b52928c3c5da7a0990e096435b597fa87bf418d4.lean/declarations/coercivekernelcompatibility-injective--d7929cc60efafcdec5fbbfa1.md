# CoerciveKernelCompatibility.injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:53cd7a1e-0600-77eb-e0d4-8e1fee3e343b",
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
  "slug": "coercivekernelcompatibility-injective--d7929cc60efafcdec5fbbfa1",
  "source": {
    "blob": "4384d3cd3a595c59c5f987a8b24fc22559a4f69f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 199,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/SemanticRealization/Variantab682d6c9888c00ae8318e79b52928c3c5da7a0990e096435b597fa87bf418d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7929cc60efafcdec5fbbfa1b07c93dce97219e3c80076135658cdc4558d5dba",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/SemanticRealization/Variantab682d6c9888c00ae8318e79b52928c3c5da7a0990e096435b597fa87bf418d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:53cd7a1e-0600-77eb-e0d4-8e1fee3e343b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–228.

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

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/SemanticRealization/Variantab682d6c9888c00ae8318e79b52928c3c5da7a0990e096435b597fa87bf418d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/SemanticRealization/Variantab682d6c9888c00ae8318e79b52928c3c5da7a0990e096435b597fa87bf418d4.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4384d3cd3a595c59c5f987a8b24fc22559a4f69f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
