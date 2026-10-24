# Basis.ofZLatticeBasis_repr_apply

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
      "line": 623,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cf/cf4957b95702c59b60a4df89bc714eb28d320f124ad53ff645e0e2e8fa3da1e0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ce3a7ab9-d832-bbcd-f995-5cb8e24a91ed",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0d795582-3fa9-4d86-e03b-3a75d6cb0098",
  "kind": "theorem",
  "lexical_name": "Basis.ofZLatticeBasis_repr_apply",
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
  "slug": "basis-ofzlatticebasis-repr-apply--891d3ad007236b3392eaa0e1",
  "source": {
    "blob": "41ff06a60fc284974a394c63423af82e7deb545b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 632,
    "line": 623,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantcf4957b95702c59b60a4df89bc714eb28d320f124ad53ff645e0e2e8fa3da1e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:891d3ad007236b3392eaa0e1406b22201da2ab60040e8af46e20a06c437e77bc",
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

Occurrence: `result:0d795582-3fa9-4d86-e03b-3a75d6cb0098`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 623–632.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Basis.ofZLatticeBasis_repr_apply (x : L) (i : ι) :
    (b.ofZLatticeBasis K L).repr x i = b.repr x i := by
  suffices ((b.ofZLatticeBasis K L).repr.toLinearMap.restrictScalars ℤ) ∘ₗ L.subtype
      = Finsupp.mapRange.linearMap (Algebra.linearMap ℤ K) ∘ₗ b.repr.toLinearMap by
    exact DFunLike.congr_fun (LinearMap.congr_fun this x) i
  refine Basis.ext b fun i ↦ ?_
  simp_rw [LinearMap.coe_comp, Function.comp_apply, LinearMap.coe_restrictScalars,
    LinearEquiv.coe_coe, coe_subtype, ← b.ofZLatticeBasis_apply K, repr_self,
    Finsupp.mapRange.linearMap_apply, Finsupp.mapRange_single, Algebra.linearMap_apply, map_one]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantcf4957b95702c59b60a4df89bc714eb28d320f124ad53ff645e0e2e8fa3da1e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantcf4957b95702c59b60a4df89bc714eb28d320f124ad53ff645e0e2e8fa3da1e0.lean#L623).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41ff06a60fc284974a394c63423af82e7deb545b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
