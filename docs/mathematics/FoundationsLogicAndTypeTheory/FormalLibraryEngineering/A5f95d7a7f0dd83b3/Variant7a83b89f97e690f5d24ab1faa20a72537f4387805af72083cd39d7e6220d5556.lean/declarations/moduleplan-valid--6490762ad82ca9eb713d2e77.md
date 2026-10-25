# ModulePlan.Valid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f55ed403e627fca4944a0f433389fb320726213943d2d2c49d0a9b3a11583c46",
  "kind": "def",
  "lexical_name": "ModulePlan.Valid",
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
  "slug": "moduleplan-valid--6490762ad82ca9eb713d2e77",
  "source": {
    "blob": "7437c68709460d7a3e4160c90d96a1ba506cbc1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 14,
    "line": 9,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A5f95d7a7f0dd83b3/Variant7a83b89f97e690f5d24ab1faa20a72537f4387805af72083cd39d7e6220d5556.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6490762ad82ca9eb713d2e77d83e84b963963fc41d21bf6375be3719f9d999df",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A5f95d7a7f0dd83b3/Variant7a83b89f97e690f5d24ab1faa20a72537f4387805af72083cd39d7e6220d5556.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f55ed403e627fca4944a0f433389fb320726213943d2d2c49d0a9b3a11583c46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 9–14.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ModulePlan.Valid (plan : ModulePlan) : Prop :=
  plan.id.Valid ∧ plan.profileId.Valid ∧
    plan.hardConstraintsSatisfied = true ∧ plan.acyclic = true ∧
    plan.deterministicDigest.Valid

end MathDiscovery.Atom
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A5f95d7a7f0dd83b3/Variant7a83b89f97e690f5d24ab1faa20a72537f4387805af72083cd39d7e6220d5556.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/A5f95d7a7f0dd83b3/Variant7a83b89f97e690f5d24ab1faa20a72537f4387805af72083cd39d7e6220d5556.lean#L9).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7437c68709460d7a3e4160c90d96a1ba506cbc1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
