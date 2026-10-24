# Input

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:362b95c1d0eb7bcf6e4af9512d4de33526fef1c00b9383abaf0882eaecb62741",
  "kind": "inductive",
  "lexical_name": "Input",
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
  "slug": "input--faeefbac5b3acec42d94e1b3",
  "source": {
    "blob": "3a56910c4f61dabf6072835d56f88bb242ba559a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 431,
    "line": 416,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PipelineSemantics/Variante97301967914eb308b2dc9864f9ed309c6105a8ee87ddc576112d4a072ce38c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:faeefbac5b3acec42d94e1b32f9486eb80513231ba20816ac905ca4c8d61cfc4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PipelineSemantics/Variante97301967914eb308b2dc9864f9ed309c6105a8ee87ddc576112d4a072ce38c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:362b95c1d0eb7bcf6e4af9512d4de33526fef1c00b9383abaf0882eaecb62741`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 416–431.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive Input : SemanticStage → Type
  | collect
      (controller : Project)
      (certificates : List (RuntimeCertificate.AcceptedFor controller)) :
      Input .collectEvidence
  | classify (claims : List Claim) : Input .classifyClaims
  | gate : Input .applyGates
  | attest
      (controller : Project)
      (identifier location : String)
      (decision : GateDecision)
      (evidence : {bundle : EvidenceBundle // bundle.ValidFor controller}) :
      Input .issueAttestation
  | refine : Input .emitRefinementRequests

/-- Each stage exposes its actual typed output rather than a marker string. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PipelineSemantics/Variante97301967914eb308b2dc9864f9ed309c6105a8ee87ddc576112d4a072ce38c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PipelineSemantics/Variante97301967914eb308b2dc9864f9ed309c6105a8ee87ddc576112d4a072ce38c6.lean#L416).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a56910c4f61dabf6072835d56f88bb242ba559a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
