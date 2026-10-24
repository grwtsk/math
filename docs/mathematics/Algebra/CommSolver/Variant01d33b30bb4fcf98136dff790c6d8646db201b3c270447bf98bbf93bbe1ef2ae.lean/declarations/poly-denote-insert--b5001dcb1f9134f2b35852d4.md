# Poly.denote_insert

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:13457486-7e6e-4f93-93fa-78a8887d1430",
  "kind": "theorem",
  "lexical_name": "Poly.denote_insert",
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
  "slug": "poly-denote-insert--b5001dcb1f9134f2b35852d4",
  "source": {
    "blob": "aa65ef7349ca6f9f09250eab10dd531b09978f80",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1157,
    "line": 1141,
    "path": "GRWTSK/Algebra/CommSolver/Variant01d33b30bb4fcf98136dff790c6d8646db201b3c270447bf98bbf93bbe1ef2ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b5001dcb1f9134f2b35852d427a3208ef74ee73939a078a345fe6318313950ce",
  "verification": {
    "reference": "docs/verification/Algebra/CommSolver/Variant01d33b30bb4fcf98136dff790c6d8646db201b3c270447bf98bbf93bbe1ef2ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:13457486-7e6e-4f93-93fa-78a8887d1430`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1141–1157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Poly.denote_insert {α} [Ring α] (ctx : Context α) (k : Int) (m : Mon) (p : Poly)
    : (insert k m p).denote ctx = k * m.denote ctx + p.denote ctx := by
  simp [insert, cond_eq_ite] <;> split
  next => simp [*, intCast_zero, zero_mul, zero_add]
  next =>
    split
    next h =>
      simp at h <;> simp [*, Mon.denote, denote_addConst, mul_one, add_comm]
    next =>
      fun_induction insert.go <;> simp_all +zetaDelta [denote, zsmul_eq_intCast_mul]
      next h₁ h₂ =>
        rw [← add_assoc, Mon.eq_of_grevlex h₁, ← right_distrib, ← intCast_add, h₂, intCast_zero, zero_mul, zero_add]
      next h₁ _ =>
        rw [intCast_add, right_distrib, add_assoc, Mon.eq_of_grevlex h₁]
      next =>
        rw [add_left_comm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/CommSolver/Variant01d33b30bb4fcf98136dff790c6d8646db201b3c270447bf98bbf93bbe1ef2ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommSolver/Variant01d33b30bb4fcf98136dff790c6d8646db201b3c270447bf98bbf93bbe1ef2ae.lean#L1141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa65ef7349ca6f9f09250eab10dd531b09978f80` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
