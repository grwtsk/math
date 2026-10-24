# qpartition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8ffef1eb54767811164e35cb64a2d98894ef9c455d8e39b9d755bd4b3e000503",
  "kind": "def",
  "lexical_name": "qpartition",
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
  "slug": "qpartition--613fb6f6bbd7f450357da073",
  "source": {
    "blob": "13ab12d2f9950a6d8b69e5146736a8d2c50f8ed0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 37,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantdb33ba48770878e785beaecd06270ace43eec5fb941884e2f4a43441750f8b24.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:613fb6f6bbd7f450357da073c5f20c212ad3ffcd46657e57baca844f5b3073f2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantdb33ba48770878e785beaecd06270ace43eec5fb941884e2f4a43441750f8b24.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8ffef1eb54767811164e35cb64a2d98894ef9c455d8e39b9d755bd4b3e000503`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def qpartition {n} (as : Vector α n) (lt : α → α → Bool) (lo hi : Nat) (w : lo ≤ hi := by omega)
    (hlo : lo < n := by omega) (hhi : hi < n := by omega) : {m : Nat // lo ≤ m ∧ m ≤ hi} × Vector α n :=
  let mid := (lo + hi) / 2
  let as  := if lt as[mid] as[lo] then as.swap lo mid else as
  let as  := if lt as[hi]  as[lo] then as.swap lo hi  else as
  let as  := if lt as[mid] as[hi] then as.swap mid hi else as
  let pivot := as[hi]
  -- During this loop, elements below in `[lo, i)` are less than `pivot`,
  -- elements in `[i, k)` are greater than or equal to `pivot`,
  -- elements in `[k, hi)` are unexamined,
  -- while `as[hi]` is (by definition) the pivot.
  let rec @[specialize] loop (as : Vector α n) (i k : Nat)
      (ilo : lo ≤ i := by omega) (ik : i ≤ k := by omega) (w : k ≤ hi := by omega) :=
    if h : k < hi then
      if lt as[k] pivot then
        loop (as.swap i k) (i+1) (k+1)
      else
        loop as i (k+1)
    else
      (⟨i, ilo, by omega⟩, as.swap i hi)
  loop as lo lo

/--
In-place quicksort.

`qsort as lt lo hi` sorts the subarray `as[lo...=hi]` in-place using `lt` to compare elements.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantdb33ba48770878e785beaecd06270ace43eec5fb941884e2f4a43441750f8b24.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantdb33ba48770878e785beaecd06270ace43eec5fb941884e2f4a43441750f8b24.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13ab12d2f9950a6d8b69e5146736a8d2c50f8ed0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
