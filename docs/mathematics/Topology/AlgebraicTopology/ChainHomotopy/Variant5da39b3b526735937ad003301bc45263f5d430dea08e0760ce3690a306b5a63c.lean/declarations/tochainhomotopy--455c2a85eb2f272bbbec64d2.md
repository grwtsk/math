# toChainHomotopy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:01518c2c68608310023f01aa71635567855365844ad8b65195115ea6cecfd3f1",
  "kind": "def",
  "lexical_name": "toChainHomotopy",
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
  "slug": "tochainhomotopy--455c2a85eb2f272bbbec64d2",
  "source": {
    "blob": "6729d27c3ea3969860c483728069e65e3ea69b52",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 165,
    "path": "GRWTSK/Topology/AlgebraicTopology/ChainHomotopy/Variant5da39b3b526735937ad003301bc45263f5d430dea08e0760ce3690a306b5a63c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:455c2a85eb2f272bbbec64d2cd665e47d96181d827442c2520d358f26bcbef24",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/ChainHomotopy/Variant5da39b3b526735937ad003301bc45263f5d430dea08e0760ce3690a306b5a63c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:01518c2c68608310023f01aa71635567855365844ad8b65195115ea6cecfd3f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def toChainHomotopy (H : Homotopy f g) :
    _root_.Homotopy
      ((alternatingFaceMapComplex C).map f)
      ((alternatingFaceMapComplex C).map g) where
  hom := ToChainHomotopy.hom H
  zero i j hij := ToChainHomotopy.hom_eq_zero _ _ _ hij
  comm n := by
    cases n with
    | zero =>
      rw [prevD_eq (j' := 1) (w := by simp), dNext_eq_zero _ _ (by simp), zero_add]
      simp [ToChainHomotopy.comm_zero H]
    | succ n =>
      rw [dNext_eq (i' := n) (w := by simp), prevD_eq (j' := n + 2) (w := by simp)]
      simp [ToChainHomotopy.comm_succ H]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/ChainHomotopy/Variant5da39b3b526735937ad003301bc45263f5d430dea08e0760ce3690a306b5a63c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/ChainHomotopy/Variant5da39b3b526735937ad003301bc45263f5d430dea08e0760ce3690a306b5a63c.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6729d27c3ea3969860c483728069e65e3ea69b52` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
