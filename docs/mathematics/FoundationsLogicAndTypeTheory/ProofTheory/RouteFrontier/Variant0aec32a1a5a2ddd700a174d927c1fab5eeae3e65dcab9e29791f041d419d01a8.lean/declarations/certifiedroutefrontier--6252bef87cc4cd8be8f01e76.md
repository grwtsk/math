# CertifiedRouteFrontier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a511f30327ce15e7de31a201469f1c33809435a670a0cf126024e991436ad1ff",
  "kind": "structure",
  "lexical_name": "CertifiedRouteFrontier",
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
  "slug": "certifiedroutefrontier--6252bef87cc4cd8be8f01e76",
  "source": {
    "blob": "c532b6523df8f88ceef0fd9f28b25d4b956a945e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 59,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/RouteFrontier/Variant0aec32a1a5a2ddd700a174d927c1fab5eeae3e65dcab9e29791f041d419d01a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6252bef87cc4cd8be8f01e76e443cb80ea9aa9c95129645afaf07d55581421fb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ProofTheory/RouteFrontier/Variant0aec32a1a5a2ddd700a174d927c1fab5eeae3e65dcab9e29791f041d419d01a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a511f30327ce15e7de31a201469f1c33809435a670a0cf126024e991436ad1ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CertifiedRouteFrontier
    (Obligation : Type u)
    (Certificate : Type v)
    [DecidableEq Obligation]
    (snapshot : ProjectionSnapshot)
    (Statement : Obligation → Prop)
    (Seeds : AcceptedSeedRegistry Obligation Statement)
    (Usable :
      CertifiedRoute Obligation Certificate Statement snapshot → Prop)
    (target : Obligation) where
  activeSnapshot : VerifiedActiveSnapshot snapshot
  family : FrontierFamily Obligation
  completion : Option (Derivation Statement Seeds Usable target)
  completion_exact :
    completion.isSome ↔ Discharged Statement Seeds Usable target
  complete_family_exact :
    completion.isSome ↔ family = frontierOne Obligation
  unresolved : Finset Obligation
  unresolved_exact :
    ∀ obligation, obligation ∈ unresolved ↔
      (∃ requirement ∈ family, obligation ∈ requirement) ∧
      ¬ Discharged Statement Seeds Usable obligation

namespace CertifiedRouteFrontier

/-- Any completion retained by a certified frontier proves its target. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ProofTheory/RouteFrontier/Variant0aec32a1a5a2ddd700a174d927c1fab5eeae3e65dcab9e29791f041d419d01a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/RouteFrontier/Variant0aec32a1a5a2ddd700a174d927c1fab5eeae3e65dcab9e29791f041d419d01a8.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c532b6523df8f88ceef0fd9f28b25d4b956a945e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
