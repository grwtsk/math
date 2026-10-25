# dischargeSimpSelf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9d42dc59fd53f7b1e03671214ef40ff7b3c8e4683701b65e5b5fe47a92ec3b2a",
  "kind": "def",
  "lexical_name": "dischargeSimpSelf",
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
  "slug": "dischargesimpself--32031b906040d2b198ffc1d1",
  "source": {
    "blob": "aaf5c1f9127ce5af84dd38e10791ac38b91aad1f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 112,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Discharger/Variantfaff1aed19a69b074dda4f804228285ed140bdd8f76fe9fdc053c5e4bdd953b3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:32031b906040d2b198ffc1d1a6a4393c1074e462ab1c73b13251614bf79928b0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Discharger/Variantfaff1aed19a69b074dda4f804228285ed140bdd8f76fe9fdc053c5e4bdd953b3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9d42dc59fd53f7b1e03671214ef40ff7b3c8e4683701b65e5b5fe47a92ec3b2a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def dischargeSimpSelf : Discharger := fun e => do
  if (← readThe Context).dischargeDepth > (← getConfig).maxDischargeDepth then
    return .failed
  withoutModifyingCache do
  withTheReader Context (fun ctx => { ctx with dischargeDepth := ctx.dischargeDepth + 1 }) do
    return resultToDischargeResult e (← simp e)

/--
A discharger that fails to prove any side condition.

This is used when conditional rewrite rules should not be applied. It immediately
returns `.failed` for all propositions, effectively disabling conditional rewriting.

**Use cases**:
- Testing: Isolating unconditional rewriting behavior
- Performance: Avoiding expensive discharge attempts when conditions are unlikely to hold
- Controlled rewriting: Explicitly disabling conditional rules in specific contexts
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Discharger/Variantfaff1aed19a69b074dda4f804228285ed140bdd8f76fe9fdc053c5e4bdd953b3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Discharger/Variantfaff1aed19a69b074dda4f804228285ed140bdd8f76fe9fdc053c5e4bdd953b3.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aaf5c1f9127ce5af84dd38e10791ac38b91aad1f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
