# degreeBudget_exact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c8bfc986-e924-74aa-a71d-ec076c0ba3a7",
  "kind": "theorem",
  "lexical_name": "degreeBudget_exact",
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
  "slug": "degreebudget-exact--97676179e13bafded28bd16a",
  "source": {
    "blob": "3fe71f961a52227a9a9b5740756604923df065d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 72,
    "path": "GRWTSK/Algebra/LinearAlgebra/PrimeLogInterpolationMap/Variant6c761301b1b8985a29712ca399a3f54d5b24961a063511073303527452c0262b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:97676179e13bafded28bd16ac90817ca810150cbf310c67e6e878260887be614",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PrimeLogInterpolationMap/Variant6c761301b1b8985a29712ca399a3f54d5b24961a063511073303527452c0262b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c8bfc986-e924-74aa-a71d-ec076c0ba3a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem degreeBudget_exact (N : ℕ) :
    ∏ _j : Fin 3, (degreeBudget N - 3 * ((N : ℤ) - 1) + 1) =
      ((4 * (N : ℤ) - 3) ^ 2 + 1) ^ 3 := by
  simp [degreeBudget]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PrimeLogInterpolationMap/Variant6c761301b1b8985a29712ca399a3f54d5b24961a063511073303527452c0262b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PrimeLogInterpolationMap/Variant6c761301b1b8985a29712ca399a3f54d5b24961a063511073303527452c0262b.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3fe71f961a52227a9a9b5740756604923df065d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
