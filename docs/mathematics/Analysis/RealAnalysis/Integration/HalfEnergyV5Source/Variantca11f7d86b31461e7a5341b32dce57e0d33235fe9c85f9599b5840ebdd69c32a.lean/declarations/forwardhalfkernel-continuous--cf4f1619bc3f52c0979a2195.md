# forwardHalfKernel_continuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2149132f-4eb5-c9f9-772e-56d247595500",
  "kind": "theorem",
  "lexical_name": "forwardHalfKernel_continuous",
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
  "slug": "forwardhalfkernel-continuous--cf4f1619bc3f52c0979a2195",
  "source": {
    "blob": "76cc077c1d2ecda3c7f53debe98c364daa8304ea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 31,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/HalfEnergyV5Source/Variantca11f7d86b31461e7a5341b32dce57e0d33235fe9c85f9599b5840ebdd69c32a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cf4f1619bc3f52c0979a21950c94b9137ffa8581a3834a307e85f51663cc3656",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/HalfEnergyV5Source/Variantca11f7d86b31461e7a5341b32dce57e0d33235fe9c85f9599b5840ebdd69c32a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2149132f-4eb5-c9f9-772e-56d247595500`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem forwardHalfKernel_continuous {A : ℝ} (hA : 0 < A) :
    Continuous (forwardHalfKernel A) := by
  unfold forwardHalfKernel
  have hc := (normalizedTest_contDiff A hA).continuous
  exact ((Real.continuous_exp.comp (continuous_fst.neg.div_const 2)).mul
    (hc.comp continuous_snd)).mul (hc.comp (continuous_snd.add continuous_fst))

/-- Its compact rectangle follows from both source factors, including the moving seam. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/HalfEnergyV5Source/Variantca11f7d86b31461e7a5341b32dce57e0d33235fe9c85f9599b5840ebdd69c32a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/HalfEnergyV5Source/Variantca11f7d86b31461e7a5341b32dce57e0d33235fe9c85f9599b5840ebdd69c32a.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `76cc077c1d2ecda3c7f53debe98c364daa8304ea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
