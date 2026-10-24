# quadratic_reciprocity'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:96f665e8-8038-2e13-a20b-dbb460b5cfe0",
  "kind": "theorem",
  "lexical_name": "quadratic_reciprocity'",
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
  "slug": "quadratic-reciprocity--661eabe0320a97f0094fa9f2",
  "source": {
    "blob": "49f7e6056ff97178a0913ba5b0fbc6c18ebd0525",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 425,
    "line": 407,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/JacobiSymbol/Variant953bd86aaa271c86da15e5f718d3c4433db0a716e42aba8bf8103e548c9bafe4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:661eabe0320a97f0094fa9f29ab15c4e2f16e2136f97c61a7ba22ec7dcfdf7f1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/JacobiSymbol/Variant953bd86aaa271c86da15e5f718d3c4433db0a716e42aba8bf8103e548c9bafe4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:96f665e8-8038-2e13-a20b-dbb460b5cfe0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 407–425.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quadratic_reciprocity' {a b : ℕ} (ha : Odd a) (hb : Odd b) :
    J(a | b) = qrSign b a * J(b | a) := by
  -- define the right hand side for fixed `a` as a `ℕ →* ℤ`
  let rhs : ℕ → ℕ →* ℤ := fun a =>
    { toFun := fun x => qrSign x a * J(x | a)
      map_one' := by convert ← mul_one (M := ℤ) _; (on_goal 1 => symm); all_goals apply one_left
      map_mul' := fun x y => by
        simp_rw [qrSign.mul_left x y a, Nat.cast_mul, mul_left, mul_mul_mul_comm] }
  have rhs_apply : ∀ a b : ℕ, rhs a b = qrSign b a * J(b | a) := fun a b => rfl
  refine value_at a (rhs a) (fun p pp hp => Eq.symm ?_) hb
  have hpo := pp.eq_two_or_odd'.resolve_left hp
  rw [@legendreSym.to_jacobiSym p ⟨pp⟩, rhs_apply, Nat.cast_id, qrSign.eq_iff_eq hpo ha,
    qrSign.symm hpo ha]
  refine value_at p (rhs p) (fun q pq hq => ?_) ha
  have hqo := pq.eq_two_or_odd'.resolve_left hq
  rw [rhs_apply, Nat.cast_id, ← @legendreSym.to_jacobiSym p ⟨pp⟩, qrSign.symm hqo hpo,
    qrSign.neg_one_pow hpo hqo, @legendreSym.quadratic_reciprocity' p q ⟨pp⟩ ⟨pq⟩ hp hq]

/-- The Law of Quadratic Reciprocity for the Jacobi symbol -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/JacobiSymbol/Variant953bd86aaa271c86da15e5f718d3c4433db0a716e42aba8bf8103e548c9bafe4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/JacobiSymbol/Variant953bd86aaa271c86da15e5f718d3c4433db0a716e42aba8bf8103e548c9bafe4.lean#L407).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49f7e6056ff97178a0913ba5b0fbc6c18ebd0525` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
