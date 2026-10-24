# operator_selfAdjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1def3f06-3b73-101a-44d3-4b782c133a97",
  "kind": "theorem",
  "lexical_name": "operator_selfAdjoint",
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
  "slug": "operator-selfadjoint--a9cf77f5893628bb5146fee5",
  "source": {
    "blob": "e40eefc2f81f7724f5707ac7ab20ca6cdc785903",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 215,
    "path": "GRWTSK/Analysis/Opposition/Variantbe9135c220e6a53b098db2941f9e6f8e0e20dedd4050a6b02e537a7c5874d7c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a9cf77f5893628bb5146fee59e0ccddddeab8fc58a2666eded5fd43c88f72af8",
  "verification": {
    "reference": "docs/verification/Analysis/Opposition/Variantbe9135c220e6a53b098db2941f9e6f8e0e20dedd4050a6b02e537a7c5874d7c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1def3f06-3b73-101a-44d3-4b782c133a97`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem operator_selfAdjoint
    (opposition : OppositionStructure kernel) :
    opposition.operator.adjoint = opposition.operator := by
  rw [operator]
  rw [LinearIsometryEquiv.adjoint_eq_symm]
  apply ContinuousLinearMap.ext
  intro vector
  apply opposition.unitary.injective
  simpa using (opposition.unitary_involutive vector).symm

/-- Concept-level exact opposition in the base role.  It is defined by the
role-induced unitary `J`, not by a negative similarity score and not by
coordinatewise negation in a finite factorization. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Opposition/Variantbe9135c220e6a53b098db2941f9e6f8e0e20dedd4050a6b02e537a7c5874d7c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Opposition/Variantbe9135c220e6a53b098db2941f9e6f8e0e20dedd4050a6b02e537a7c5874d7c1.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e40eefc2f81f7724f5707ac7ab20ca6cdc785903` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
