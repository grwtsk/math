# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dc0d77c88af0b840b3663b5cfb99fc17c4fc9bae8b8ec1bcc2cd4385bfa1635d",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--d50f68c88beba31c1dd071a1",
  "source": {
    "blob": "643c40e39d7c818d79a2b06b9d47b15d35476037",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 332,
    "line": 330,
    "path": "GRWTSK/Algebra/Basic/Variant2cc862b833a8131ca7a2a5edbd57ed9aa01ad073d4997b28469970ded2cc5cfb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d50f68c88beba31c1dd071a14f93dcf83d52c08b1ce512f8dea9a2860a32e47d",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant2cc862b833a8131ca7a2a5edbd57ed9aa01ad073d4997b28469970ded2cc5cfb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dc0d77c88af0b840b3663b5cfb99fc17c4fc9bae8b8ec1bcc2cd4385bfa1635d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 330–332.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) MulRingNormClass.toRingNormClass [NonAssocRing α]
    [Semiring β] [PartialOrder β] [MulRingNormClass F α β] : RingNormClass F α β :=
  { ‹MulRingNormClass F α β›, MulRingSeminormClass.toRingSeminormClass with }
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant2cc862b833a8131ca7a2a5edbd57ed9aa01ad073d4997b28469970ded2cc5cfb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant2cc862b833a8131ca7a2a5edbd57ed9aa01ad073d4997b28469970ded2cc5cfb.lean#L330).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `643c40e39d7c818d79a2b06b9d47b15d35476037` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
