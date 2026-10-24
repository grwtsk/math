# HolderOnWith.dimH_image_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "41228c6eae2545281b44433f8c1e65802e1dd31d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 317,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/76/7605699f3574d09738f31cf913d66dd1a1e98bbd5957338579afca7fcb965d46.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6c7816b9-a656-5d12-d822-45302d552c2e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c3df51e6-2c7e-7357-e196-24728a05c528",
  "kind": "theorem",
  "lexical_name": "HolderOnWith.dimH_image_le",
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
  "slug": "holderonwith-dimh-image-le--00663b273ea0fd6b065c60df",
  "source": {
    "blob": "41228c6eae2545281b44433f8c1e65802e1dd31d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 335,
    "line": 317,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/HausdorffDimension/Variant7605699f3574d09738f31cf913d66dd1a1e98bbd5957338579afca7fcb965d46.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00663b273ea0fd6b065c60df75e66fb1bcea5dd00726efb08a560203ac80401a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/HausdorffDimension/Variant7605699f3574d09738f31cf913d66dd1a1e98bbd5957338579afca7fcb965d46.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c3df51e6-2c7e-7357-e196-24728a05c528`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 317–335.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HolderOnWith.dimH_image_le (h : HolderOnWith C r f s) (hr : 0 < r) :
    dimH (f '' s) ≤ dimH s / r := by
  borelize X Y
  refine dimH_le fun d hd => ?_
  have := h.hausdorffMeasure_image_le hr d.coe_nonneg
  rw [hd, ENNReal.coe_rpow_of_nonneg _ d.coe_nonneg, top_le_iff] at this
  have Hrd : μH[(r * d : ℝ≥0)] s = ⊤ := by
    contrapose this
    exact ENNReal.mul_ne_top ENNReal.coe_ne_top this
  rw [ENNReal.le_div_iff_mul_le, mul_comm, ← ENNReal.coe_mul]
  exacts [le_dimH_of_hausdorffMeasure_eq_top Hrd, Or.inl (mt ENNReal.coe_eq_zero.1 hr.ne'),
    Or.inl ENNReal.coe_ne_top]
set_option linter.uppercaseLean3 false in
#align holder_on_with.dimH_image_le HolderOnWith.dimH_image_le

namespace HolderWith

/-- If `f : X → Y` is Hölder continuous with a positive exponent `r`, then the Hausdorff dimension
of the image of a set `s` is at most `dimH s / r`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/HausdorffDimension/Variant7605699f3574d09738f31cf913d66dd1a1e98bbd5957338579afca7fcb965d46.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/HausdorffDimension/Variant7605699f3574d09738f31cf913d66dd1a1e98bbd5957338579afca7fcb965d46.lean#L317).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41228c6eae2545281b44433f8c1e65802e1dd31d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
