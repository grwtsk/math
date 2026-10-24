# killingForm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:35cba48bb967fc3e1fc595772b90a09ce48eb493892b07ad5981c1a0903da22a",
  "kind": "abbrev",
  "lexical_name": "killingForm",
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
  "slug": "killingform--4c40fdaa6c415c3fa3cea863",
  "source": {
    "blob": "87e4af2c07ad736ab7fa01c9ee030e3295a5b148",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 82,
    "path": "GRWTSK/Algebra/LinearAlgebra/Killing/Variantcf33a700d877bc5da9290a5b69a97a6fe386d5a49654d706b6e430bebf9075fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4c40fdaa6c415c3fa3cea863a7cbccd2c9154f92b464adeb21f13478572452dd",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Killing/Variantcf33a700d877bc5da9290a5b69a97a6fe386d5a49654d706b6e430bebf9075fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:35cba48bb967fc3e1fc595772b90a09ce48eb493892b07ad5981c1a0903da22a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable abbrev killingForm : L →ₗ[R] L →ₗ[R] R := LieModule.traceForm R L L

end LieAlgebra
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Killing/Variantcf33a700d877bc5da9290a5b69a97a6fe386d5a49654d706b6e430bebf9075fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Killing/Variantcf33a700d877bc5da9290a5b69a97a6fe386d5a49654d706b6e430bebf9075fd.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87e4af2c07ad736ab7fa01c9ee030e3295a5b148` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
