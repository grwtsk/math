# RHIsolationEvent.hasCommittedAnalyticEffect

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:da16e8facc0e6817508d7b39eb41c67169023da40afcc572c5c249c270fd5a20",
  "kind": "def",
  "lexical_name": "RHIsolationEvent.hasCommittedAnalyticEffect",
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
  "slug": "rhisolationevent-hascommittedanalyticeffect--ef6e6a1a013a49fda99e49e0",
  "source": {
    "blob": "4cac3b2c43913e1e73ea148ac90ba5427bd66f23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 143,
    "line": 133,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/IsolationMachine/Variant08caa59898ac0b00b58a689515b30a6111fd83eed6a959c76567490bb3946f8d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ef6e6a1a013a49fda99e49e0ba37cf7505e68515588d2b9da928a7792b1e32ac",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/IsolationMachine/Variant08caa59898ac0b00b58a689515b30a6111fd83eed6a959c76567490bb3946f8d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:da16e8facc0e6817508d7b39eb41c67169023da40afcc572c5c249c270fd5a20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–143.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def RHIsolationEvent.hasCommittedAnalyticEffect
    {model : ContourIntegrationModel}
    {xi xiPrime : ℂ → ℂ}
    {authority :
      ArgumentPrincipleAuthority model xi xiPrime} :
    RHIsolationEvent authority → Bool
  | .proposeRefinement _ _ => false
  | .commitRefinement _ _ => true
  | .reprioritize _ => false

end Mathematics.RHIsolation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/IsolationMachine/Variant08caa59898ac0b00b58a689515b30a6111fd83eed6a959c76567490bb3946f8d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/IsolationMachine/Variant08caa59898ac0b00b58a689515b30a6111fd83eed6a959c76567490bb3946f8d.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4cac3b2c43913e1e73ea148ac90ba5427bd66f23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
