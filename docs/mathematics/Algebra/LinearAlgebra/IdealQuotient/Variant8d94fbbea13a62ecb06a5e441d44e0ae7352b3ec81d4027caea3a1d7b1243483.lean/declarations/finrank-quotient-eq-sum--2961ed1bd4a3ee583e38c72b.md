# finrank_quotient_eq_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9955cfcefaa288ed978def452bf44bf5310e73e7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 57,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8d/8d94fbbea13a62ecb06a5e441d44e0ae7352b3ec81d4027caea3a1d7b1243483.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:950ea7fa-8770-4276-813d-196d09c8dd0a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:09620cec-2088-9ab9-5562-3c73c4918723",
  "kind": "theorem",
  "lexical_name": "finrank_quotient_eq_sum",
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
  "slug": "finrank-quotient-eq-sum--2961ed1bd4a3ee583e38c72b",
  "source": {
    "blob": "9955cfcefaa288ed978def452bf44bf5310e73e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 57,
    "path": "GRWTSK/Algebra/LinearAlgebra/IdealQuotient/Variant8d94fbbea13a62ecb06a5e441d44e0ae7352b3ec81d4027caea3a1d7b1243483.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2961ed1bd4a3ee583e38c72bd86f783b1aeeb60f70b5deab245e9237880cc590",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/IdealQuotient/Variant8d94fbbea13a62ecb06a5e441d44e0ae7352b3ec81d4027caea3a1d7b1243483.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:09620cec-2088-9ab9-5562-3c73c4918723`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finrank_quotient_eq_sum {ι} [Fintype ι] (b : Basis ι R S) [Nontrivial F]
    [∀ i, Module.Free F (R ⧸ span ({I.smithCoeffs b hI i} : Set R))]
    [∀ i, Module.Finite F (R ⧸ span ({I.smithCoeffs b hI i} : Set R))] :
    Module.finrank F (S ⧸ I) =
      ∑ i, Module.finrank F (R ⧸ span ({I.smithCoeffs b hI i} : Set R)) := by
  -- slow, and dot notation doesn't work
  rw [LinearEquiv.finrank_eq <| quotientEquivDirectSum F b hI, Module.finrank_directSum]

end Ideal
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/IdealQuotient/Variant8d94fbbea13a62ecb06a5e441d44e0ae7352b3ec81d4027caea3a1d7b1243483.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/IdealQuotient/Variant8d94fbbea13a62ecb06a5e441d44e0ae7352b3ec81d4027caea3a1d7b1243483.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9955cfcefaa288ed978def452bf44bf5310e73e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
