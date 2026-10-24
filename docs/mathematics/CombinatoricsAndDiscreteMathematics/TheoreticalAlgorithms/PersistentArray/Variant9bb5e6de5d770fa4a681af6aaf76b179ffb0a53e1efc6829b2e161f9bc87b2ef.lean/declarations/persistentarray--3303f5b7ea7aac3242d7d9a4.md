# PersistentArray

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6cf2f88eeb5b40f62b25953b604282d7524026da52bd99627c19b1200674cd2f",
  "kind": "structure",
  "lexical_name": "PersistentArray",
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
  "slug": "persistentarray--3303f5b7ea7aac3242d7d9a4",
  "source": {
    "blob": "3715ece8c43558ac780b0f44e656301535f5b5de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 45,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PersistentArray/Variant9bb5e6de5d770fa4a681af6aaf76b179ffb0a53e1efc6829b2e161f9bc87b2ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3303f5b7ea7aac3242d7d9a42cde9507900d09f30a11f7796a55120624781c7a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PersistentArray/Variant9bb5e6de5d770fa4a681af6aaf76b179ffb0a53e1efc6829b2e161f9bc87b2ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6cf2f88eeb5b40f62b25953b604282d7524026da52bd99627c19b1200674cd2f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PersistentArray (α : Type u) where
  /- Recall that we run out of memory if we have more than `usizeSz/8` elements.
     So, we can stop adding elements at `root` after `size > usizeSz`, and
     keep growing the `tail`. This modification allow us to use `USize` instead
     of `Nat` when traversing `root`. -/
  root    : PersistentArrayNode α := PersistentArrayNode.node (Array.mkEmpty PersistentArray.branching.toNat)
  tail    : Array α               := Array.mkEmpty PersistentArray.branching.toNat
  size    : Nat                   := 0
  shift   : USize                 := PersistentArray.initShift
  tailOff : Nat                   := 0
  deriving Inhabited

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PersistentArray/Variant9bb5e6de5d770fa4a681af6aaf76b179ffb0a53e1efc6829b2e161f9bc87b2ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PersistentArray/Variant9bb5e6de5d770fa4a681af6aaf76b179ffb0a53e1efc6829b2e161f9bc87b2ef.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3715ece8c43558ac780b0f44e656301535f5b5de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
