# ArgumentPrincipleCountPayload

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:64e66df146d1229dbaee3533e0edec3261bb7b9bfac5a9d8849869de6a704a5b",
  "kind": "structure",
  "lexical_name": "ArgumentPrincipleCountPayload",
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
  "slug": "argumentprinciplecountpayload--aea9fc613a8b9ec678003ced",
  "source": {
    "blob": "37063d9f0e45dd4c6db23a263300520d7401e798",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 139,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/NumericalEstimate/Variant8104fa4893626c727cda36dca0e9b7d2ef0659e6603ea480292e0b247d5f429e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aea9fc613a8b9ec678003ced8cedbd96f70ba342c5e60cb2e6aa09fd97979760",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/NumericalEstimate/Variant8104fa4893626c727cda36dca0e9b7d2ef0659e6603ea480292e0b247d5f429e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:64e66df146d1229dbaee3533e0edec3261bb7b9bfac5a9d8849869de6a704a5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ArgumentPrincipleCountPayload where
  contourLabel : String
  contourHash : Nat
  meromorphicFunctionHash : Nat
  zeroCount : Nat
  poleCount : Nat
  windingNumberHash : Nat
  contourAvoidsZerosAndPoles : Prop
  contourAvoidsZerosAndPolesProof : contourAvoidsZerosAndPoles
  finiteSound : Prop
  finiteSoundProof : finiteSound

/-- Finite validated ODE/PDE integration trace. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/NumericalEstimate/Variant8104fa4893626c727cda36dca0e9b7d2ef0659e6603ea480292e0b247d5f429e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/NumericalEstimate/Variant8104fa4893626c727cda36dca0e9b7d2ef0659e6603ea480292e0b247d5f429e.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37063d9f0e45dd4c6db23a263300520d7401e798` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
