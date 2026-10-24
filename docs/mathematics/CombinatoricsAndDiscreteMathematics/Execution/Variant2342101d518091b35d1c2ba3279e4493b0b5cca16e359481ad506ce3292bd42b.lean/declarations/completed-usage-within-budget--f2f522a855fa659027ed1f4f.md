# completed_usage_within_budget

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b974dd59-5e7d-d63a-9746-f398f2da2115",
  "kind": "theorem",
  "lexical_name": "completed_usage_within_budget",
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
  "slug": "completed-usage-within-budget--f2f522a855fa659027ed1f4f",
  "source": {
    "blob": "dbd644cc17c49154c4cd442f10d2218d54fc47a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 220,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Execution/Variant2342101d518091b35d1c2ba3279e4493b0b5cca16e359481ad506ce3292bd42b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2f522a855fa659027ed1f4fa2c3dd72b95cc62eee82d9d15874afb5d4fb08cd",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Execution/Variant2342101d518091b35d1c2ba3279e4493b0b5cca16e359481ad506ce3292bd42b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b974dd59-5e7d-d63a-9746-f398f2da2115`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem completed_usage_within_budget
    {G : GraphCut}
    {profiles : ModeProfileFamily G}
    {req : AdmittedAccessRequest G profiles}
    {outputs : ModeOutputFamily G req}
    {machine : AccessMachine G req outputs}
    {result : CertifiedModeOutput outputs}
    {usage : TraversalUsage}
    {completionBudget :
      WithinBudget usage req.budget}
    (_completed :
      executeMachine machine =
        .completed result usage completionBudget) :
    WithinBudget usage req.budget :=
  completionBudget

end Mathematics.GraphAccess
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Execution/Variant2342101d518091b35d1c2ba3279e4493b0b5cca16e359481ad506ce3292bd42b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Execution/Variant2342101d518091b35d1c2ba3279e4493b0b5cca16e359481ad506ce3292bd42b.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbd644cc17c49154c4cd442f10d2218d54fc47a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
