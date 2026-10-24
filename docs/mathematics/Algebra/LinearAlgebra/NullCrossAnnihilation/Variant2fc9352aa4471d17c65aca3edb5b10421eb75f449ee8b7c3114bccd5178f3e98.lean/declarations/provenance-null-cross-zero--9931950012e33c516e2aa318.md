# provenance_null_cross_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a84baff0ba0d9c72d6549fb07cbc8b022ed427c7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 79,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2f/2fc9352aa4471d17c65aca3edb5b10421eb75f449ee8b7c3114bccd5178f3e98.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0810175e-615a-cbcf-32b8-bb12440adcd4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:653cfd0e-97a6-e1a8-1e7b-0ca366f06e9b",
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
  "slug": "provenance-null-cross-zero--9931950012e33c516e2aa318",
  "source": {
    "blob": "a84baff0ba0d9c72d6549fb07cbc8b022ed427c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 79,
    "path": "GRWTSK/Algebra/LinearAlgebra/NullCrossAnnihilation/Variant2fc9352aa4471d17c65aca3edb5b10421eb75f449ee8b7c3114bccd5178f3e98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9931950012e33c516e2aa318a6d0152bff10c437b86f2d3312d663cb4a9770a6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/NullCrossAnnihilation/Variant2fc9352aa4471d17c65aca3edb5b10421eb75f449ee8b7c3114bccd5178f3e98.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:653cfd0e-97a6-e1a8-1e7b-0ca366f06e9b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–92.

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

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/NullCrossAnnihilation/Variant2fc9352aa4471d17c65aca3edb5b10421eb75f449ee8b7c3114bccd5178f3e98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/NullCrossAnnihilation/Variant2fc9352aa4471d17c65aca3edb5b10421eb75f449ee8b7c3114bccd5178f3e98.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a84baff0ba0d9c72d6549fb07cbc8b022ed427c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
