# registerCoercion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d69282b55d363e3c0f75d4dc649ef772852492aedee73b3036feb37d6f0b9d9a",
  "kind": "def",
  "lexical_name": "registerCoercion",
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
  "slug": "registercoercion--797e8611733d3f1153b89b7d",
  "source": {
    "blob": "e10da57c502cdca869e328edeb83a3678f3bc311",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 80,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoeAttr/Variantdc7f0458ae1f1bbaeeb8e4708db1ccc34ed22ac624ff00019f73ca1a5c87be53.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:797e8611733d3f1153b89b7d89277922a77d363a612e0c0feea75ab1a05d6090",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoeAttr/Variantdc7f0458ae1f1bbaeeb8e4708db1ccc34ed22ac624ff00019f73ca1a5c87be53.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d69282b55d363e3c0f75d4dc649ef772852492aedee73b3036feb37d6f0b9d9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def registerCoercion (name : Name) (info : Option CoeFnInfo := none) : MetaM Unit := do
  let info ← match info with | some info => pure info | none => do
    let fnInfo ← getFunInfo (← mkConstWithLevelParams name)
    let some coercee := fnInfo.paramInfo.findIdx? (·.binderInfo.isExplicit)
      | throwError "{name} has no explicit arguments"
    pure { numArgs := coercee + 1, coercee, type := .coe }
  modifyEnv fun env => coeExt.addEntry env (name, info)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoeAttr/Variantdc7f0458ae1f1bbaeeb8e4708db1ccc34ed22ac624ff00019f73ca1a5c87be53.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CoeAttr/Variantdc7f0458ae1f1bbaeeb8e4708db1ccc34ed22ac624ff00019f73ca1a5c87be53.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e10da57c502cdca869e328edeb83a3678f3bc311` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
