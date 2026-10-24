# scanlMFast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2c9803cc0b6ab1ba07c0a2d3e4dd8370aadc2c8471b38ca6c0785ceb5a1ad07a",
  "kind": "def",
  "lexical_name": "scanlMFast",
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
  "slug": "scanlmfast--d42f433b2dea8859dfd2b40a",
  "source": {
    "blob": "5e454b7f60ac073d7e4122beff9c566b4e50be21",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 51,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant71de0eb5c5b30d824236a3785f91c15a1e43857a15395d66ca9d02fe420e13e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d42f433b2dea8859dfd2b40a6516274955c0519a93778171a68b70ca6c06533a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant71de0eb5c5b30d824236a3785f91c15a1e43857a15395d66ca9d02fe420e13e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2c9803cc0b6ab1ba07c0a2d3e4dd8370aadc2c8471b38ca6c0785ceb5a1ad07a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def scanlMFast [Monad m] (f : β → α → m β) (init : β) (as : Vector α n)
    (h_su : n < USize.size) : m (Vector β (n + 1)) :=
  loop init (i := 0) (n_usize := USize.ofNat n)
    (h_n := USize.toNat_ofNat_of_le_of_lt h_su (Nat.le_refl n))
    (h_i := by simp [USize.toNat_zero])
    (acc := Vector.emptyWithCapacity (n + 1))
where
  @[specialize]
  loop (cur : β) (i n_usize : USize) (h_n : n_usize.toNat = n)
      (h_i : i.toNat ≤ n) (acc : Vector β i.toNat) : m (Vector β (n + 1)) := do
    if h_lt : i < n_usize then
      have h_lt_nat : i.toNat < n := by rw [← h_n]; exact USize.lt_iff_toNat_lt.mp h_lt
      have h_inc : (i + 1).toNat = i.toNat + 1 := USize.succ_toNat_of_lt h_lt (by omega) h_su
      let next ← f cur (as.uget i (by omega))
      loop next (i + 1) n_usize h_n (by omega) (acc.push cur |>.cast h_inc.symm)
    else
      have : i.toNat = n := by grind only [USize.lt_iff_toNat_lt]
      return acc.push cur |>.cast (by omega)
  termination_by n - i.toNat
  decreasing_by
    rw [h_inc]
    omega

@[inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant71de0eb5c5b30d824236a3785f91c15a1e43857a15395d66ca9d02fe420e13e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant71de0eb5c5b30d824236a3785f91c15a1e43857a15395d66ca9d02fe420e13e0.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e454b7f60ac073d7e4122beff9c566b4e50be21` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
