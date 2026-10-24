# restrict_compl_sigmaFiniteSetWRT

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5b3d651280d40645073ff1f346a34618418eb756",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 268,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/523fa351417239bf03b789403338a3b4342d590ef74efd72c00c468b0530c193.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3aa502df-f560-a4fe-b827-bb23ed65e992",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9e2d546f-3316-e9c6-0804-7193e9d44104",
  "kind": "lemma",
  "lexical_name": "restrict_compl_sigmaFiniteSetWRT",
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
  "slug": "restrict-compl-sigmafinitesetwrt--51db2405642e9fe5cb0c5563",
  "source": {
    "blob": "5b3d651280d40645073ff1f346a34618418eb756",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 282,
    "line": 268,
    "path": "GRWTSK/Analysis/MeasureTheory/Exhaustion/Variant523fa351417239bf03b789403338a3b4342d590ef74efd72c00c468b0530c193.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:51db2405642e9fe5cb0c5563e54b2b365813da9f6532085a5077d04fd6667838",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Exhaustion/Variant523fa351417239bf03b789403338a3b4342d590ef74efd72c00c468b0530c193.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e2d546f-3316-e9c6-0804-7193e9d44104`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 268–282.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma restrict_compl_sigmaFiniteSetWRT [SFinite ν] (hμν : μ ≪ ν) :
    μ.restrict (μ.sigmaFiniteSetWRT ν)ᶜ = ∞ • ν.restrict (μ.sigmaFiniteSetWRT ν)ᶜ := by
  ext s
  rw [Measure.restrict_apply' measurableSet_sigmaFiniteSetWRT.compl,
    Measure.smul_apply, smul_eq_mul,
    Measure.restrict_apply' measurableSet_sigmaFiniteSetWRT.compl]
  by_cases hνs : ν (s ∩ (μ.sigmaFiniteSetWRT ν)ᶜ) = 0
  · rw [hνs, mul_zero]
    exact hμν hνs
  · rw [ENNReal.top_mul hνs, measure_eq_top_of_subset_compl_sigmaFiniteSetWRT
      Set.inter_subset_right hνs]

end SFinite

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Exhaustion/Variant523fa351417239bf03b789403338a3b4342d590ef74efd72c00c468b0530c193.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Exhaustion/Variant523fa351417239bf03b789403338a3b4342d590ef74efd72c00c468b0530c193.lean#L268).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b3d651280d40645073ff1f346a34618418eb756` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
