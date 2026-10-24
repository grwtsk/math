# instExtremallyDisconnected

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5d94b79556c21e68846638f8a6fdfc1842f793cb7e6a42c959731e467c2431c9",
  "kind": "instance",
  "lexical_name": "instExtremallyDisconnected",
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
  "slug": "instextremallydisconnected--41fdc62635fa54e4a597ddb3",
  "source": {
    "blob": "69258a01246f5ca427b121cd6e6a1150248c2ae8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 305,
    "line": 285,
    "path": "GRWTSK/Topology/GeneralTopology/ExtremallyDisconnected/Variant640138517fec913aaa918852a9d7af62bd844e5844472d444909f0d8909c42b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:41fdc62635fa54e4a597ddb3614193aca6aa1f3a6a9d06f78570261cb4b9087f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ExtremallyDisconnected/Variant640138517fec913aaa918852a9d7af62bd844e5844472d444909f0d8909c42b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5d94b79556c21e68846638f8a6fdfc1842f793cb7e6a42c959731e467c2431c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 285–305.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instExtremallyDisconnected {ι : Type*} {π : ι → Type*} [∀ i, TopologicalSpace (π i)]
    [h₀ : ∀ i, ExtremallyDisconnected (π i)] : ExtremallyDisconnected (Σ i, π i) := by
  constructor
  intro s hs
  rw [isOpen_sigma_iff] at hs ⊢
  intro i
  rcases h₀ i with ⟨h₀⟩
  suffices h : Sigma.mk i ⁻¹' closure s = closure (Sigma.mk i ⁻¹' s) by
    rw [h]
    exact h₀ _ (hs i)
  apply IsOpenMap.preimage_closure_eq_closure_preimage
  · intro U _
    rw [isOpen_sigma_iff]
    intro j
    by_cases ij : i = j
    · rwa [← ij, sigma_mk_preimage_image_eq_self]
    · rw [sigma_mk_preimage_image' ij]
      exact isOpen_empty
  · fun_prop

end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ExtremallyDisconnected/Variant640138517fec913aaa918852a9d7af62bd844e5844472d444909f0d8909c42b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ExtremallyDisconnected/Variant640138517fec913aaa918852a9d7af62bd844e5844472d444909f0d8909c42b5.lean#L285).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `69258a01246f5ca427b121cd6e6a1150248c2ae8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
