# Expr.toPoly_k_eq_toPoly

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:89d21575-b837-65c1-3102-cc4d92710473",
  "kind": "theorem",
  "lexical_name": "Expr.toPoly_k_eq_toPoly",
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
  "slug": "expr-topoly-k-eq-topoly--70f5402b588e7c2c77be53c3",
  "source": {
    "blob": "bcd7a748f78c5b7e651f5185685c2284a863037b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 787,
    "line": 762,
    "path": "GRWTSK/Algebra/CommSolver/Variant51dea432e1f2160fa698194ab799532bebaf273f465d3edcab41ea0f6f4566b1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70f5402b588e7c2c77be53c30abf9e34054f333ceb9cac1759e5d1c3c0ea12da",
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

Occurrence: `result:89d21575-b837-65c1-3102-cc4d92710473`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 762–787.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem Expr.toPoly_k_eq_toPoly (e : Expr) : e.toPoly_k = e.toPoly := by
  induction e <;> simp only [toPoly, toPoly_k]
  next a ih => rw [Poly.mulConst_k_eq_mulConst]; congr
  case add => rw [← Poly.combine_k_eq_combine]; congr
  case sub => rw [← Poly.combine_k_eq_combine, ← Poly.mulConst_k_eq_mulConst]; congr
  case mul => congr
  case pow a k ih =>
    rw [cond_eq_ite]; split
    next h => rw [Nat.beq_eq_true_eq, ← Nat.beq_eq] at h; rw [h]
    next h =>
      rw [Nat.beq_eq_true_eq, ← Nat.beq_eq, Bool.not_eq_true] at h; rw [h]; dsimp only
      show
        (Expr.rec (fun n => .num (n^k)) (fun n => .num (n^k)) (fun n => (.num (n^k)))
          (fun x => .ofMon (.mult {x, k} .unit)) (fun _ _ => a.toPoly_k.pow k)
          (fun _ _ _ _ => a.toPoly_k.pow k)
          (fun _ _ _ _ => a.toPoly_k.pow k)
          (fun _ _ _ _ => a.toPoly_k.pow k)
          (fun _ _ _ => a.toPoly_k.pow k)
          a) = match a with
            | num n => Poly.num (n ^ k)
            | .intCast n => .num (n^k)
            | .natCast n => .num (n^k)
            | var x => Poly.ofMon (Mon.mult { x := x, k := k } Mon.unit)
            | x => a.toPoly.pow k
      cases a <;> try simp [*]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/CommSolver/Variant51dea432e1f2160fa698194ab799532bebaf273f465d3edcab41ea0f6f4566b1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommSolver/Variant51dea432e1f2160fa698194ab799532bebaf273f465d3edcab41ea0f6f4566b1.lean#L762).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bcd7a748f78c5b7e651f5185685c2284a863037b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
