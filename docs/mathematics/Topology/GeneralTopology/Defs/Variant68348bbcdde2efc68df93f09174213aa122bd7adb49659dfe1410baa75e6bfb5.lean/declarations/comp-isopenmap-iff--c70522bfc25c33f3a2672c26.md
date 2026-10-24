# comp_isOpenMap_iff'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fd03268d-0f7f-71c7-d457-acfa64fc351e",
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
  "slug": "comp-isopenmap-iff--c70522bfc25c33f3a2672c26",
  "source": {
    "blob": "573e0982447a575324c02219bd5d1d369fec1086",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 357,
    "line": 350,
    "path": "GRWTSK/Topology/GeneralTopology/Defs/Variant68348bbcdde2efc68df93f09174213aa122bd7adb49659dfe1410baa75e6bfb5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c70522bfc25c33f3a2672c26609ba74dd138ebfe9185c07e2445455a8ef9c38f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Defs/Variant68348bbcdde2efc68df93f09174213aa122bd7adb49659dfe1410baa75e6bfb5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd03268d-0f7f-71c7-d457-acfa64fc351e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 350–357.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem comp_isOpenMap_iff' (h : X ≃ₜ Y) {f : Y → Z} : IsOpenMap (f ∘ h) ↔ IsOpenMap f := by
  refine ⟨?_, fun hf => hf.comp h.isOpenMap⟩
  intro hf
  rw [← Function.comp_id f, ← h.self_comp_symm, ← Function.comp_assoc]
  exact hf.comp h.symm.isOpenMap

/-- Open quotient maps are preserved by precomposing with a homeomorphism. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Defs/Variant68348bbcdde2efc68df93f09174213aa122bd7adb49659dfe1410baa75e6bfb5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Defs/Variant68348bbcdde2efc68df93f09174213aa122bd7adb49659dfe1410baa75e6bfb5.lean#L350).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `573e0982447a575324c02219bd5d1d369fec1086` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
