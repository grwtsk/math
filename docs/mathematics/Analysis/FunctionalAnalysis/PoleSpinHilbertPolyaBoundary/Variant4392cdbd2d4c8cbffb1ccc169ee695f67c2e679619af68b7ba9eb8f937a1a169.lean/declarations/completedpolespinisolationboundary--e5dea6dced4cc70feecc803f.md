# completedPoleSpinIsolationBoundary

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4cc8ea9b57cade4dfb4a4d42ac935921b754d38c3b489a6522dafc454f79023e",
  "kind": "def",
  "lexical_name": "completedPoleSpinIsolationBoundary",
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
  "slug": "completedpolespinisolationboundary--e5dea6dced4cc70feecc803f",
  "source": {
    "blob": "28ab0831f7995365781f5dbd339db5d3303771db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 133,
    "line": 117,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/PoleSpinHilbertPolyaBoundary/Variant4392cdbd2d4c8cbffb1ccc169ee695f67c2e679619af68b7ba9eb8f937a1a169.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e5dea6dced4cc70feecc803f98e18fcda1c9bb1e4aff4f5e0099dabfcbd0361b",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/PoleSpinHilbertPolyaBoundary/Variant4392cdbd2d4c8cbffb1ccc169ee695f67c2e679619af68b7ba9eb8f937a1a169.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4cc8ea9b57cade4dfb4a4d42ac935921b754d38c3b489a6522dafc454f79023e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–133.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def completedPoleSpinIsolationBoundary : PoleSpinIsolationBoundary :=
  { localSpinIsolated := true
    zeroToOneFlipAdmitted := true
    oneToZeroFlipAdmitted := true
    flipInvolutive := true
    everyPoleAccounted := true
    noUnpairedFlipResidue := true
    determinantGateReceivesSpinBoundary := true
    hilbertPolyaAuthority := false
    rhAuthority := false
    determinantGateReceivesSpinBoundary_of_closed_spin_gate := by
      intro _hIso _h01 _h10 _hInv _hEvery _hNoResidue
      rfl
    no_hilbert_polya_from_spin_boundary_alone := rfl
    no_rh_from_spin_boundary_alone := rfl }

/-- Closing the local pole-spin gate admits transfer into the determinant gate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/PoleSpinHilbertPolyaBoundary/Variant4392cdbd2d4c8cbffb1ccc169ee695f67c2e679619af68b7ba9eb8f937a1a169.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/PoleSpinHilbertPolyaBoundary/Variant4392cdbd2d4c8cbffb1ccc169ee695f67c2e679619af68b7ba9eb8f937a1a169.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28ab0831f7995365781f5dbd339db5d3303771db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
