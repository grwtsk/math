# TorsionIsolationAuthority

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e2e131f0f8239323ead11d8216044485d699e03ed1c1b19563831bf667441944",
  "kind": "structure",
  "lexical_name": "TorsionIsolationAuthority",
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
  "slug": "torsionisolationauthority--f739d04a123e6756247a3854",
  "source": {
    "blob": "93e0de64dc8e62ad47b28ee91dcb5e9e614b5c73",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 171,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/FunctionFieldFredholmBridge/Variant7fcdda6f969647e06a31404a43e77978bdff06e0a83060d5bba60706db5fe40b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f739d04a123e6756247a385447e5a2e5ad53bc8a10a5d86a4190e3dfe676e46b",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/FunctionFieldFredholmBridge/Variant7fcdda6f969647e06a31404a43e77978bdff06e0a83060d5bba60706db5fe40b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e2e131f0f8239323ead11d8216044485d699e03ed1c1b19563831bf667441944`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure TorsionIsolationAuthority
    {K : GlobalFunctionField}
    (E : FunctionFieldEllipticCurve K) where
  torsionHash : Nat
  finiteSubgroupHash : Nat
  torsionFinite : Prop
  torsionFiniteProof : torsionFinite
  torsionCertificateSound : Prop
  torsionCertificateSoundProof : torsionCertificateSound
  notInferredFromFieldHomology : Prop
  notInferredFromFieldHomologyProof : notInferredFromFieldHomology
  compatibleWithIsogenyFlow : Prop
  compatibleWithIsogenyFlowProof : compatibleWithIsogenyFlow
  compatibleWithBridge : Prop
  compatibleWithBridgeProof : compatibleWithBridge

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/FunctionFieldFredholmBridge/Variant7fcdda6f969647e06a31404a43e77978bdff06e0a83060d5bba60706db5fe40b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/FunctionFieldFredholmBridge/Variant7fcdda6f969647e06a31404a43e77978bdff06e0a83060d5bba60706db5fe40b.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93e0de64dc8e62ad47b28ee91dcb5e9e614b5c73` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
