# accepted_shared_row_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:83a7b35c-67bf-fe22-fb47-93e595903aa9",
  "kind": "theorem",
  "lexical_name": "accepted_shared_row_eq",
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
  "slug": "accepted-shared-row-eq--0fe29ef0f853535bf6ca57a6",
  "source": {
    "blob": "e00c22869087bae331e2c32b1cadc9de863c956b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 65,
    "path": "GRWTSK/NumberTheory/Chebyshev/Checks/NewtonBlockAcceptanceControls.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0fe29ef0f853535bf6ca57a66c5503de77d44c4d5885d66fc4e4ab7247e34bfc",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/Checks/NewtonBlockAcceptanceControls.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:83a7b35c-67bf-fe22-fb47-93e595903aa9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem accepted_shared_row_eq (N : ℕ) (c : QComplex)
    (p : RationalZetaCenterEvaluation.Plan N) (a b : Transcript N)
    (S U : Finset (Fin N)) (i : Fin N) (hiS : i ∈ S) (hiU : i ∈ U)
    (ha : checkPrefix N c p a S = true) (hb : checkPrefix N c p b U = true) :
    a.prefix i = b.prefix i := by
  have h1 := ((checkPrefix_iff N c p a S).mp ha i hiS).2
  have h2 := ((checkPrefix_iff N c p b U).mp hb i hiU).2
  exact h1.symm.trans h2

/-- The returned error is part of state equality, not just the two coordinates. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Chebyshev/Checks/NewtonBlockAcceptanceControls.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/Checks/NewtonBlockAcceptanceControls.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e00c22869087bae331e2c32b1cadc9de863c956b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
