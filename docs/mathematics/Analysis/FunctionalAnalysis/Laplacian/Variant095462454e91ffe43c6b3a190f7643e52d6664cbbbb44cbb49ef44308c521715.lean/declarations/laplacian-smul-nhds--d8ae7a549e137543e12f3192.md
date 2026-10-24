# laplacian_smul_nhds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2f87096fffc39c9283b9881bd1976b4ba3b424cf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 363,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/09/095462454e91ffe43c6b3a190f7643e52d6664cbbbb44cbb49ef44308c521715.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:50845b8d-df1f-46ba-347a-4f11ac0e9325",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c8cef634-fa15-6e2e-5bf5-886af42a883c",
  "kind": "theorem",
  "lexical_name": "laplacian_smul_nhds",
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
  "slug": "laplacian-smul-nhds--d8ae7a549e137543e12f3192",
  "source": {
    "blob": "2f87096fffc39c9283b9881bd1976b4ba3b424cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 375,
    "line": 363,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Laplacian/Variant095462454e91ffe43c6b3a190f7643e52d6664cbbbb44cbb49ef44308c521715.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d8ae7a549e137543e12f319255cc9a636d3850842b66487f9200caf4efd27471",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Laplacian/Variant095462454e91ffe43c6b3a190f7643e52d6664cbbbb44cbb49ef44308c521715.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c8cef634-fa15-6e2e-5bf5-886af42a883c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 363–375.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem laplacian_smul_nhds (v : 𝕜) (h : ContDiffAt ℝ 2 f x) :
    Δ (v • f) =ᶠ[𝓝 x] v • (Δ f) := by
  filter_upwards [h.eventually (by simp)] with a ha
  simp [laplacian_smul v ha]

/-!
## Commutativity of Δ with Linear Operators

This section establishes commutativity with linear operators, showing in particular that `Δ`
commutes with taking real and imaginary parts of complex-valued functions.
-/

/-- The Laplacian commutes with left composition by continuous linear maps. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Laplacian/Variant095462454e91ffe43c6b3a190f7643e52d6664cbbbb44cbb49ef44308c521715.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Laplacian/Variant095462454e91ffe43c6b3a190f7643e52d6664cbbbb44cbb49ef44308c521715.lean#L363).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f87096fffc39c9283b9881bd1976b4ba3b424cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
