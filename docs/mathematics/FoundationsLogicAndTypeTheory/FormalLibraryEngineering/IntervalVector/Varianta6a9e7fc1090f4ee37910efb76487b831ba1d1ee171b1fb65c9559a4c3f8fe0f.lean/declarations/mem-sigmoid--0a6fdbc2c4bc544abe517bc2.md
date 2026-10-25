# mem_sigmoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:01a2afa0-a0e5-a9ba-39ed-dc85a70226cc",
  "kind": "theorem",
  "lexical_name": "mem_sigmoid",
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
  "slug": "mem-sigmoid--0a6fdbc2c4bc544abe517bc2",
  "source": {
    "blob": "5188efce7de78bc506024304846e3b471f3116b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 128,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalVector/Varianta6a9e7fc1090f4ee37910efb76487b831ba1d1ee171b1fb65c9559a4c3f8fe0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a6fdbc2c4bc544abe517bc272f5b2ab71f6d82ca915c07f56b3ce5240f89f9e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalVector/Varianta6a9e7fc1090f4ee37910efb76487b831ba1d1ee171b1fb65c9559a4c3f8fe0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:01a2afa0-a0e5-a9ba-39ed-dc85a70226cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_sigmoid {x : ℝ} {I : IntervalDyadic} (_hx : x ∈ I) :
    Real.sigmoid x ∈ sigmoid I := by
  simp only [IntervalDyadic.mem_def, sigmoid]
  simp only [Dyadic.toRat_ofInt, Int.cast_zero, Int.cast_one, Rat.cast_zero, Rat.cast_one]
  exact ⟨le_of_lt (Real.sigmoid_pos x), le_of_lt (Real.sigmoid_lt_one x)⟩

/-- Apply sigmoid to each component of an interval vector -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalVector/Varianta6a9e7fc1090f4ee37910efb76487b831ba1d1ee171b1fb65c9559a4c3f8fe0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalVector/Varianta6a9e7fc1090f4ee37910efb76487b831ba1d1ee171b1fb65c9559a4c3f8fe0f.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5188efce7de78bc506024304846e3b471f3116b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
