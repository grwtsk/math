# scanlM_loop_eq_scanlMFast_loop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:25579cf7-f2b6-43b1-a5c1-c66130daed5d",
  "kind": "theorem",
  "lexical_name": "scanlM_loop_eq_scanlMFast_loop",
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
  "slug": "scanlm-loop-eq-scanlmfast-loop--18d89d0037ca72f600b2d7c8",
  "source": {
    "blob": "97231746c799e53795db471232aebef9fc17642b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 253,
    "line": 225,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta7c7d2be03ed8f3519ee85066a273465dede4d21a3ad195e9102c4a1cc153d6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:18d89d0037ca72f600b2d7c8a0017d4c78990ce5450cb03e1be02bddd7f82748",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta7c7d2be03ed8f3519ee85066a273465dede4d21a3ad195e9102c4a1cc153d6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:25579cf7-f2b6-43b1-a5c1-c66130daed5d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 225–253.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem scanlM_loop_eq_scanlMFast_loop [Monad m]
    {f : β → α → m β} {init : β} {as : Array α} {h_size : as.SizeFitsUSize}
    {start stop : Nat} {h_start : start ≤ as.size}
    {h_stop : stop ≤ as.size} {acc : Array β} :
    scanlM.loop f init as start stop h_stop acc
      = scanlMFast.loop f init as (USize.ofNat start) (USize.ofNat stop)
      (by rw [USize.toNat_ofNat_of_le_of_lt h_size h_stop]; exact h_stop) acc := by
  generalize h_n : stop - start = n
  induction n using Nat.strongRecOn generalizing start acc init
  rename_i n ih
  rw [scanlM.loop, scanlMFast.loop]
  have h_stop_usize := USize.toNat_ofNat_of_le_of_lt h_size h_stop
  have h_start_usize := USize.toNat_ofNat_of_le_of_lt h_size h_start
  split
  case isTrue h_lt =>
    simp_all only [USize.toNat_ofNat', ↓reduceDIte, uget,
      show USize.ofNat start < USize.ofNat stop by simp_all [USize.lt_iff_toNat_lt]]
    apply bind_congr
    intro next
    have h_start_succ : USize.ofNat start + 1 = USize.ofNat (start + 1) := by
      simp_all only [← USize.toNat_inj, USize.toNat_add]
      grind only [USize.size_eq, USize.toNat_ofNat_of_le_of_lt]
    rw [h_start_succ]
    apply ih (stop - (start + 1)) <;> omega
  case isFalse h_nlt => grind [USize.lt_iff_toNat_lt]

-- this theorem establishes that given the (unprovable) assumption that as.size < USize.size,
-- the scanlMFast and scanlM are equivalent
-- TODO (cmlsharp): prove an analogous theorem for scanrM
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta7c7d2be03ed8f3519ee85066a273465dede4d21a3ad195e9102c4a1cc153d6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta7c7d2be03ed8f3519ee85066a273465dede4d21a3ad195e9102c4a1cc153d6f.lean#L225).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97231746c799e53795db471232aebef9fc17642b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
