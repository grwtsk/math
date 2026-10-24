# regOfFamily_eq_det

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "70c6391ac0da8bdcabc91c771b099a3480ae7e68",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 164,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f3/f332699047fdb3df84d53e2350bfb2cf5a79c07e16cc5235381a6c58d8c62be7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c86bb005-e09b-c99c-e9d0-8496034f210e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:46184071-dc82-e03c-848e-66f0e1e5357c",
  "kind": "theorem",
  "lexical_name": "regOfFamily_eq_det",
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
  "slug": "regoffamily-eq-det--0127feede27f435fa32b1da5",
  "source": {
    "blob": "70c6391ac0da8bdcabc91c771b099a3480ae7e68",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 164,
    "path": "GRWTSK/NumberTheory/Regulator/Variantf332699047fdb3df84d53e2350bfb2cf5a79c07e16cc5235381a6c58d8c62be7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0127feede27f435fa32b1da5e7e58b55a38dc3495e44182d3a8a11faf6c376e0",
  "verification": {
    "reference": "docs/verification/NumberTheory/Regulator/Variantf332699047fdb3df84d53e2350bfb2cf5a79c07e16cc5235381a6c58d8c62be7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:46184071-dc82-e03c-848e-66f0e1e5357c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem regOfFamily_eq_det (u : Fin (rank K) → (𝓞 K)ˣ) (w' : InfinitePlace K)
    (e : {w // w ≠ w'} ≃ Fin (rank K)) :
    regOfFamily u =
      |(of fun i w : {w // w ≠ w'} ↦ (mult w.val : ℝ) * Real.log (w.val (u (e i) : K))).det| := by
  simp [regOfFamily_eq_det', abs_det_eq_abs_det u e (equivFinRank K).symm, logEmbedding]

open scoped Classical in
/--
The degree of `K` times the regulator of the family `u` is equal to the absolute value of the
determinant of the matrix whose columns are
`(mult w * log w (fundSystem K i))_i, w` and the column `(mult w)_w`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Regulator/Variantf332699047fdb3df84d53e2350bfb2cf5a79c07e16cc5235381a6c58d8c62be7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Regulator/Variantf332699047fdb3df84d53e2350bfb2cf5a79c07e16cc5235381a6c58d8c62be7.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70c6391ac0da8bdcabc91c771b099a3480ae7e68` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
