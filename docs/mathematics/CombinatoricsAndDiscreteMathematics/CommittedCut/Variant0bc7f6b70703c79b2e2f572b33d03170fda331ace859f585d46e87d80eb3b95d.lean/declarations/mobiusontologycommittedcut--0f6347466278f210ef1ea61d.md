# MobiusOntologyCommittedCut

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a6e4acd94a319120eec94825bc26d207258d8b161002e9c4dea687907a478dfc",
  "kind": "structure",
  "lexical_name": "MobiusOntologyCommittedCut",
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
  "slug": "mobiusontologycommittedcut--0f6347466278f210ef1ea61d",
  "source": {
    "blob": "c5d2583f99e5c26af9704336d82efaaa0ec821ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 39,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CommittedCut/Variant0bc7f6b70703c79b2e2f572b33d03170fda331ace859f585d46e87d80eb3b95d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0f6347466278f210ef1ea61d2e6320ed286c9f62f8a5bf54c657a72caa02fba4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CommittedCut/Variant0bc7f6b70703c79b2e2f572b33d03170fda331ace859f585d46e87d80eb3b95d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a6e4acd94a319120eec94825bc26d207258d8b161002e9c4dea687907a478dfc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure MobiusOntologyCommittedCut
    (Digest : Type u)
    (CorePayload : Type v)
    (ArithmeticPayload : Type w)
    (AnalyticPayload : Type x)
    (SecurityPayload : Type y)
    (Certificate : Type z)
    (Event : Type q) where
  snapshots : MobiusSnapshotFamily Digest
  core : CorePayload
  arithmetic : Option ArithmeticPayload
  analytic : Option AnalyticPayload
  security : Option SecurityPayload
  certificates : List (SnapshotBoundCertificate Digest Certificate)
  committedEvents : Finset Event
  finiteWorkBound : Nat
  canonicalDigest : Digest
  certificateBinding :
    ∀ certificate ∈ certificates,
      certificate.snapshot = snapshots.core ∨
      certificate.snapshot = snapshots.metric ∨
      certificate.snapshot = snapshots.behavioral ∨
      certificate.snapshot = snapshots.arithmetic ∨
      certificate.snapshot = snapshots.analytic ∨
      certificate.snapshot = snapshots.security ∨
      certificate.snapshot = snapshots.authority

/-- Re-delivery cannot change an event set that already contains the event. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CommittedCut/Variant0bc7f6b70703c79b2e2f572b33d03170fda331ace859f585d46e87d80eb3b95d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CommittedCut/Variant0bc7f6b70703c79b2e2f572b33d03170fda331ace859f585d46e87d80eb3b95d.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5d2583f99e5c26af9704336d82efaaa0ec821ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
