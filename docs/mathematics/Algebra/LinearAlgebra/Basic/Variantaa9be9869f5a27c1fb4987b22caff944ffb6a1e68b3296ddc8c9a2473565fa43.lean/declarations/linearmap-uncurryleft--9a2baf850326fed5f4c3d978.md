# LinearMap.uncurryLeft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1077a7b58b40cac5d05a2edb21420fe534e072c819b05ae0daf76973ba279ced",
  "kind": "def",
  "lexical_name": "LinearMap.uncurryLeft",
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
  "slug": "linearmap-uncurryleft--9a2baf850326fed5f4c3d978",
  "source": {
    "blob": "c640b7ef79cb08724967a8bfaf13fe4316cd49db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1245,
    "line": 1218,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantaa9be9869f5a27c1fb4987b22caff944ffb6a1e68b3296ddc8c9a2473565fa43.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9a2baf850326fed5f4c3d978239239a03956a97e7365045720028e9833804735",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantaa9be9869f5a27c1fb4987b22caff944ffb6a1e68b3296ddc8c9a2473565fa43.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1077a7b58b40cac5d05a2edb21420fe534e072c819b05ae0daf76973ba279ced`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1218–1245.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def LinearMap.uncurryLeft (f : M 0 →ₗ[R] MultilinearMap R (fun i : Fin n => M i.succ) M₂) :
    MultilinearMap R M M₂ where
  toFun m := f (m 0) (tail m)
  map_add' := @fun dec m i x y => by
    -- porting note: `clear` not necessary in Lean 3 due to not being in the instance cache
    rw [Subsingleton.elim dec (by clear dec; infer_instance)]; clear dec
    by_cases h : i = 0
    · subst i
      simp only [update_same, map_add, tail_update_zero, MultilinearMap.add_apply]
    · simp_rw [update_noteq (Ne.symm h)]
      revert x y
      rw [← succ_pred i h]
      intro x y
      rw [tail_update_succ, MultilinearMap.map_add, tail_update_succ, tail_update_succ]
  map_smul' := @fun dec m i c x => by
    -- porting note: `clear` not necessary in Lean 3 due to not being in the instance cache
    rw [Subsingleton.elim dec (by clear dec; infer_instance)]; clear dec
    by_cases h : i = 0
    · subst i
      simp only [update_same, map_smul, tail_update_zero, MultilinearMap.smul_apply]
    · simp_rw [update_noteq (Ne.symm h)]
      revert x
      rw [← succ_pred i h]
      intro x
      rw [tail_update_succ, tail_update_succ, MultilinearMap.map_smul]
#align linear_map.uncurry_left LinearMap.uncurryLeft

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantaa9be9869f5a27c1fb4987b22caff944ffb6a1e68b3296ddc8c9a2473565fa43.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantaa9be9869f5a27c1fb4987b22caff944ffb6a1e68b3296ddc8c9a2473565fa43.lean#L1218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c640b7ef79cb08724967a8bfaf13fe4316cd49db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
