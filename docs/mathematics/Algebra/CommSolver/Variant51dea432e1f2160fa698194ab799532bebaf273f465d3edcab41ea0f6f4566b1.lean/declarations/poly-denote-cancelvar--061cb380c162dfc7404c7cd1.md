# Poly.denote_cancelVar'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bcd7a748f78c5b7e651f5185685c2284a863037b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1288,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/51/51dea432e1f2160fa698194ab799532bebaf273f465d3edcab41ea0f6f4566b1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8f63b176-7ae6-b29d-098a-14a1a859f15c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3527276e-2c65-62c1-4d27-0c7799d7fad7",
  "kind": "theorem",
  "lexical_name": "Poly.denote_cancelVar'",
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
  "slug": "poly-denote-cancelvar--061cb380c162dfc7404c7cd1",
  "source": {
    "blob": "bcd7a748f78c5b7e651f5185685c2284a863037b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1312,
    "line": 1288,
    "path": "GRWTSK/Algebra/CommSolver/Variant51dea432e1f2160fa698194ab799532bebaf273f465d3edcab41ea0f6f4566b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:061cb380c162dfc7404c7cd1dfcc7ba69ee4d91c7e835c3fb6fb6e4e1fdf8e6d",
  "verification": {
    "reference": "docs/verification/Algebra/CommSolver/Variant51dea432e1f2160fa698194ab799532bebaf273f465d3edcab41ea0f6f4566b1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3527276e-2c65-62c1-4d27-0c7799d7fad7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1288–1312.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Poly.denote_cancelVar' {α} [CommRing α] (ctx : Context α) (p : Poly) (c : Int) (x : Var) (acc : Poly)
    : c ≠ 0 → c * x.denote ctx = 1 → (p.cancelVar' c x acc).denote ctx = p.denote ctx + acc.denote ctx := by
  intro h₁ h₂
  fun_induction cancelVar'
  next acc k => simp [denote_addConst, denote, Semiring.add_comm]
  next h ih =>
    simp [ih, denote_insert, denote]
    conv => rhs; rw [Mon.denote_cancelVar (x := x)]
    simp [← Semiring.add_assoc]
    congr 1
    rw [Semiring.add_comm, Ring.zsmul_eq_intCast_mul,]
    congr 1
    simp +zetaDelta [Int.dvd_def] at h
    have ⟨d, h⟩ := h.2
    simp +zetaDelta [h]
    rw [Int.mul_ediv_cancel_left _ (Int.pow_ne_zero h₁)]
    rw [Ring.intCast_mul]
    conv => rhs; lhs; rw [CommSemiring.mul_comm]
    rw [Semiring.mul_assoc, Ring.intCast_pow]
    congr 1
    rw [← Semiring.mul_assoc, ← CommSemiring.mul_pow, h₂, Semiring.one_pow, Semiring.one_mul]
  next ih =>
    simp [ih, denote_insert, denote, Ring.zsmul_eq_intCast_mul, Semiring.add_assoc,
      Semiring.add_comm, add_left_comm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/CommSolver/Variant51dea432e1f2160fa698194ab799532bebaf273f465d3edcab41ea0f6f4566b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommSolver/Variant51dea432e1f2160fa698194ab799532bebaf273f465d3edcab41ea0f6f4566b1.lean#L1288).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bcd7a748f78c5b7e651f5185685c2284a863037b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
