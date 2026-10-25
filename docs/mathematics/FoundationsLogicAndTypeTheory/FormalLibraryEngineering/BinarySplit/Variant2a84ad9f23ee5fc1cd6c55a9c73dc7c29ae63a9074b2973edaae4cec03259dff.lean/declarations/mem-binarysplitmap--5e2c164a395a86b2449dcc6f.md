# mem_binarySplitMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "23e53162d808c7c82eff2ae58fa32e7b35e0e014",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 42,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2a/2a84ad9f23ee5fc1cd6c55a9c73dc7c29ae63a9074b2973edaae4cec03259dff.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cbfad042-3c60-7978-4dd1-87152054b1c8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:53cad5ab-2361-5443-e4dd-f4342a7b4be2",
  "kind": "theorem",
  "lexical_name": "mem_binarySplitMap",
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
  "slug": "mem-binarysplitmap--5e2c164a395a86b2449dcc6f",
  "source": {
    "blob": "23e53162d808c7c82eff2ae58fa32e7b35e0e014",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 42,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BinarySplit/Variant2a84ad9f23ee5fc1cd6c55a9c73dc7c29ae63a9074b2973edaae4cec03259dff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e2c164a395a86b2449dcc6ff7e4079964e72c6700acce926c06604dc3806067",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BinarySplit/Variant2a84ad9f23ee5fc1cd6c55a9c73dc7c29ae63a9074b2973edaae4cec03259dff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:53cad5ab-2361-5443-e4dd-f4342a7b4be2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_binarySplitMap {Iβ β : Type*} [ToSet Iβ β] [Coarsen Iβ β]
    (n : ℕ) {I : Interval Dyadic} {F : Interval Dyadic → Iβ} {y : β} {r : ℝ}
    (hr : r ∈ I) (hy : ∀ J, r ∈ J → y ∈ F J) : y ∈ binarySplitMap n I F := by
  induction n generalizing I with
  | zero => exact hy I hr
  | succ n ih => match I with
    | ⟨some l, some u⟩ =>
      let m := midpoint l u
      by_cases hl : r ≤ Dyadic.toReal m
      · exact Coarsen.mem_coarsen_left (ih ⟨hr.1, WithTop.coe_le_coe.mpr hl⟩)
      · exact Coarsen.mem_coarsen_right (ih ⟨WithBot.coe_le_coe.mpr (le_of_not_ge hl), hr.2⟩)
    | ⟨⊥, ⊤⟩ | ⟨⊥, some u⟩ | ⟨some l, ⊤⟩ => exact hy _ hr

/-- Cover a dyadic interval by repeatedly bisecting it to depth `n`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BinarySplit/Variant2a84ad9f23ee5fc1cd6c55a9c73dc7c29ae63a9074b2973edaae4cec03259dff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BinarySplit/Variant2a84ad9f23ee5fc1cd6c55a9c73dc7c29ae63a9074b2973edaae4cec03259dff.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `23e53162d808c7c82eff2ae58fa32e7b35e0e014` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
