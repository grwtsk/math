# cast_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:202c267e-348a-fe70-9c36-9c9d3997ec2d",
  "kind": "theorem",
  "lexical_name": "cast_add",
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
  "slug": "cast-add--b8f0cc2cd606c3a12e9456f5",
  "source": {
    "blob": "afcb5e9125054425b80df98fa917aa7fa39fcbe7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 115,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant2cc4503915d6165f0cd02e765a4ea9a2b61e7e1d70644dfcf0cc09fa44a8c664.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b8f0cc2cd606c3a12e9456f5f322c65cba70913f4a31ec623614ba81fb61d2c0",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant2cc4503915d6165f0cd02e765a4ea9a2b61e7e1d70644dfcf0cc09fa44a8c664.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:202c267e-348a-fe70-9c36-9c9d3997ec2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cast_add : ∀ m n, ((m + n : ℤ) : R) = m + n
  | (m : ℕ), (n : ℕ) => by simp [← Int.ofNat_add, Nat.cast_add]
  | (m : ℕ), -[n+1] => by erw [cast_subNatNat, cast_ofNat, cast_negSucc, sub_eq_add_neg]
  | -[m+1], (n : ℕ) => by
    erw [cast_subNatNat, cast_ofNat, cast_negSucc, sub_eq_iff_eq_add, add_assoc,
      eq_neg_add_iff_add_eq, ← Nat.cast_add, ← Nat.cast_add, Nat.add_comm]
  | -[m+1], -[n+1] =>
    show (-[m + n + 1+1] : R) = _ by
      rw [cast_negSucc, cast_negSucc, cast_negSucc, ← neg_add_rev, ← Nat.cast_add,
        Nat.add_right_comm m n 1, Nat.add_assoc, Nat.add_comm]
#align int.cast_add Int.cast_addₓ
-- type had `HasLiftT`

@[simp, norm_cast]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant2cc4503915d6165f0cd02e765a4ea9a2b61e7e1d70644dfcf0cc09fa44a8c664.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant2cc4503915d6165f0cd02e765a4ea9a2b61e7e1d70644dfcf0cc09fa44a8c664.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afcb5e9125054425b80df98fa917aa7fa39fcbe7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
