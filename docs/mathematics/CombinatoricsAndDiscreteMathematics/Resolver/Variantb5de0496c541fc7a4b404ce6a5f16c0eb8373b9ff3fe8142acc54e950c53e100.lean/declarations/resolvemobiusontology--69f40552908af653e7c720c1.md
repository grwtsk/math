# resolveMobiusOntology

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1dc05b55436f720763048da158467abcb9a91d9a402f011178d2bd9a152d62dd",
  "kind": "def",
  "lexical_name": "resolveMobiusOntology",
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
  "slug": "resolvemobiusontology--69f40552908af653e7c720c1",
  "source": {
    "blob": "d2842f5e6e5f50b17bfdd4d72313814f07c20156",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 124,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Resolver/Variantb5de0496c541fc7a4b404ce6a5f16c0eb8373b9ff3fe8142acc54e950c53e100.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:69f40552908af653e7c720c13ae8e3a9daa3d9f70a09a2f7001567e5c83739b5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Resolver/Variantb5de0496c541fc7a4b404ce6a5f16c0eb8373b9ff3fe8142acc54e950c53e100.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1dc05b55436f720763048da158467abcb9a91d9a402f011178d2bd9a152d62dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def resolveMobiusOntology
    {Result : Type u} {CoreSound : Result → Prop}
    {ArithmeticCertificate : Type v}
    {AnalyticCertificate : Type w}
    {SecurityCertificate : Type x}
    {BridgeCertificate : Type y}
    {ArithmeticUnknown : Type z}
    {AnalyticUnknown : Type q}
    {SecurityUnknown : Type r}
    {BridgeUnknown : Type s}
    {ContinuousWitness BooleanWitness OntologyWitness Reject : Type t}
    (cut :
      ResolverCut
        Result CoreSound
        ArithmeticCertificate AnalyticCertificate
        SecurityCertificate BridgeCertificate
        ArithmeticUnknown AnalyticUnknown
        SecurityUnknown BridgeUnknown
        ContinuousWitness BooleanWitness OntologyWitness Reject) :
    MobiusOntologyResolution
      Result CoreSound
      ArithmeticCertificate AnalyticCertificate
      SecurityCertificate BridgeCertificate
      ArithmeticUnknown AnalyticUnknown
      SecurityUnknown BridgeUnknown
      ContinuousWitness BooleanWitness OntologyWitness Reject :=
  match cut.validation with
  | .error reason => .rejected reason
  | .ok _ =>
      match cut.core with
      | .solved result certificate =>
          .solved
            {
              result := result
              coreCertificate := certificate
              arithmetic := cut.arithmetic
              analytic := cut.analytic
              security := cut.security
              bridge := cut.bridge
            }
      | .falsifiedContinuous witness =>
          .falsifiedContinuous witness
      | .falsifiedBoolean witness =>
          .falsifiedBoolean witness
      | .falsifiedOntology witness =>
          .falsifiedOntology witness
      | .unknown obligations nonempty =>
          .unknown obligations nonempty

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Resolver/Variantb5de0496c541fc7a4b404ce6a5f16c0eb8373b9ff3fe8142acc54e950c53e100.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Resolver/Variantb5de0496c541fc7a4b404ce6a5f16c0eb8373b9ff3fe8142acc54e950c53e100.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d2842f5e6e5f50b17bfdd4d72313814f07c20156` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
