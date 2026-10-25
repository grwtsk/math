# GlobalLocalReconciliationStatus

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9b237a679e3ae50e74969ff294943eff6b956353940fe53b59582506f807dc3c",
  "kind": "inductive",
  "lexical_name": "GlobalLocalReconciliationStatus",
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
  "slug": "globallocalreconciliationstatus--93934958af8ffc67822c63fc",
  "source": {
    "blob": "f998f116db782e586c560fe444f7aae915b4a45e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 124,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/AvalancheReconciliation/Variantce195f9460ece8d391d8f7bd29367eedff4eeb53bedc3382ef15ca5d1e9a70f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:93934958af8ffc67822c63fc35b338519b029ae3c0d07324ce37b4672e13bf7a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/AvalancheReconciliation/Variantce195f9460ece8d391d8f7bd29367eedff4eeb53bedc3382ef15ca5d1e9a70f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9b237a679e3ae50e74969ff294943eff6b956353940fe53b59582506f807dc3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive GlobalLocalReconciliationStatus
    {State : Type uState}
    {G : KnownMaximalState State}
    {region : AbsoluteRegion G}
  | proved (certificate : GlobalLocalRelaxationSquare G region)
  | obstructed (obstruction : GlobalLocalReconciliationObstruction G)

/-!
## Partition-wide sections and gluing

The following layer separates two facts which require different hypotheses.
Local results obtained by restricting one global result agree automatically on
every declared interface.  Conversely, reconstructing a global result from an
arbitrary compatible family requires the declared interfaces to contain every
pairwise region intersection.  That completeness condition is carried by
`PartitionGluingCapability`; it is never inferred from the word "partition".
-/

variable {State : Type uState}
variable {G : KnownMaximalState State}
variable {tree : AvalanchePartitionTree G}

/-- A Boolean section on every region of one declared avalanche cut. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/AvalancheReconciliation/Variantce195f9460ece8d391d8f7bd29367eedff4eeb53bedc3382ef15ca5d1e9a70f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/AvalancheReconciliation/Variantce195f9460ece8d391d8f7bd29367eedff4eeb53bedc3382ef15ca5d1e9a70f8.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f998f116db782e586c560fe444f7aae915b4a45e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
