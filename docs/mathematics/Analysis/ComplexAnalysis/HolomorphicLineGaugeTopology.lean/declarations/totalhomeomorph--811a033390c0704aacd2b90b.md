# totalHomeomorph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8aa1947ef5537f33bf2370edfffeb1ff7d66d1a3f30e34f49c8b4c71a8eab652",
  "kind": "def",
  "lexical_name": "totalHomeomorph",
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
  "slug": "totalhomeomorph--811a033390c0704aacd2b90b",
  "source": {
    "blob": "a9efee003f9513dbfd8cc00b16a9ee486124574a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 121,
    "path": "GRWTSK/Analysis/Complex/HolomorphicLineGaugeTopology.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:811a033390c0704aacd2b90b0183c53dfa3a9377671d145ed540e64d6235cbf4",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/HolomorphicLineGaugeTopology.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8aa1947ef5537f33bf2370edfffeb1ff7d66d1a3f30e34f49c8b4c71a8eab652`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def totalHomeomorph (G : Gauge C E) (hOpen : D.IsOpenCover) :
    (C.vectorBundleCore hOpen).TotalSpace ≃ₜ (E.vectorBundleCore hOpen).TotalSpace where
  toFun := G.totalMap hOpen
  invFun := G.symm.totalMap hOpen
  left_inv := by
    rintro ⟨x, a⟩
    change (⟨x, G.symm.fiberMap hOpen x (G.fiberMap hOpen x a)⟩ :
        (C.vectorBundleCore hOpen).TotalSpace) = ⟨x, a⟩
    rw [G.fiberMap_symm_apply]
  right_inv := by
    rintro ⟨x, a⟩
    change (⟨x, G.fiberMap hOpen x (G.symm.fiberMap hOpen x a)⟩ :
        (E.vectorBundleCore hOpen).TotalSpace) = ⟨x, a⟩
    rw [G.fiberMap_apply_symm]
  continuous_toFun := G.totalMap_continuous hOpen
  continuous_invFun := G.symm.totalMap_continuous hOpen

/-- Transport of bundle sections is induced by the same exact total-space map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/HolomorphicLineGaugeTopology.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/HolomorphicLineGaugeTopology.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9efee003f9513dbfd8cc00b16a9ee486124574a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
