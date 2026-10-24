# qpartition

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0a6e4600b063d4caed8672321ae60408c4289dfee063587deec34749d61def0e",
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
  "slug": "qpartition--9b323a864b4109e9f528de4b",
  "source": {
    "blob": "523d590808b610a30319eecf94251ae70f41ab56",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 45,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3a0afb1468e0a7e230b085f40149c6ac3d557ae893e956f807b45818606a2894.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9b323a864b4109e9f528de4b416f41a5f7817002316b251649a8276538925e98",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3a0afb1468e0a7e230b085f40149c6ac3d557ae893e956f807b45818606a2894.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0a6e4600b063d4caed8672321ae60408c4289dfee063587deec34749d61def0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–71.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3a0afb1468e0a7e230b085f40149c6ac3d557ae893e956f807b45818606a2894.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3a0afb1468e0a7e230b085f40149c6ac3d557ae893e956f807b45818606a2894.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `523d590808b610a30319eecf94251ae70f41ab56` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
