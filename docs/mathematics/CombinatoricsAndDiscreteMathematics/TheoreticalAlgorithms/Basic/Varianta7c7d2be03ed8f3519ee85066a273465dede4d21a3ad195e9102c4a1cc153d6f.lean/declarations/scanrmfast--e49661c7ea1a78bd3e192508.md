# scanrMFast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aa9046159851347cc8d7ea8276485cbe62ae186303328e4107d3c73833fd40b9",
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
  "slug": "scanrmfast--e49661c7ea1a78bd3e192508",
  "source": {
    "blob": "97231746c799e53795db471232aebef9fc17642b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 305,
    "line": 264,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta7c7d2be03ed8f3519ee85066a273465dede4d21a3ad195e9102c4a1cc153d6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e49661c7ea1a78bd3e192508583c6b97df2729f1238b60425e139320c1f4345a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta7c7d2be03ed8f3519ee85066a273465dede4d21a3ad195e9102c4a1cc153d6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:aa9046159851347cc8d7ea8276485cbe62ae186303328e4107d3c73833fd40b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 264–305.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def scanrMFast [Monad m] (f : α → β → m β) (init : β) (as : Array α)
    (h_size : as.SizeFitsUSize) (start := as.size) (stop := 0) : m (Array β) :=
  let start := min start as.size
  let stop := min stop start
  loop f init as
    (start := USize.ofNat start) (stop := USize.ofNat stop)
    (h_start := by grind only [USize.size_eq, USize.ofNat_eq_iff_mod_eq_toNat, = Nat.min_def])
    (acc := Array.replicate (start - stop + 1) init)
    (by grind only [!Array.size_replicate, = Nat.min_def, USize.toNat_ofNat_of_le_of_lt])
where
  @[specialize]
  loop (f : α → β → m β) (init : β) (as : Array α)
       (start stop : USize)
       (h_start : start.toNat ≤ as.size)
       (acc : Array β)
       (h_bound : start.toNat - stop.toNat < acc.size) :
        m (Array β) := do
    if h_gt : stop < start then
      let startM1 := start - 1
      have : startM1 < start := by grind only [!USize.sub_add_cancel, USize.lt_iff_le_and_ne,
        USize.lt_add_one, USize.le_zero_iff]
      have : startM1.toNat < as.size := Nat.lt_of_lt_of_le ‹_› ‹_›
      have : (startM1 - stop) < (start - stop) := by grind only
        [!USize.sub_add_cancel, USize.sub_right_inj, USize.add_comm, USize.lt_add_one,
          USize.add_assoc, USize.add_right_inj]
      let next ← f (as.uget startM1 ‹_›) init
      loop f next as
        (start := startM1)
        (stop := stop)
        (h_start := Nat.le_of_succ_le_succ (Nat.le_succ_of_le ‹_›))
        (acc := acc.uset (startM1 - stop) next
          (by grind only [USize.toNat_sub_of_le, USize.le_of_lt, USize.lt_iff_toNat_lt]))
        (h_bound :=
          (by grind only [USize.toNat_sub_of_le, = uset_eq_set, = size_set, USize.size_eq]))
    else
      pure acc
  termination_by start.toNat - stop.toNat
  decreasing_by
    grind only [USize.lt_iff_toNat_lt, USize.toNat_sub,
      USize.toNat_sub_of_le, USize.le_iff_toNat_le]

@[inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta7c7d2be03ed8f3519ee85066a273465dede4d21a3ad195e9102c4a1cc153d6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta7c7d2be03ed8f3519ee85066a273465dede4d21a3ad195e9102c4a1cc153d6f.lean#L264).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97231746c799e53795db471232aebef9fc17642b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
