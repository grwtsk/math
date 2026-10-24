# dpow_eq_from_gens

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b2e69c13afab0939b8b89c1950a7496626ba17df",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 246,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e7/e7ae21d610b1c805ef33b3d37b2a03de5547bcdd4bbcd5b9f06cc4e60aca0f6e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5040d865-72d7-e818-4e2e-a1579285a475",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:18019e3c-0ba6-6b0a-81f5-aebcd9ae8b08",
  "kind": "theorem",
  "lexical_name": "dpow_eq_from_gens",
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
  "slug": "dpow-eq-from-gens--67de0bb13e36948b41b4aef4",
  "source": {
    "blob": "b2e69c13afab0939b8b89c1950a7496626ba17df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 260,
    "line": 246,
    "path": "GRWTSK/Algebra/DPMorphism/Variante7ae21d610b1c805ef33b3d37b2a03de5547bcdd4bbcd5b9f06cc4e60aca0f6e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:67de0bb13e36948b41b4aef4363c4ab5ae21952e967055ed785145591b1d2c89",
  "verification": {
    "reference": "docs/verification/Algebra/DPMorphism/Variante7ae21d610b1c805ef33b3d37b2a03de5547bcdd4bbcd5b9f06cc4e60aca0f6e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18019e3c-0ba6-6b0a-81f5-aebcd9ae8b08`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 246–260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dpow_eq_from_gens {S : Set A} (hS : I = span S)
    (hdp : ∀ {n : ℕ}, ∀ a ∈ S, hI.dpow n a = hI'.dpow n a) : hI' = hI := by
  ext n a
  by_cases ha : a ∈ I
  · refine hI.dpow_comp_from_gens hI' (f := RingHom.id A) hS ?_ ?_ a ha
    · intro s hs
      simp only [RingHom.id_apply, hS]
      exact subset_span hs
    · intro m b hb
      simpa only [RingHom.id_apply] using (hdp b hb)
  · rw [hI.dpow_null ha, hI'.dpow_null ha]

end Uniqueness

end DividedPowers
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/DPMorphism/Variante7ae21d610b1c805ef33b3d37b2a03de5547bcdd4bbcd5b9f06cc4e60aca0f6e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/DPMorphism/Variante7ae21d610b1c805ef33b3d37b2a03de5547bcdd4bbcd5b9f06cc4e60aca0f6e.lean#L246).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2e69c13afab0939b8b89c1950a7496626ba17df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
