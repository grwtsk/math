# ofReal_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0fbb2d6d6d9bff445d082976a66e3c5723503487",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2173,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a8/a8225ee3a2b925a3fcefcdf53bc86afe69daaee522f992c719f81afe6c4242a6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d23f269d-8a8b-5b40-2e4b-24d56f30b618",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:63fb5ed8-5f29-f067-6e72-9016c15eb800",
  "kind": "theorem",
  "lexical_name": "ofReal_sub",
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
  "slug": "ofreal-sub--8854d0b69fbc4febfa10d5a0",
  "source": {
    "blob": "0fbb2d6d6d9bff445d082976a66e3c5723503487",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2180,
    "line": 2173,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ENNReal/Varianta8225ee3a2b925a3fcefcdf53bc86afe69daaee522f992c719f81afe6c4242a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8854d0b69fbc4febfa10d5a0a3cbe42ed91b3447cf865fe0bcb7ba7008f2554a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ENNReal/Varianta8225ee3a2b925a3fcefcdf53bc86afe69daaee522f992c719f81afe6c4242a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63fb5ed8-5f29-f067-6e72-9016c15eb800`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2173–2180.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ofReal_sub (p : ℝ) {q : ℝ} (hq : 0 ≤ q) :
    ENNReal.ofReal (p - q) = ENNReal.ofReal p - ENNReal.ofReal q := by
  obtain h | h := le_total p q
  · rw [ofReal_of_nonpos (sub_nonpos_of_le h), tsub_eq_zero_of_le (ofReal_le_ofReal h)]
  refine' ENNReal.eq_sub_of_add_eq ofReal_ne_top _
  rw [← ofReal_add (sub_nonneg_of_le h) hq, sub_add_cancel]
#align ennreal.of_real_sub ENNReal.ofReal_sub

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ENNReal/Varianta8225ee3a2b925a3fcefcdf53bc86afe69daaee522f992c719f81afe6c4242a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ENNReal/Varianta8225ee3a2b925a3fcefcdf53bc86afe69daaee522f992c719f81afe6c4242a6.lean#L2173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0fbb2d6d6d9bff445d082976a66e3c5723503487` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
