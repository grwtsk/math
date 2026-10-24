# iSupLift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:69671f7fc3f7b5b0922e5eb503a924480f11e8dab11edee70600e5f2dead3be9",
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
  "slug": "isuplift--8dfe5c8d46d3b1a80491b028",
  "source": {
    "blob": "d409b83dda9c620b7c4bf145ecb0328dd9524565",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1222,
    "line": 1191,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant0e7623e6c701612c377ef9ea6be37b7dda74ce009653c01aa0a6d3301dce0ada.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8dfe5c8d46d3b1a80491b0281eb2f06e22be33f29e35ee1e1abae91ce9ec0beb",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant0e7623e6c701612c377ef9ea6be37b7dda74ce009653c01aa0a6d3301dce0ada.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:69671f7fc3f7b5b0922e5eb503a924480f11e8dab11edee70600e5f2dead3be9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1191–1222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def iSupLift [Nonempty ι] (K : ι → Subalgebra R A) (dir : Directed (· ≤ ·) K)
    (f : ∀ i, K i →ₐ[R] B) (hf : ∀ (i j : ι) (h : K i ≤ K j), f i = (f j).comp (inclusion h))
    (T : Subalgebra R A) (hT : T = iSup K) : ↥T →ₐ[R] B :=
  { toFun := Set.iUnionLift (fun i => ↑(K i)) (fun i x => f i x)
        (fun i j x hxi hxj => by
          let ⟨k, hik, hjk⟩ := dir i j
          dsimp
          rw [hf i k hik, hf j k hjk]
          rfl)
        T (by rw [hT, coe_iSup_of_directed dir])
    map_one' := by apply Set.iUnionLift_const _ (fun _ => 1) <;> simp
    map_zero' := by dsimp; apply Set.iUnionLift_const _ (fun _ => 0) <;> simp
    map_mul' := by
      subst hT; dsimp
      apply Set.iUnionLift_binary (coe_iSup_of_directed dir) dir _ (fun _ => (· * ·))
      on_goal 3 => rw [coe_iSup_of_directed dir]
      all_goals simp
    map_add' := by
      subst hT; dsimp
      apply Set.iUnionLift_binary (coe_iSup_of_directed dir) dir _ (fun _ => (· + ·))
      on_goal 3 => rw [coe_iSup_of_directed dir]
      all_goals simp
    commutes' := fun r => by
      dsimp
      apply Set.iUnionLift_const _ (fun _ => algebraMap R _ r) <;> simp }
#align subalgebra.supr_lift Subalgebra.iSupLift

variable [Nonempty ι] {K : ι → Subalgebra R A} {dir : Directed (· ≤ ·) K} {f : ∀ i, K i →ₐ[R] B}
  {hf : ∀ (i j : ι) (h : K i ≤ K j), f i = (f j).comp (inclusion h)} {T : Subalgebra R A}
  {hT : T = iSup K}

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant0e7623e6c701612c377ef9ea6be37b7dda74ce009653c01aa0a6d3301dce0ada.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant0e7623e6c701612c377ef9ea6be37b7dda74ce009653c01aa0a6d3301dce0ada.lean#L1191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d409b83dda9c620b7c4bf145ecb0328dd9524565` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
