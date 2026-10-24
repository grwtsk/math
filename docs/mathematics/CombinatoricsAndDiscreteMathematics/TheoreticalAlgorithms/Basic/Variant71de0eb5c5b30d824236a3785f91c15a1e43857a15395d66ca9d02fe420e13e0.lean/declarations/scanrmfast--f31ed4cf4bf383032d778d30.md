# scanrMFast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a2998ebc9d4e261f8f654d53a5d32a09f94ad50ab8ebe8533eaa82271f0bd020",
  "kind": "def",
  "lexical_name": "scanrMFast",
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
  "slug": "scanrmfast--f31ed4cf4bf383032d778d30",
  "source": {
    "blob": "5e454b7f60ac073d7e4122beff9c566b4e50be21",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 97,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant71de0eb5c5b30d824236a3785f91c15a1e43857a15395d66ca9d02fe420e13e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f31ed4cf4bf383032d778d30512e1d375d4638bdd3ffede50fb62d3caf205aa8",
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

Occurrence: `declaration:a2998ebc9d4e261f8f654d53a5d32a09f94ad50ab8ebe8533eaa82271f0bd020`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def scanrMFast [Monad m] (f : α → β → m β) (init : β) (as : Vector α n)
    (h_su : n < USize.size) : m (Vector β (n + 1)) :=
  have h_n := USize.toNat_ofNat_of_le_of_lt h_su (Nat.le_refl n)
  loop init (i := USize.ofNat n) (n_usize := USize.ofNat n)
    (h_n := h_n) (h_i := by simp [h_n]) (acc := Vector.replicate (n + 1) init)
where
  @[specialize]
  loop (cur : β) (i n_usize : USize) (h_n : n_usize.toNat = n)
      (h_i : i.toNat ≤ n) (acc : Vector β (n + 1)) : m (Vector β (n + 1)) := do
    if h_gt : 0 < i then
      have h_gt_nat : 0 < i.toNat := USize.lt_iff_toNat_lt.mp h_gt
      let pred := i - 1
      have h_pred : pred.toNat = i.toNat - 1 := USize.pred_toNat h_gt
      let next ← f (as.uget pred (by omega)) cur
      loop next pred n_usize h_n (by omega) (acc.uset pred next (by omega))
    else
      return acc
  termination_by i.toNat
  decreasing_by
    rw [h_pred]
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant71de0eb5c5b30d824236a3785f91c15a1e43857a15395d66ca9d02fe420e13e0.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e454b7f60ac073d7e4122beff9c566b4e50be21` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
