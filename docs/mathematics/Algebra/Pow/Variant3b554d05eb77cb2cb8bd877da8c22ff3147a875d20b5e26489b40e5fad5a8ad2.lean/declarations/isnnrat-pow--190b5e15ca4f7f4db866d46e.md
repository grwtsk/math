# isNNRat_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3063c41c-d828-7ad1-ba5d-a68a499d2c99",
  "kind": "theorem",
  "lexical_name": "isNNRat_pow",
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
  "slug": "isnnrat-pow--190b5e15ca4f7f4db866d46e",
  "source": {
    "blob": "40a261a1976620191f9815e4a987d5c0503565b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 182,
    "path": "GRWTSK/Algebra/Pow/Variant3b554d05eb77cb2cb8bd877da8c22ff3147a875d20b5e26489b40e5fad5a8ad2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:190b5e15ca4f7f4db866d46edba5a757c4b39426743a0644c156eb870d04223f",
  "verification": {
    "reference": "docs/verification/Algebra/Pow/Variant3b554d05eb77cb2cb8bd877da8c22ff3147a875d20b5e26489b40e5fad5a8ad2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3063c41c-d828-7ad1-ba5d-a68a499d2c99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isNNRat_pow {α} [Semiring α] {f : α → ℕ → α} {a : α} {an cn : ℕ} {ad b b' cd : ℕ} :
    f = HPow.hPow → IsNNRat a an ad → IsNat b b' →
    Nat.pow an b' = cn → Nat.pow ad b' = cd →
    IsNNRat (f a b) cn cd := by
  rintro rfl ⟨_, rfl⟩ ⟨rfl⟩ (rfl : an ^ b = _) (rfl : ad ^ b = _)
  have := invertiblePow (ad:α) b
  rw [← Nat.cast_pow] at this
  use this; simp [invOf_pow, Commute.mul_pow, Nat.cast_commute]

/-- Main part of `evalPow`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Pow/Variant3b554d05eb77cb2cb8bd877da8c22ff3147a875d20b5e26489b40e5fad5a8ad2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Pow/Variant3b554d05eb77cb2cb8bd877da8c22ff3147a875d20b5e26489b40e5fad5a8ad2.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40a261a1976620191f9815e4a987d5c0503565b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
