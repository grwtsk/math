# map_implicitFunction_nhdsWithin_preimage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "252a095742f47e591d30e84391829627937c5eae",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 261,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d5f2bcfcb1dc40ea47a54e2369f672a8e23d1fbec92e0849160e54f8c1949e1a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3f16730f-0dcd-722c-516b-f1081a3e3025",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b7b74830-7f5b-52e8-c8ab-dfcc70f2c40c",
  "kind": "theorem",
  "lexical_name": "map_implicitFunction_nhdsWithin_preimage",
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
  "slug": "map-implicitfunction-nhdswithin-preimage--59129ab30cc92752b93b3cec",
  "source": {
    "blob": "252a095742f47e591d30e84391829627937c5eae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 283,
    "line": 261,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Implicit/Variantd5f2bcfcb1dc40ea47a54e2369f672a8e23d1fbec92e0849160e54f8c1949e1a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:59129ab30cc92752b93b3cec152edbb38a6542ac43cd2adbf6d886e7ade34be0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Implicit/Variantd5f2bcfcb1dc40ea47a54e2369f672a8e23d1fbec92e0849160e54f8c1949e1a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b7b74830-7f5b-52e8-c8ab-dfcc70f2c40c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 261–283.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_implicitFunction_nhdsWithin_preimage (φ : ImplicitFunctionData 𝕜 E F G)
    (s : Set E) :
    (𝓝[φ.implicitFunction (φ.leftFun φ.pt) ⁻¹' s] (φ.rightFun φ.pt)).map
      (φ.implicitFunction (φ.leftFun φ.pt)) = 𝓝[s ∩ φ.leftFun ⁻¹' {φ.leftFun φ.pt}] φ.pt := by
  have H : φ.implicitFunction (φ.leftFun φ.pt) =
      φ.toOpenPartialHomeomorph.symm ∘ (φ.leftFun φ.pt, ·) := rfl
  rw [H, ← Filter.map_map, (isInducing_prodMkRight _).map_nhdsWithin_eq, ← Set.singleton_prod,
    OpenPartialHomeomorph.map_nhdsWithin_eq, ← prodFun_apply, ← toOpenPartialHomeomorph_coe,
    φ.toOpenPartialHomeomorph.leftInvOn φ.pt_mem_toOpenPartialHomeomorph_source,
    OpenPartialHomeomorph.image_source_inter_eq']
  · conv_rhs =>
      rw [← φ.toOpenPartialHomeomorph.nhdsWithin_source_inter
        φ.pt_mem_toOpenPartialHomeomorph_source]
    congr 1
    ext x
    suffices x ∈ φ.toOpenPartialHomeomorph.source → φ.leftFun x = φ.leftFun φ.pt →
        (φ.toOpenPartialHomeomorph.symm (φ.leftFun φ.pt, φ.rightFun x) ∈ s ↔ x ∈ s) by
      simpa [@and_comm (_ = _)]
    intro hxs hx_eq
    rw [← hx_eq, ← prodFun_apply, ← toOpenPartialHomeomorph_coe,
      φ.toOpenPartialHomeomorph.leftInvOn hxs]
  · exact φ.toOpenPartialHomeomorph.mapsTo φ.pt_mem_toOpenPartialHomeomorph_source

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Implicit/Variantd5f2bcfcb1dc40ea47a54e2369f672a8e23d1fbec92e0849160e54f8c1949e1a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Implicit/Variantd5f2bcfcb1dc40ea47a54e2369f672a8e23d1fbec92e0849160e54f8c1949e1a.lean#L261).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `252a095742f47e591d30e84391829627937c5eae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
