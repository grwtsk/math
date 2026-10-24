# trans_openPartialHomeomorph_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1bb9d065-f9e5-dd1f-5e6c-bd00a9111790",
  "kind": "theorem",
  "lexical_name": "trans_openPartialHomeomorph_apply",
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
  "slug": "trans-openpartialhomeomorph-apply--d9da6a5cb8c9404c130a5ba5",
  "source": {
    "blob": "2fedd9be284f48d9ee4554cd5d687b57eb15cf3d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 69,
    "path": "GRWTSK/Topology/GeneralTopology/FiberwiseLinear/Variant4c2e362eb5283be8740f7edb8c18ac67fe2eb9ad46c09b750ce3ec6af4f8f311.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d9da6a5cb8c9404c130a5ba5d02af4c588ca30bad5f4f558ca290cd4e5dfb3df",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/FiberwiseLinear/Variant4c2e362eb5283be8740f7edb8c18ac67fe2eb9ad46c09b750ce3ec6af4f8f311.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1bb9d065-f9e5-dd1f-5e6c-bd00a9111790`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem trans_openPartialHomeomorph_apply (hU : IsOpen U)
    (hφ : ContinuousOn (fun x => φ x : B → F →L[𝕜] F) U)
    (h2φ : ContinuousOn (fun x => (φ x).symm : B → F →L[𝕜] F) U) (hU' : IsOpen U')
    (hφ' : ContinuousOn (fun x => φ' x : B → F →L[𝕜] F) U')
    (h2φ' : ContinuousOn (fun x => (φ' x).symm : B → F →L[𝕜] F) U') (b : B) (v : F) :
    (FiberwiseLinear.openPartialHomeomorph φ hU hφ h2φ ≫ₕ
      FiberwiseLinear.openPartialHomeomorph φ' hU' hφ' h2φ')
        ⟨b, v⟩ =
      ⟨b, φ' b (φ b v)⟩ :=
  rfl

/-- Compute the source of the composition of two open partial homeomorphisms induced by fiberwise
linear equivalences. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/FiberwiseLinear/Variant4c2e362eb5283be8740f7edb8c18ac67fe2eb9ad46c09b750ce3ec6af4f8f311.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/FiberwiseLinear/Variant4c2e362eb5283be8740f7edb8c18ac67fe2eb9ad46c09b750ce3ec6af4f8f311.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2fedd9be284f48d9ee4554cd5d687b57eb15cf3d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
