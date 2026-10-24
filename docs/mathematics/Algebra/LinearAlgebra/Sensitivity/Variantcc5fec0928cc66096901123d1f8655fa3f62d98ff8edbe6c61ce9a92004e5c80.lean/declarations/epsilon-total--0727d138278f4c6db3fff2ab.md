# epsilon_total

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:202ca492-2319-e8ac-4614-d5fd8ae14743",
  "kind": "theorem",
  "lexical_name": "epsilon_total",
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
  "slug": "epsilon-total--0727d138278f4c6db3fff2ab",
  "source": {
    "blob": "f33e620e793d5452a8472b0adfe16c24e3a0d7e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 255,
    "line": 237,
    "path": "GRWTSK/Algebra/LinearAlgebra/Sensitivity/Variantcc5fec0928cc66096901123d1f8655fa3f62d98ff8edbe6c61ce9a92004e5c80.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0727d138278f4c6db3fff2ab39d8834d8672f2546907d5e402a9af98f6357663",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Sensitivity/Variantcc5fec0928cc66096901123d1f8655fa3f62d98ff8edbe6c61ce9a92004e5c80.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:202ca492-2319-e8ac-4614-d5fd8ae14743`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 237–255.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem epsilon_total {v : V n} (h : ∀ p : Q n, (ε p) v = 0) : v = 0 := by
  induction' n with n ih
  · dsimp [ε] at h; exact h fun _ => true
  · cases' v with v₁ v₂
    ext <;> change _ = (0 : V n) <;> simp only <;> apply ih <;> intro p <;>
      [let q : Q n.succ := fun i => if h : i = 0 then true else p (i.pred h);
      let q : Q n.succ := fun i => if h : i = 0 then false else p (i.pred h)]
    all_goals
      specialize h q
      first
      | rw [ε, show q 0 = true from rfl, Bool.cond_true] at h
      | rw [ε, show q 0 = false from rfl, Bool.cond_false] at h
      rwa [show p = π q by ext; simp [Fin.succ_ne_zero, π]]
#align sensitivity.epsilon_total Sensitivity.epsilon_total

open Module

/-- `e` and `ε` are dual families of vectors. It implies that `e` is indeed a basis
and `ε` computes coefficients of decompositions of vectors on that basis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Sensitivity/Variantcc5fec0928cc66096901123d1f8655fa3f62d98ff8edbe6c61ce9a92004e5c80.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Sensitivity/Variantcc5fec0928cc66096901123d1f8655fa3f62d98ff8edbe6c61ce9a92004e5c80.lean#L237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f33e620e793d5452a8472b0adfe16c24e3a0d7e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
