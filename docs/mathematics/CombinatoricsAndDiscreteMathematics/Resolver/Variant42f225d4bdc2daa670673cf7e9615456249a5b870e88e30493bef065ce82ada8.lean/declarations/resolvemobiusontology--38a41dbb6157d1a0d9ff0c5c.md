# resolveMobiusOntology

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:97e59a3bbe32b21054c294663a5f76ee1cefb2eccc54dfdaa9a3d96740b8101d",
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
  "slug": "resolvemobiusontology--38a41dbb6157d1a0d9ff0c5c",
  "source": {
    "blob": "9f1105781c349084fff3c7b81351007f914615ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 180,
    "line": 132,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Resolver/Variant42f225d4bdc2daa670673cf7e9615456249a5b870e88e30493bef065ce82ada8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:38a41dbb6157d1a0d9ff0c5ca8e7a9810442a2508a5f05b38755c04ea5686cb3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Resolver/Variant42f225d4bdc2daa670673cf7e9615456249a5b870e88e30493bef065ce82ada8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:97e59a3bbe32b21054c294663a5f76ee1cefb2eccc54dfdaa9a3d96740b8101d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–180.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Resolver/Variant42f225d4bdc2daa670673cf7e9615456249a5b870e88e30493bef065ce82ada8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Resolver/Variant42f225d4bdc2daa670673cf7e9615456249a5b870e88e30493bef065ce82ada8.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f1105781c349084fff3c7b81351007f914615ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
