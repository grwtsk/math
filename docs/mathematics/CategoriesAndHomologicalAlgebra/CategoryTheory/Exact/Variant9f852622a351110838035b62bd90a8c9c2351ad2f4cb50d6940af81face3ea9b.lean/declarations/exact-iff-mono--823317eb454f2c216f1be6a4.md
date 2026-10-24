# exact_iff_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eabad19c-65ab-0384-d6b1-a70de4014785",
  "kind": "lemma",
  "lexical_name": "exact_iff_mono",
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
  "slug": "exact-iff-mono--823317eb454f2c216f1be6a4",
  "source": {
    "blob": "957ac1a8f210a77a7f6a4cfda55f0c8ad76be0fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 289,
    "line": 274,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant9f852622a351110838035b62bd90a8c9c2351ad2f4cb50d6940af81face3ea9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:823317eb454f2c216f1be6a45fba39377680d5b4d3c4b6c3018811ca6a69175e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant9f852622a351110838035b62bd90a8c9c2351ad2f4cb50d6940af81face3ea9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eabad19c-65ab-0384-d6b1-a70de4014785`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 274–289.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exact_iff_mono [HasZeroObject C] (hf : S.f = 0) :
    S.Exact ↔ Mono S.g := by
  constructor
  · intro h
    have := h.hasHomology
    simp only [exact_iff_isZero_homology] at h
    have := S.isIso_pOpcycles hf
    have := mono_of_isZero_kernel' _ S.homologyIsKernel h
    rw [← S.p_fromOpcycles]
    apply mono_comp
  · intro
    rw [(HomologyData.ofIsLimitKernelFork S hf _
      (KernelFork.IsLimit.ofMonoOfIsZero (KernelFork.ofι (0 : 0 ⟶ S.X₂) zero_comp)
        inferInstance (isZero_zero C))).exact_iff]
    exact isZero_zero C

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant9f852622a351110838035b62bd90a8c9c2351ad2f4cb50d6940af81face3ea9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Exact/Variant9f852622a351110838035b62bd90a8c9c2351ad2f4cb50d6940af81face3ea9b.lean#L274).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `957ac1a8f210a77a7f6a4cfda55f0c8ad76be0fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
