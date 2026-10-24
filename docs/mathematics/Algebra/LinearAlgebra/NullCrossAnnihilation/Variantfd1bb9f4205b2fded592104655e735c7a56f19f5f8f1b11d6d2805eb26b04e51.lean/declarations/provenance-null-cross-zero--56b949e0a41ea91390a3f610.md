# provenance_null_cross_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4505d422-635f-7664-3f64-6c922cb10732",
  "kind": "theorem",
  "lexical_name": "provenance_null_cross_zero",
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
  "slug": "provenance-null-cross-zero--56b949e0a41ea91390a3f610",
  "source": {
    "blob": "ada3b13551ca1f202e4a2b71cdb4652c8a9ebb2c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 87,
    "path": "GRWTSK/Algebra/LinearAlgebra/NullCrossAnnihilation/Variantfd1bb9f4205b2fded592104655e735c7a56f19f5f8f1b11d6d2805eb26b04e51.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:56b949e0a41ea91390a3f610f3bcf65a2cc12ed8d4ec52c37ca0bbd13438854a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/NullCrossAnnihilation/Variantfd1bb9f4205b2fded592104655e735c7a56f19f5f8f1b11d6d2805eb26b04e51.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4505d422-635f-7664-3f64-6c922cb10732`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem provenance_null_cross_zero
    (G : PositiveForm (P × U)) (p : P) (u : U)
    (hp : G.form (provenanceInclusion p) (provenanceInclusion p) = 0) :
    G.form (provenanceInclusion p) (autonomousInclusion u) = 0 :=
  G.null_orthogonal hp (autonomousInclusion u)

universe w z

variable {ι : Type w} {κ : Type z}
variable [Fintype ι] [DecidableEq ι]
variable [Fintype κ] [DecidableEq κ]

/-- In finite coordinates, a vector in the kernel of the provenance matrix is
orthogonal to every cross-block column. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/NullCrossAnnihilation/Variantfd1bb9f4205b2fded592104655e735c7a56f19f5f8f1b11d6d2805eb26b04e51.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/NullCrossAnnihilation/Variantfd1bb9f4205b2fded592104655e735c7a56f19f5f8f1b11d6d2805eb26b04e51.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ada3b13551ca1f202e4a2b71cdb4652c8a9ebb2c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
