# Valuation.transcendental_of_ne_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0acb60c3daaefea95ff792e0d3826b5e0e50197e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 74,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/12/12ac3461b33212a5fa2fc2b9f1c47dea3e5b4fb0371e1c8a235f72d2d6c78d14.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fbb7387c-596c-e16c-8cff-fa61193ff6e9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f7320c2d-0562-fab1-efa9-d4a63b9b0d86",
  "kind": "theorem",
  "lexical_name": "Valuation.transcendental_of_ne_one",
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
  "slug": "valuation-transcendental-of-ne-one--513da354d64516d3cc8043f9",
  "source": {
    "blob": "0acb60c3daaefea95ff792e0d3826b5e0e50197e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 74,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/IsTrivialOn/Variant12ac3461b33212a5fa2fc2b9f1c47dea3e5b4fb0371e1c8a235f72d2d6c78d14.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:513da354d64516d3cc8043f974a65ba35c079d6e04f763d9b67493d5d1177c80",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/IsTrivialOn/Variant12ac3461b33212a5fa2fc2b9f1c47dea3e5b4fb0371e1c8a235f72d2d6c78d14.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f7320c2d-0562-fab1-efa9-d4a63b9b0d86`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Valuation.transcendental_of_ne_one (y : K) (h0 : y ≠ 0) (hy : v y ≠ 1) :
    Transcendental A y := by
  wlog! hlt : 1 < v y generalizing y
  · rw [Transcendental, ← IsAlgebraic.inv_iff]
    apply this _ (by simpa) (by simpa)
    rw [← val_lt_one_iff _ h0]
    exact lt_of_le_of_ne hlt hy
  simp_all only [ne_eq, Transcendental]
  by_contra!
  replace ⟨p, hpnt, hp⟩ : IsAlgebraic A y := .algebraMap this
  suffices v y ^ p.natDegree = 0 by simp_all
  rw [← valuation_aeval_eq_valuation_X_pow_natDegree_of_one_lt_valuation_X _ hlt] <;> simp_all

end Field
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/IsTrivialOn/Variant12ac3461b33212a5fa2fc2b9f1c47dea3e5b4fb0371e1c8a235f72d2d6c78d14.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/IsTrivialOn/Variant12ac3461b33212a5fa2fc2b9f1c47dea3e5b4fb0371e1c8a235f72d2d6c78d14.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0acb60c3daaefea95ff792e0d3826b5e0e50197e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
