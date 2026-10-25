# PayloadValid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:da846cdb7b26dc071a785665d2d61e585d16bd2ff8ac0afb83ca2c32fb84cf87",
  "kind": "def",
  "lexical_name": "PayloadValid",
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
  "slug": "payloadvalid--2d8b717ad8d20a6d1d1d9c3a",
  "source": {
    "blob": "edddc449de347c2459e1143a08b1dfa471aeaedb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 170,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/GroundedClause/Variante8fae4686556df244a2a5bf8047b41476b9d50cc10be331d59a73a04910756ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2d8b717ad8d20a6d1d1d9c3abc9c86d8e0e40b627303da60a3378d0d27491713",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/GroundedClause/Variante8fae4686556df244a2a5bf8047b41476b9d50cc10be331d59a73a04910756ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:da846cdb7b26dc071a785665d2d61e585d16bd2ff8ac0afb83ca2c32fb84cf87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def PayloadValid
    (context : GroundingContext)
    (source : ClaimSource)
    (claim : LocatedClaim) : Prop :=
  match claim.payload with
  | .exactTheorem theoremId =>
      theoremId = source.node ∧
        context.HasTheoremNode theoremId ∧
        context.HasTheoremCell theoremId
  | .theoremInstance theoremId _ _ =>
      theoremId = source.node ∧
        context.HasTheoremNode theoremId ∧
        context.HasTheoremCell theoremId
  | .computedFact _ => True
  | .importedMathematics authorityId specialization =>
      context.HasExternalAuthority authorityId ∧
        (specialization = none ∨ specialization = some source.node)
  | .checkedInference premises rule certificate =>
      premises = certificate.premises ∧
        rule.id = certificate.ruleId ∧
        certificate.conclusionNode = source.node ∧
        context.terrain.manifest.HasNode certificate.checkerNode ∧
        ∀ premise ∈ premises, premise ∈ context.knownClaimIds
  | .boundedReviewerInference anchors _ =>
      source.establishment ≠ .established ∧
        ∀ anchor ∈ anchors,
          context.terrain.manifest.HasNode anchor.node ∧
            match anchor.face with
            | none => True
            | some face => context.terrain.HasCellFace face
  | .proposal candidateId =>
      candidateId ∈ context.candidatePatches ∧
        source.establishment ≠ .established

/-- Requested authority is supported independently by source and payload. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/GroundedClause/Variante8fae4686556df244a2a5bf8047b41476b9d50cc10be331d59a73a04910756ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/GroundedClause/Variante8fae4686556df244a2a5bf8047b41476b9d50cc10be331d59a73a04910756ef.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `edddc449de347c2459e1143a08b1dfa471aeaedb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
