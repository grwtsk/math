# mdifferentiableAt_atlas_symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fd0e0c104bb73b2f984f81b29685f5dc58478007",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 111,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f6f0fdb04f6ec1b934f1e1d85ba828738fe1a27ba9df531601381f993af53a52.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4e15a2bd-5876-d910-fb12-a9179231e6e9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c236c062-f1cb-84d1-f474-65c99f1d0ae9",
  "kind": "theorem",
  "lexical_name": "mdifferentiableAt_atlas_symm",
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
  "slug": "mdifferentiableat-atlas-symm--cdb9d8b924dde3ffa68d80d0",
  "source": {
    "blob": "fd0e0c104bb73b2f984f81b29685f5dc58478007",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 111,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Atlas/Variantf6f0fdb04f6ec1b934f1e1d85ba828738fe1a27ba9df531601381f993af53a52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cdb9d8b924dde3ffa68d80d0eee512d2737a3f7774aef9f91fef13f55e7debb7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Atlas/Variantf6f0fdb04f6ec1b934f1e1d85ba828738fe1a27ba9df531601381f993af53a52.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c236c062-f1cb-84d1-f474-65c99f1d0ae9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mdifferentiableAt_atlas_symm (h : e ∈ atlas H M) {x : H} (hx : x ∈ e.target) :
    MDifferentiableAt I I e.symm x := by
  rw [mdifferentiableAt_iff]
  refine ⟨(e.continuousOn_symm x hx).continuousAt (e.open_target.mem_nhds hx), ?_⟩
  have mem : I x ∈ I.symm ⁻¹' (e.symm ≫ₕ chartAt H (e.symm x)).source ∩ range I := by
    simp only [hx, mfld_simps]
  have : e.symm.trans (chartAt H (e.symm x)) ∈ contDiffGroupoid 1 I :=
    HasGroupoid.compatible h (chart_mem_atlas H _)
  have A :
    ContDiffOn 𝕜 1 (I ∘ e.symm.trans (chartAt H (e.symm x)) ∘ I.symm)
      (I.symm ⁻¹' (e.symm.trans (chartAt H (e.symm x))).source ∩ range I) :=
    this.1
  have B := A.differentiableOn le_rfl (I x) mem
  simp only [mfld_simps] at B
  rw [inter_comm, differentiableWithinAt_inter] at B
  · simpa only [mfld_simps]
  · apply IsOpen.mem_nhds ((PartialHomeomorph.open_source _).preimage I.continuous_symm) mem.1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Atlas/Variantf6f0fdb04f6ec1b934f1e1d85ba828738fe1a27ba9df531601381f993af53a52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Atlas/Variantf6f0fdb04f6ec1b934f1e1d85ba828738fe1a27ba9df531601381f993af53a52.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd0e0c104bb73b2f984f81b29685f5dc58478007` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
