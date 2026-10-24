# image_update_Icc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "00d1a5bc007310c93f0cca4370d3efaa0c8be81f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 128,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cf/cf9e4877ac739de814219f540c0a66fb8876fcd7383c248359fd06ae41bdc15e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e420b642-bef2-ddf5-3c5d-1abe723abb08",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:82203948-4f24-8a3b-fc18-a06166b74823",
  "kind": "theorem",
  "lexical_name": "image_update_Icc",
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
  "slug": "image-update-icc--3ecf710348035789e2af1161",
  "source": {
    "blob": "00d1a5bc007310c93f0cca4370d3efaa0c8be81f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 128,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Variantcf9e4877ac739de814219f540c0a66fb8876fcd7383c248359fd06ae41bdc15e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ecf710348035789e2af1161cc894dc202bc1974532d1a160bb27d237b6ea3e9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Variantcf9e4877ac739de814219f540c0a66fb8876fcd7383c248359fd06ae41bdc15e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:82203948-4f24-8a3b-fc18-a06166b74823`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem image_update_Icc (f : ∀ i, α i) (i : ι) (a b : α i) :
    update f i '' Icc a b = Icc (update f i a) (update f i b) := by
  ext x
  rw [← Set.pi_univ_Icc]
  refine' ⟨_, fun h => ⟨x i, _, _⟩⟩
  · rintro ⟨c, hc, rfl⟩
    simpa [update_le_update_iff]
  · simpa only [Function.update_same] using h i (mem_univ i)
  · ext j
    obtain rfl | hij := eq_or_ne i j
    · exact Function.update_same _ _ _
    · simpa only [Function.update_noteq hij.symm, le_antisymm_iff] using h j (mem_univ j)
#align set.image_update_Icc Set.image_update_Icc

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Variantcf9e4877ac739de814219f540c0a66fb8876fcd7383c248359fd06ae41bdc15e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pi/Variantcf9e4877ac739de814219f540c0a66fb8876fcd7383c248359fd06ae41bdc15e.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00d1a5bc007310c93f0cca4370d3efaa0c8be81f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
