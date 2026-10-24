# iSupLift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0b2c9f68bf76db41f47864c4368811a2e1b4fd6d20d8b1200d0f96560a6e9a8c",
  "kind": "def",
  "lexical_name": "iSupLift",
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
  "slug": "isuplift--927f80ecb302dfede056698d",
  "source": {
    "blob": "9f7129dabe3f2b7c4ea97c64debf926ef739898d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 56,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Directed/Variantb6d8c9f7650653d1a12460596bc9eda024a53dca63a88a6654a78458b8b11c31.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:927f80ecb302dfede056698df999d8d92e0baf6c533f39e9c37d03d239e7a674",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Directed/Variantb6d8c9f7650653d1a12460596bc9eda024a53dca63a88a6654a78458b8b11c31.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0b2c9f68bf76db41f47864c4368811a2e1b4fd6d20d8b1200d0f96560a6e9a8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def iSupLift (dir : Directed (· ≤ ·) K) (f : ∀ i, K i →ₐ[R] B)
    (hf : ∀ (i j : ι) (h : K i ≤ K j), f i = (f j).comp (inclusion h))
    (T : Subalgebra R A) (hT : T ≤ iSup K) : ↥T →ₐ[R] B := by
  let compat :
      ∀ (i j) (x : A) (hxi : x ∈ (K i : Set A)) (hxj : x ∈ (K j : Set A)),
        f i ⟨x, hxi⟩ = f j ⟨x, hxj⟩ := by
    intro i j x hxi hxj
    rcases dir i j with ⟨k, hik, hjk⟩
    simp [hf i k hik, hf j k hjk]
  let liftSup : ((iSup K : Subalgebra R A)) →ₐ[R] B :=
    { toFun :=
        Set.iUnionLift (fun i => ↑(K i)) (fun i x => f i x) compat
          ((iSup K : Subalgebra R A) : Set A)
          (le_of_eq <| coe_iSup_of_directed (K := K) dir)
      map_one' := by
        dsimp
        exact Set.iUnionLift_const _ (fun i : ι => (1 : K i)) (fun _ => rfl) _ (by simp)
      map_zero' := by
        dsimp
        exact Set.iUnionLift_const _ (fun i : ι => (0 : K i)) (fun _ => rfl) _ (by simp)
      map_mul' := by
        dsimp
        apply Set.iUnionLift_binary (coe_iSup_of_directed (K := K) dir) dir _ (fun _ => (· * ·))
        all_goals simp
      map_add' := by
        dsimp
        apply Set.iUnionLift_binary (coe_iSup_of_directed (K := K) dir) dir _ (fun _ => (· + ·))
        all_goals simp
      commutes' := fun r => by
        dsimp
        exact
          Set.iUnionLift_const _ (fun i : ι => algebraMap R (K i) r) (fun _ => rfl) _ (by simp) }
  exact liftSup.comp (inclusion hT)


@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Directed/Variantb6d8c9f7650653d1a12460596bc9eda024a53dca63a88a6654a78458b8b11c31.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Directed/Variantb6d8c9f7650653d1a12460596bc9eda024a53dca63a88a6654a78458b8b11c31.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f7129dabe3f2b7c4ea97c64debf926ef739898d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
