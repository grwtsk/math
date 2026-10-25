# mkDischargerFromSimproc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4566449a6e8fd97e057168b81238ebdd0c07ca5db62c855f9628f3aec37aea08",
  "kind": "def",
  "lexical_name": "mkDischargerFromSimproc",
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
  "slug": "mkdischargerfromsimproc--ce05d41367c27a2dc3a2e690",
  "source": {
    "blob": "88c311b8df82f8c9b54d94d80b687020c81fdc57",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 88,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Discharger/Variant072d8a01384575064970aae9bc7fc9c40bc6445429f9e24bee0f36b80361ac38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ce05d41367c27a2dc3a2e690b7f3e97d527a0f8fd60147956050b06134c3f163",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Discharger/Variant072d8a01384575064970aae9bc7fc9c40bc6445429f9e24bee0f36b80361ac38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4566449a6e8fd97e057168b81238ebdd0c07ca5db62c855f9628f3aec37aea08`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def mkDischargerFromSimproc (p : Simproc) : Discharger := fun e => do
  return resultToDischargeResult e (← p e)

/--
The default discharger uses the simplifier itself to discharge side conditions.

This creates a natural recursive behavior: when applying conditional rules,
the simplifier is invoked to prove their preconditions. This is effective because:

1. **Ground terms**: Conditions like `5 ≠ 0` are evaluated by simprocs
2. **Recursive simplification**: Complex conditions are reduced to simpler ones
3. **Lemma application**: The simplifier can apply other rewrite rules to conditions

It ensures the cached results are discarded, and increases the discharge depth to avoid
infinite recursion.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Discharger/Variant072d8a01384575064970aae9bc7fc9c40bc6445429f9e24bee0f36b80361ac38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Discharger/Variant072d8a01384575064970aae9bc7fc9c40bc6445429f9e24bee0f36b80361ac38.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88c311b8df82f8c9b54d94d80b687020c81fdc57` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
