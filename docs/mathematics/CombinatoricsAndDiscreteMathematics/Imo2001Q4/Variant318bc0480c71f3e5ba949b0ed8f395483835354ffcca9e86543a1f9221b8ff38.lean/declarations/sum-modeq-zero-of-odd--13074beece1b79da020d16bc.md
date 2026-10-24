# sum_modEq_zero_of_odd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:de549d92-343f-cc6b-e3b6-4e51636f6f75",
  "kind": "lemma",
  "lexical_name": "sum_modEq_zero_of_odd",
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
  "slug": "sum-modeq-zero-of-odd--13074beece1b79da020d16bc",
  "source": {
    "blob": "e906ce98d4c35c1ddaa389e0ef7b1be30afa35fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 97,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Imo2001Q4/Variant318bc0480c71f3e5ba949b0ed8f395483835354ffcca9e86543a1f9221b8ff38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13074beece1b79da020d16bcafcd17b02fd7db977a46c476b811efcf357388d5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Imo2001Q4/Variant318bc0480c71f3e5ba949b0ed8f395483835354ffcca9e86543a1f9221b8ff38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:de549d92-343f-cc6b-e3b6-4e51636f6f75`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sum_modEq_zero_of_odd (hn : Odd n) : ∑ a, S c a ≡ 0 [ZMOD n !] := by
  unfold S; rw [sum_comm]
  conv_lhs => enter [2, i, 2, a]; rw [← Nat.cast_one, ← Nat.cast_add]
  simp_rw [← mul_sum, ← Nat.cast_sum]
  have eqv : ∀ i, c i * ↑(∑ a : Perm (Fin n), ((a i).1 + 1)) =
      c i * ((n - 1)! * (n * (n + 1) / 2) : ℕ) := fun i ↦ by rw [sum_perm_add_one hn.pos]
  rw [sum_congr rfl fun i _ ↦ eqv i, ← sum_mul,
    Nat.mul_div_assoc _ (hn.add_odd odd_one).two_dvd, ← mul_assoc, mul_comm _ n,
    Nat.mul_factorial_pred hn.pos.ne', Nat.cast_mul, ← mul_assoc, ← mul_rotate]
  exact (Int.dvd_mul_left ..).modEq_zero_int

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Imo2001Q4/Variant318bc0480c71f3e5ba949b0ed8f395483835354ffcca9e86543a1f9221b8ff38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Imo2001Q4/Variant318bc0480c71f3e5ba949b0ed8f395483835354ffcca9e86543a1f9221b8ff38.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e906ce98d4c35c1ddaa389e0ef7b1be30afa35fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
