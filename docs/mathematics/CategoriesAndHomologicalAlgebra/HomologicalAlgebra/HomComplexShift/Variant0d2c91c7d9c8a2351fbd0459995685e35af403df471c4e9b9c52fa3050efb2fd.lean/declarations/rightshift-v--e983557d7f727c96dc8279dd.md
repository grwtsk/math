# rightShift_v

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "86ad3624d9548e8a273647bf6ecd2c40f29af049",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 50,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0d/0d2c91c7d9c8a2351fbd0459995685e35af403df471c4e9b9c52fa3050efb2fd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f23f12ee-f5e0-c33e-8efc-cc4cdffc5eaf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:68dccf68-1389-eb14-9bb0-ddf17adc4a52",
  "kind": "lemma",
  "lexical_name": "rightShift_v",
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
  "slug": "rightshift-v--e983557d7f727c96dc8279dd",
  "source": {
    "blob": "86ad3624d9548e8a273647bf6ecd2c40f29af049",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 50,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplexShift/Variant0d2c91c7d9c8a2351fbd0459995685e35af403df471c4e9b9c52fa3050efb2fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e983557d7f727c96dc8279dd9a512d1a0c1e5e5506f23eaca7319ceb0d237a6b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplexShift/Variant0d2c91c7d9c8a2351fbd0459995685e35af403df471c4e9b9c52fa3050efb2fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:68dccf68-1389-eb14-9bb0-ddf17adc4a52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma rightShift_v (a n' : ℤ) (hn' : n' + a = n) (p q : ℤ) (hpq : p + n' = q)
    (p' : ℤ) (hp' : p + n = p') :
    (γ.rightShift a n' hn').v p q hpq = γ.v p p' hp' ≫
      (L.shiftFunctorObjXIso a q p' (by rw [← hp', ← hpq, ← hn', add_assoc])).inv := by
  subst hp'
  dsimp only [rightShift]
  simp only [mk_v]

/-- The map `Cochain K L n → Cochain (K⟦a⟧) L n'` when `n + a = n'`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplexShift/Variant0d2c91c7d9c8a2351fbd0459995685e35af403df471c4e9b9c52fa3050efb2fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplexShift/Variant0d2c91c7d9c8a2351fbd0459995685e35af403df471c4e9b9c52fa3050efb2fd.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `86ad3624d9548e8a273647bf6ecd2c40f29af049` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
