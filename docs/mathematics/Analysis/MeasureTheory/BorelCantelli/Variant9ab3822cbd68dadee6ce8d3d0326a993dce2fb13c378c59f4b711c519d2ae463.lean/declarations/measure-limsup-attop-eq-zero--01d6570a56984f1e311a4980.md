# measure_limsup_atTop_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "47234915c8b6f2c20e9e302952bc736484e90773",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 62,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9a/9ab3822cbd68dadee6ce8d3d0326a993dce2fb13c378c59f4b711c519d2ae463.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:20b12ab4-539d-43e3-6f23-85f138891165",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ac0fa0d5-d3c5-53e4-badf-af5631ed44e4",
  "kind": "theorem",
  "lexical_name": "measure_limsup_atTop_eq_zero",
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
  "slug": "measure-limsup-attop-eq-zero--01d6570a56984f1e311a4980",
  "source": {
    "blob": "47234915c8b6f2c20e9e302952bc736484e90773",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 62,
    "path": "GRWTSK/Analysis/MeasureTheory/BorelCantelli/Variant9ab3822cbd68dadee6ce8d3d0326a993dce2fb13c378c59f4b711c519d2ae463.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:01d6570a56984f1e311a4980fc80eba20b2e3617c4fe32d2d683a15b2a590416",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/BorelCantelli/Variant9ab3822cbd68dadee6ce8d3d0326a993dce2fb13c378c59f4b711c519d2ae463.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac0fa0d5-d3c5-53e4-badf-af5631ed44e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measure_limsup_atTop_eq_zero {s : ℕ → Set α} (hs : ∑' i, μ (s i) ≠ ∞) :
    μ (limsup s atTop) = 0 := by
  rw [← Nat.cofinite_eq_atTop, measure_limsup_cofinite_eq_zero hs]

/-- One direction of the **Borel-Cantelli lemma**
(sometimes called the "*first* Borel-Cantelli lemma"):
if `(s i)` is a countable family of sets such that `∑' i, μ (s i)` is finite,
then a.e. all points belong to finitely many sets of the family. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/BorelCantelli/Variant9ab3822cbd68dadee6ce8d3d0326a993dce2fb13c378c59f4b711c519d2ae463.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/BorelCantelli/Variant9ab3822cbd68dadee6ce8d3d0326a993dce2fb13c378c59f4b711c519d2ae463.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47234915c8b6f2c20e9e302952bc736484e90773` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
