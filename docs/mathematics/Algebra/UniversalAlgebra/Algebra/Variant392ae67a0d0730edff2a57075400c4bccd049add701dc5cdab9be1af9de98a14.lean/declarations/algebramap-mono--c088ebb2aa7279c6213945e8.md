# algebraMap_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d4c656ef-4fb0-7ce8-1280-208a134f187a",
  "kind": "lemma",
  "lexical_name": "algebraMap_mono",
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
  "slug": "algebramap-mono--c088ebb2aa7279c6213945e8",
  "source": {
    "blob": "4d710ef84c943311fff74f46b84ba4a01e78969a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 33,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Algebra/Variant392ae67a0d0730edff2a57075400c4bccd049add701dc5cdab9be1af9de98a14.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c088ebb2aa7279c6213945e8636d93b5e5dea075dafca3c15888e024f95120a2",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Algebra/Variant392ae67a0d0730edff2a57075400c4bccd049add701dc5cdab9be1af9de98a14.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4c656ef-4fb0-7ce8-1280-208a134f187a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[mono] lemma algebraMap_mono : Monotone (algebraMap α β) :=
  fun a₁ a₂ ha ↦ by
    simpa only [Algebra.algebraMap_eq_smul_one] using smul_le_smul_of_nonneg_right ha zero_le_one

/-- A version of `algebraMap_mono` for use by `gcongr` since it currently does not preprocess
`Monotone` conclusions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Algebra/Variant392ae67a0d0730edff2a57075400c4bccd049add701dc5cdab9be1af9de98a14.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Algebra/Variant392ae67a0d0730edff2a57075400c4bccd049add701dc5cdab9be1af9de98a14.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d710ef84c943311fff74f46b84ba4a01e78969a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
