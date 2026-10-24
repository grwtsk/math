# symm_comp_deriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "79e199bd0574779cf65ad0ca6c87251b12a8c06f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1907,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/80/80ac13bbf09a804d982cdff15a1eda62070e3fc5cf918f9613a32371d6f689fb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8cf54f45-c23e-5546-e988-fa99cafb8c57",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4af5f73a-9eef-0bb6-b67f-38c75c7c6474",
  "kind": "theorem",
  "lexical_name": "symm_comp_deriv",
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
  "slug": "symm-comp-deriv--a73e2bc66d43f35f196d9797",
  "source": {
    "blob": "79e199bd0574779cf65ad0ca6c87251b12a8c06f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1919,
    "line": 1907,
    "path": "GRWTSK/Geometry/DifferentialGeometry/MFDeriv/Variant80ac13bbf09a804d982cdff15a1eda62070e3fc5cf918f9613a32371d6f689fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a73e2bc66d43f35f196d9797fef62746f33f509819c0ac618c5467783b0c9d32",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/MFDeriv/Variant80ac13bbf09a804d982cdff15a1eda62070e3fc5cf918f9613a32371d6f689fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4af5f73a-9eef-0bb6-b67f-38c75c7c6474`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1907–1919.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem symm_comp_deriv {x : M} (hx : x ∈ e.source) :
    (mfderiv I' I e.symm (e x)).comp (mfderiv I I' e x) =
      ContinuousLinearMap.id 𝕜 (TangentSpace I x) := by
  have : mfderiv I I (e.symm ∘ e) x = (mfderiv I' I e.symm (e x)).comp (mfderiv I I' e x) :=
    mfderiv_comp x (he.mdifferentiableAt_symm (e.map_source hx)) (he.mdifferentiableAt hx)
  rw [← this]
  have : mfderiv I I (_root_.id : M → M) x = ContinuousLinearMap.id _ _ := mfderiv_id I
  rw [← this]
  apply Filter.EventuallyEq.mfderiv_eq
  have : e.source ∈ 𝓝 x := IsOpen.mem_nhds e.open_source hx
  exact Filter.mem_of_superset this (by mfld_set_tac)
#align local_homeomorph.mdifferentiable.symm_comp_deriv LocalHomeomorph.MDifferentiable.symm_comp_deriv

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/MFDeriv/Variant80ac13bbf09a804d982cdff15a1eda62070e3fc5cf918f9613a32371d6f689fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/MFDeriv/Variant80ac13bbf09a804d982cdff15a1eda62070e3fc5cf918f9613a32371d6f689fb.lean#L1907).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79e199bd0574779cf65ad0ca6c87251b12a8c06f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
