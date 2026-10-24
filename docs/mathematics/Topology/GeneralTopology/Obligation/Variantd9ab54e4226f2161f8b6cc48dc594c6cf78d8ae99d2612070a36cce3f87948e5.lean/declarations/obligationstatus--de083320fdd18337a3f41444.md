# ObligationStatus

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6dd6401d0446735903d5ec81e7df48593b09b851e06c7da64c184e37ba037f13",
  "kind": "inductive",
  "lexical_name": "ObligationStatus",
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
  "slug": "obligationstatus--de083320fdd18337a3f41444",
  "source": {
    "blob": "6cad35e8187be8f8f7684c68fbe68ffcc50f66bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 30,
    "line": 22,
    "path": "GRWTSK/Topology/GeneralTopology/Obligation/Variantd9ab54e4226f2161f8b6cc48dc594c6cf78d8ae99d2612070a36cce3f87948e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:de083320fdd18337a3f41444f46c60110c6afb9ef05ee8076ed038807f3b3896",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Obligation/Variantd9ab54e4226f2161f8b6cc48dc594c6cf78d8ae99d2612070a36cce3f87948e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6dd6401d0446735903d5ec81e7df48593b09b851e06c7da64c184e37ba037f13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–30.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive ObligationStatus
  | open
  | discharged
  | superseded
  | permanentlyOutOfScope
  | futurePhase
  deriving DecidableEq, Repr

/-- A finite-scope research, proof, implementation, or governance obligation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Obligation/Variantd9ab54e4226f2161f8b6cc48dc594c6cf78d8ae99d2612070a36cce3f87948e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Obligation/Variantd9ab54e4226f2161f8b6cc48dc594c6cf78d8ae99d2612070a36cce3f87948e5.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6cad35e8187be8f8f7684c68fbe68ffcc50f66bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
