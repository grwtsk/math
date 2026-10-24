# CrossCuttingObservation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e45dac343b5d478cbc16422ec53fccb00c112418909c87c361d623f8e23ba55a",
  "kind": "structure",
  "lexical_name": "CrossCuttingObservation",
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
  "slug": "crosscuttingobservation--a7be896c5876ebc8c76a2804",
  "source": {
    "blob": "19db6dd103dd310f3e748793d843f394370f121c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 201,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/AuditHierarchy/Variant3a0347cabf296ce60fecb8d36fc54894a115fd7a62f1b78f23fffa3b2a4cd8e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a7be896c5876ebc8c76a280450ce82a557c70e2891dae02cb5deea7315c6dc59",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/AuditHierarchy/Variant3a0347cabf296ce60fecb8d36fc54894a115fd7a62f1b78f23fffa3b2a4cd8e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e45dac343b5d478cbc16422ec53fccb00c112418909c87c361d623f8e23ba55a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CrossCuttingObservation
    {Node : Type u}
    (topology : AuditTopology Node) where
  authority : FactAuthority
  relation : AuditRelationKind
  arguments :
    Fin (auditRelationSignature.arity relation) →
      topology.crossCutting.hierarchy.Element
  witness :
    topology.crossCutting.hierarchy.fact authority relation arguments

/-- The tag prevents a cross-cutting observation from silently becoming parenthood. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/AuditHierarchy/Variant3a0347cabf296ce60fecb8d36fc54894a115fd7a62f1b78f23fffa3b2a4cd8e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/AuditHierarchy/Variant3a0347cabf296ce60fecb8d36fc54894a115fd7a62f1b78f23fffa3b2a4cd8e1.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19db6dd103dd310f3e748793d843f394370f121c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
