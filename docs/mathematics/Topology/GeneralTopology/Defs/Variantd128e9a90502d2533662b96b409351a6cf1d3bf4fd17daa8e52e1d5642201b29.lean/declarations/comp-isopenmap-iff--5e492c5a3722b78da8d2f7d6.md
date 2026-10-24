# comp_isOpenMap_iff'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0e2aa4e9-2e86-6b20-f392-1ab41dc48dfa",
  "kind": "theorem",
  "lexical_name": "comp_isOpenMap_iff'",
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
  "slug": "comp-isopenmap-iff--5e492c5a3722b78da8d2f7d6",
  "source": {
    "blob": "493b234c94c467b6fa363b6b73f82b359856cb26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 323,
    "line": 315,
    "path": "GRWTSK/Topology/GeneralTopology/Defs/Variantd128e9a90502d2533662b96b409351a6cf1d3bf4fd17daa8e52e1d5642201b29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e492c5a3722b78da8d2f7d6f5b075d8f3810dee84d3fd403ef2d0ddc0251099",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Defs/Variantd128e9a90502d2533662b96b409351a6cf1d3bf4fd17daa8e52e1d5642201b29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e2aa4e9-2e86-6b20-f392-1ab41dc48dfa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 315–323.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comp_isOpenMap_iff' (h : X ≃ₜ Y) {f : Y → Z} : IsOpenMap (f ∘ h) ↔ IsOpenMap f := by
  refine ⟨?_, fun hf => hf.comp h.isOpenMap⟩
  intro hf
  rw [← Function.comp_id f, ← h.self_comp_symm, ← Function.comp_assoc]
  exact hf.comp h.symm.isOpenMap

variable (X Y) in
/-- If both `X` and `Y` have a unique element, then `X ≃ₜ Y`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Defs/Variantd128e9a90502d2533662b96b409351a6cf1d3bf4fd17daa8e52e1d5642201b29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Defs/Variantd128e9a90502d2533662b96b409351a6cf1d3bf4fd17daa8e52e1d5642201b29.lean#L315).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `493b234c94c467b6fa363b6b73f82b359856cb26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
