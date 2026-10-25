# roundOut_contains

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e2cf9e9d-fa73-3fc4-d08e-a43fea602dfd",
  "kind": "theorem",
  "lexical_name": "roundOut_contains",
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
  "slug": "roundout-contains--313bd2d6cd7f17c97edde244",
  "source": {
    "blob": "e5a64315b8c4caa8dbcd5acb7761d9ad740f1572",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 153,
    "line": 136,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/IntervalDyadic/Variantf2994719e6a7c39faff52b965822b6e42e29c6a9260350d2835d1a3747dfd09d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:313bd2d6cd7f17c97edde24426995e62b514d6da99d6b6d51179eb7ac082af45",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/IntervalDyadic/Variantf2994719e6a7c39faff52b965822b6e42e29c6a9260350d2835d1a3747dfd09d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e2cf9e9d-fa73-3fc4-d08e-a43fea602dfd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–153.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem roundOut_contains {x : ℝ} {I : IntervalDyadic} (hx : x ∈ I) (minExp : Int) :
    x ∈ I.roundOut minExp := by
  simp only [mem_def] at *
  constructor
  · have h := Dyadic.toRat_shiftDown_le I.lo minExp
    have h' : ((I.lo.shiftDown minExp).toRat : ℝ) ≤ (I.lo.toRat : ℝ) := by exact_mod_cast h
    calc ((I.roundOut minExp).lo.toRat : ℝ) = ((I.lo.shiftDown minExp).toRat : ℝ) := by rfl
      _ ≤ (I.lo.toRat : ℝ) := h'
      _ ≤ x := hx.1
  · have h := Dyadic.toRat_shiftUp_ge I.hi minExp
    have h' : (I.hi.toRat : ℝ) ≤ ((I.hi.shiftUp minExp).toRat : ℝ) := by exact_mod_cast h
    calc x ≤ (I.hi.toRat : ℝ) := hx.2
      _ ≤ ((I.hi.shiftUp minExp).toRat : ℝ) := h'
      _ = ((I.roundOut minExp).hi.toRat : ℝ) := by rfl

/-! ### Interval Negation -/

/-- Negate an interval -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/IntervalDyadic/Variantf2994719e6a7c39faff52b965822b6e42e29c6a9260350d2835d1a3747dfd09d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/IntervalDyadic/Variantf2994719e6a7c39faff52b965822b6e42e29c6a9260350d2835d1a3747dfd09d.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5a64315b8c4caa8dbcd5acb7761d9ad740f1572` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
