# applyActiveClearance_preserves_other_active_residues

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f4a650c8-6a44-c10d-3cbd-3f93fed626f0",
  "kind": "theorem",
  "lexical_name": "applyActiveClearance_preserves_other_active_residues",
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
  "slug": "applyactiveclearance-preserves-other-active-residues--665080a44568db75ad72e92a",
  "source": {
    "blob": "27236b83385b7164cfa014ebd3175e8988fa25aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 121,
    "path": "GRWTSK/Topology/GeneralTopology/M5472616e73666572732f5265736964756553746174652e6c65616e/Variantf284f1a63a675f2ec9c21202c0907174348a7d3ecc92661954cb169df1dae2a3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:665080a44568db75ad72e92afc667fa9910c4265619e8e0526e0e68a2c15011c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/M5472616e73666572732f5265736964756553746174652e6c65616e/Variantf284f1a63a675f2ec9c21202c0907174348a7d3ecc92661954cb169df1dae2a3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f4a650c8-6a44-c10d-3cbd-3f93fed626f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem applyActiveClearance_preserves_other_active_residues
    (s : ResidueState) (r q : FWR.Residue)
    (h : ActiveClearance s r)
    (hneq : q ≠ r) (hq : q ∈ s.active) :
    q ∈ (applyActiveClearance s r h).active := by
  exact
    applyClearance_preserves_other_active_residues
      s r q h.clearance hneq hq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/M5472616e73666572732f5265736964756553746174652e6c65616e/Variantf284f1a63a675f2ec9c21202c0907174348a7d3ecc92661954cb169df1dae2a3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/M5472616e73666572732f5265736964756553746174652e6c65616e/Variantf284f1a63a675f2ec9c21202c0907174348a7d3ecc92661954cb169df1dae2a3.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27236b83385b7164cfa014ebd3175e8988fa25aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
