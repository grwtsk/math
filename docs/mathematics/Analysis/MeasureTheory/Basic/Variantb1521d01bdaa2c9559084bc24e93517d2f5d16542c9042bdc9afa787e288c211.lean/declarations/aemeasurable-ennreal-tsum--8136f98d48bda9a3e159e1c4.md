# AEMeasurable.ennreal_tsum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2095417a1394f77dd8b7a70a5fdc925d93c9fcd8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2067,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b1/b1521d01bdaa2c9559084bc24e93517d2f5d16542c9042bdc9afa787e288c211.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:09a1fcce-80d4-5477-8046-8cbb5b6951c8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4060963f-8876-a19e-4bb2-d022725899e6",
  "kind": "theorem",
  "lexical_name": "AEMeasurable.ennreal_tsum",
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
  "slug": "aemeasurable-ennreal-tsum--8136f98d48bda9a3e159e1c4",
  "source": {
    "blob": "2095417a1394f77dd8b7a70a5fdc925d93c9fcd8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2074,
    "line": 2067,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variantb1521d01bdaa2c9559084bc24e93517d2f5d16542c9042bdc9afa787e288c211.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8136f98d48bda9a3e159e1c4d7984fb84040253579006eb8d780e7470afa4436",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variantb1521d01bdaa2c9559084bc24e93517d2f5d16542c9042bdc9afa787e288c211.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4060963f-8876-a19e-4bb2-d022725899e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2067–2074.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AEMeasurable.ennreal_tsum {ι} [Countable ι] {f : ι → α → ℝ≥0∞} {μ : Measure α}
    (h : ∀ i, AEMeasurable (f i) μ) : AEMeasurable (fun x => ∑' i, f i x) μ := by
  simp_rw [ENNReal.tsum_eq_iSup_sum]
  apply aemeasurable_iSup
  exact fun s => Finset.aemeasurable_sum s fun i _ => h i
#align ae_measurable.ennreal_tsum AEMeasurable.ennreal_tsum

@[measurability]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variantb1521d01bdaa2c9559084bc24e93517d2f5d16542c9042bdc9afa787e288c211.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variantb1521d01bdaa2c9559084bc24e93517d2f5d16542c9042bdc9afa787e288c211.lean#L2067).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2095417a1394f77dd8b7a70a5fdc925d93c9fcd8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
