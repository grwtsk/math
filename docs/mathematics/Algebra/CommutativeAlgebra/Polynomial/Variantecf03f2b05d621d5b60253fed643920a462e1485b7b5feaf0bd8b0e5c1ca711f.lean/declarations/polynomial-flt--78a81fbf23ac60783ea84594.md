# Polynomial.flt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fbdcfc17-57ee-431f-720d-d95f301fbce2",
  "kind": "theorem",
  "lexical_name": "Polynomial.flt",
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
  "slug": "polynomial-flt--78a81fbf23ac60783ea84594",
  "source": {
    "blob": "a85343fffb3fbeebf89f1dedce8eef23dd12dc37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 226,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variantecf03f2b05d621d5b60253fed643920a462e1485b7b5feaf0bd8b0e5c1ca711f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:78a81fbf23ac60783ea84594961cc5a10d97ad6d0abf4b00a6ad2043ef2e611f",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Polynomial/Variantecf03f2b05d621d5b60253fed643920a462e1485b7b5feaf0bd8b0e5c1ca711f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fbdcfc17-57ee-431f-720d-d95f301fbce2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Polynomial.flt
    {n : ℕ} (hn : 3 ≤ n) (chn : (n : k) ≠ 0)
    {a b c : k[X]} (ha : a ≠ 0) (hb : b ≠ 0) (hc : c ≠ 0)
    (hab : IsCoprime a b) (heq : a ^ n + b ^ n = c ^ n) :
    a.natDegree = 0 ∧ b.natDegree = 0 ∧ c.natDegree = 0 := by
  have hn' : 0 < n := by linarith
  rw [← sub_eq_zero, ← one_mul (a ^ n), ← one_mul (b ^ n), ← one_mul (c ^ n), sub_eq_add_neg,
    ← neg_mul] at heq
  have hone : (1 : k[X]) = C 1 := by rfl
  have hneg_one : (-1 : k[X]) = C (-1) := by simp only [map_neg, map_one]
  simp_rw [hneg_one, hone] at heq
  apply flt_catalan hn' hn' hn' _
    chn chn chn ha hb hc hab one_ne_zero one_ne_zero (neg_ne_zero.mpr one_ne_zero) heq
  have eq_lhs : n * n + n * n + n * n = 3 * n * n := by ring
  rw [eq_lhs, mul_assoc, mul_assoc]
  exact Nat.mul_le_mul_right (n * n) hn

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Polynomial/Variantecf03f2b05d621d5b60253fed643920a462e1485b7b5feaf0bd8b0e5c1ca711f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Polynomial/Variantecf03f2b05d621d5b60253fed643920a462e1485b7b5feaf0bd8b0e5c1ca711f.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a85343fffb3fbeebf89f1dedce8eef23dd12dc37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
