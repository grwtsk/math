# provenance_null_cross_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:24e11cd0-1520-094d-3aea-c231ea98dd77",
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
  "slug": "provenance-null-cross-zero--27ec36abf6c1f512e0e3b9d2",
  "source": {
    "blob": "bc238d3326ed671aa58ca96b1659bc75b8eea490",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 89,
    "path": "GRWTSK/Algebra/LinearAlgebra/NullCrossAnnihilation/Variant4f6bcb9a5f0694d47c2caf5067202b00d88da0d5adc8fbb949fe51d3247afc36.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27ec36abf6c1f512e0e3b9d2920d78020ec1c174c94575d7354a1fdc2f1156ef",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/NullCrossAnnihilation/Variant4f6bcb9a5f0694d47c2caf5067202b00d88da0d5adc8fbb949fe51d3247afc36.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:24e11cd0-1520-094d-3aea-c231ea98dd77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 89–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem provenance_null_cross_zero
    (G : PositiveForm (P × U)) (p : P) (u : U)
    (hp : G.form (provenanceInclusion p) (provenanceInclusion p) = 0) :
    G.form (provenanceInclusion p) (autonomousInclusion u) = 0 :=
  G.null_orthogonal hp (autonomousInclusion u)

universe w z

variable {ι : Type w} {κ : Type z}
variable [Fintype ι]
variable [Fintype κ]

/-- In finite coordinates, a vector in the kernel of the provenance matrix is
orthogonal to every cross-block column. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/NullCrossAnnihilation/Variant4f6bcb9a5f0694d47c2caf5067202b00d88da0d5adc8fbb949fe51d3247afc36.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/NullCrossAnnihilation/Variant4f6bcb9a5f0694d47c2caf5067202b00d88da0d5adc8fbb949fe51d3247afc36.lean#L89).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc238d3326ed671aa58ca96b1659bc75b8eea490` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
