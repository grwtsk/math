# RuntimeSoundnessValid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3ecbb33c63ee809a71d46104c8120b051533544951b8a1fdc7fde57829aa33d4",
  "kind": "def",
  "lexical_name": "RuntimeSoundnessValid",
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
  "slug": "runtimesoundnessvalid--59b339f4bcd84e00f4f0dce4",
  "source": {
    "blob": "2d6fad6665dc90070626f0d96f6338710fefaac9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 164,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/GroundedClause/Variantc8a9463024018090beba55dc78195d48dce219cf084a92d92dd46c57584f2327.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:59b339f4bcd84e00f4f0dce457aeb802c6fe64aee9c95f044d80c2a38e0aca59",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/GroundedClause/Variantc8a9463024018090beba55dc78195d48dce219cf084a92d92dd46c57584f2327.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3ecbb33c63ee809a71d46104c8120b051533544951b8a1fdc7fde57829aa33d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def RuntimeSoundnessValid
    (context : GroundingContext)
    (source : ClaimSource)
    (claim : LocatedClaim) : Prop :=
  match claim.payload with
  | .computedFact fact =>
      ∃ soundness,
        fact.soundnessTheorem = some soundness ∧
          fact.traceId ∈ context.terrain.runtimeTraces ∧
          context.terrain.manifest.HasNode soundness ∧
          context.HasRuntimeBinding source.node soundness
  | _ => True

/-- Payload-specific identities resolve without inventing evidence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/GroundedClause/Variantc8a9463024018090beba55dc78195d48dce219cf084a92d92dd46c57584f2327.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/GroundedClause/Variantc8a9463024018090beba55dc78195d48dce219cf084a92d92dd46c57584f2327.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d6fad6665dc90070626f0d96f6338710fefaac9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
