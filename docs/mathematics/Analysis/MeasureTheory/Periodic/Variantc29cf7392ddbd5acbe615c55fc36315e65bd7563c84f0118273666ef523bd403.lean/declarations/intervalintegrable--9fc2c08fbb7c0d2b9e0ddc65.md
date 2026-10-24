# intervalIntegrable₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ad1f99fae8fc3306e00a27c614ef2ff5cf2e812f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 330,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c2/c29cf7392ddbd5acbe615c55fc36315e65bd7563c84f0118273666ef523bd403.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:318d6469-1f14-5601-8f95-cb086c5bc720",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:016f777a-16c3-dd71-660b-95b4aa67d1cf",
  "kind": "theorem",
  "lexical_name": "intervalIntegrable₀",
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
  "slug": "intervalintegrable--9fc2c08fbb7c0d2b9e0ddc65",
  "source": {
    "blob": "ad1f99fae8fc3306e00a27c614ef2ff5cf2e812f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 343,
    "line": 330,
    "path": "GRWTSK/Analysis/MeasureTheory/Periodic/Variantc29cf7392ddbd5acbe615c55fc36315e65bd7563c84f0118273666ef523bd403.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9fc2c08fbb7c0d2b9e0ddc65872aaa0f2da33cb85c0c29ecbc306a9f12cf884f",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Periodic/Variantc29cf7392ddbd5acbe615c55fc36315e65bd7563c84f0118273666ef523bd403.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:016f777a-16c3-dd71-660b-95b4aa67d1cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 330–343.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem intervalIntegrable₀ (h₁f : Function.Periodic f T) (hT : T ≠ 0)
    (h₂f : IntervalIntegrable f MeasureTheory.volume 0 T) (a₁ a₂ : ℝ) :
    IntervalIntegrable f MeasureTheory.volume a₁ a₂ := by
  apply h₁f.intervalIntegrable hT (t := 0)
  simpa

/-!
## Interval integrals of periodic functions
-/

variable [NormedSpace ℝ E]

/-- If `f` is a periodic function with period `T`, then its integral over `[t, t + T]` does not
depend on `t`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Periodic/Variantc29cf7392ddbd5acbe615c55fc36315e65bd7563c84f0118273666ef523bd403.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Periodic/Variantc29cf7392ddbd5acbe615c55fc36315e65bd7563c84f0118273666ef523bd403.lean#L330).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad1f99fae8fc3306e00a27c614ef2ff5cf2e812f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
