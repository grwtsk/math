# generator_transport_of_matrix_expansion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:88409502-5545-b7d4-62f4-c7a993bdebb5",
  "kind": "theorem",
  "lexical_name": "generator_transport_of_matrix_expansion",
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
  "slug": "generator-transport-of-matrix-expansion--aaabb5e174e07e01ab6b9015",
  "source": {
    "blob": "34b9958f0e469f0dcd228293f0362c5add26a550",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 220,
    "path": "GRWTSK/Algebra/LinearAlgebra/FutureObservableVerified/Variantc0b47cb45f08b72dcb87590bbc9bb2d9912be2e02d92dc8284756a631db918ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aaabb5e174e07e01ab6b901524d35e969034eddc48ece0d1e42fb52fee786149",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FutureObservableVerified/Variantc0b47cb45f08b72dcb87590bbc9bb2d9912be2e02d92dc8284756a631db918ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88409502-5545-b7d4-62f4-c7a993bdebb5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem generator_transport_of_matrix_expansion
    (forms : Basis → Matrix ι ι ℚ) (M : Matrix ι ι ℚ)
    (T : Matrix Basis Basis ℚ)
    (closed : ∀ j, pullback (forms j) M = ∑ k, T j k • forms k) (j : Basis)
    (x : ι → ℚ) :
    quadratic (forms j) (M.mulVec x) = T j ⬝ᵥ (fun k => quadratic (forms k) x) := by
  rw [← quadratic_pullback, closed j, quadratic_expansion]

/-- Quadratic-only observations legitimately identify the two orientations. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FutureObservableVerified/Variantc0b47cb45f08b72dcb87590bbc9bb2d9912be2e02d92dc8284756a631db918ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FutureObservableVerified/Variantc0b47cb45f08b72dcb87590bbc9bb2d9912be2e02d92dc8284756a631db918ab.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34b9958f0e469f0dcd228293f0362c5add26a550` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
