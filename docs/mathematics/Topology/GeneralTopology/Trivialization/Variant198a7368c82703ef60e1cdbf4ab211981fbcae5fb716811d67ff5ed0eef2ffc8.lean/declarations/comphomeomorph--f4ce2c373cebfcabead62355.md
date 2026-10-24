# compHomeomorph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f2a490ce5ce5a48a033a9dd43038adc389b19f8fd92dd0a9c84ac86ccca4dd4c",
  "kind": "def",
  "lexical_name": "compHomeomorph",
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
  "slug": "comphomeomorph--f4ce2c373cebfcabead62355",
  "source": {
    "blob": "6303b95a20583802892521a0a969d53df0e243bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 489,
    "line": 477,
    "path": "GRWTSK/Topology/GeneralTopology/Trivialization/Variant198a7368c82703ef60e1cdbf4ab211981fbcae5fb716811d67ff5ed0eef2ffc8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f4ce2c373cebfcabead6235503718006c8ce3540df9c51e3d8ef49e7b7c121ee",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Trivialization/Variant198a7368c82703ef60e1cdbf4ab211981fbcae5fb716811d67ff5ed0eef2ffc8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f2a490ce5ce5a48a033a9dd43038adc389b19f8fd92dd0a9c84ac86ccca4dd4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 477–489.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def compHomeomorph {Z' : Type*} [TopologicalSpace Z'] (h : Z' ≃ₜ Z) :
    Trivialization F (proj ∘ h) where
  toPartialHomeomorph := h.toPartialHomeomorph.trans e.toPartialHomeomorph
  baseSet := e.baseSet
  open_baseSet := e.open_baseSet
  source_eq := by simp [source_eq, preimage_preimage, Function.comp_def]
  target_eq := by simp [target_eq]
  proj_toFun p hp := by
    have hp : h p ∈ e.source := by simpa using hp
    simp [hp]

/-- Read off the continuity of a function `f : Z → X` at `z : Z` by transferring via a
trivialization of `Z` containing `z`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Trivialization/Variant198a7368c82703ef60e1cdbf4ab211981fbcae5fb716811d67ff5ed0eef2ffc8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Trivialization/Variant198a7368c82703ef60e1cdbf4ab211981fbcae5fb716811d67ff5ed0eef2ffc8.lean#L477).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6303b95a20583802892521a0a969d53df0e243bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
