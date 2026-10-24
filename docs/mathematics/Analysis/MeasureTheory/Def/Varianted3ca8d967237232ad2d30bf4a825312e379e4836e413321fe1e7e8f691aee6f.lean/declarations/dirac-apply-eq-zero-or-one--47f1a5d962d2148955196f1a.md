# dirac_apply_eq_zero_or_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9cbb238fa4d1b18422c62ef92d810030f0f0ecf5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 41,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ed/ed3ca8d967237232ad2d30bf4a825312e379e4836e413321fe1e7e8f691aee6f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d76e12a8-60df-0faa-1ced-c5d5e9223a76",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b50e9d84-727e-8a5e-a202-c85722378dae",
  "kind": "theorem",
  "lexical_name": "dirac_apply_eq_zero_or_one",
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
  "slug": "dirac-apply-eq-zero-or-one--47f1a5d962d2148955196f1a",
  "source": {
    "blob": "9cbb238fa4d1b18422c62ef92d810030f0f0ecf5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 41,
    "path": "GRWTSK/Analysis/MeasureTheory/Def/Varianted3ca8d967237232ad2d30bf4a825312e379e4836e413321fe1e7e8f691aee6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:47f1a5d962d2148955196f1ad3f66ee458b7846576a6022188b861bbfdb02d74",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Def/Varianted3ca8d967237232ad2d30bf4a825312e379e4836e413321fe1e7e8f691aee6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b50e9d84-727e-8a5e-a202-c85722378dae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dirac_apply_eq_zero_or_one :
    dirac a s = 0 ∨ dirac a s = 1 := by
  rw [← measure_toMeasurable s, dirac_apply' a (measurableSet_toMeasurable ..), indicator]
  simp only [Pi.one_apply, ite_eq_right_iff, one_ne_zero, imp_false, ite_eq_left_iff, zero_ne_one,
    not_not]
  tauto

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Def/Varianted3ca8d967237232ad2d30bf4a825312e379e4836e413321fe1e7e8f691aee6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Def/Varianted3ca8d967237232ad2d30bf4a825312e379e4836e413321fe1e7e8f691aee6f.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9cbb238fa4d1b18422c62ef92d810030f0f0ecf5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
