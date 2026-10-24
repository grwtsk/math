# quadraticChar_card_card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "29fa07a6854fe2305852abfb6b4f1609484559b0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 73,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/af0cfed4b435f4a97a1edfcf31ee9017a5ba2b3e77a06139331a266dde10048e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5cb91236-873d-df51-ae97-c9a5df8c5947",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:32974005-d9c4-1d60-202d-4f2164d317ed",
  "kind": "theorem",
  "lexical_name": "quadraticChar_card_card",
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
  "slug": "quadraticchar-card-card--dea2b234fd5beb5bc96eb573",
  "source": {
    "blob": "29fa07a6854fe2305852abfb6b4f1609484559b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 73,
    "path": "GRWTSK/NumberTheory/GaussSum/Variantaf0cfed4b435f4a97a1edfcf31ee9017a5ba2b3e77a06139331a266dde10048e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dea2b234fd5beb5bc96eb57346b170a095914338391cc54fe8e3985de50fd100",
  "verification": {
    "reference": "docs/verification/NumberTheory/GaussSum/Variantaf0cfed4b435f4a97a1edfcf31ee9017a5ba2b3e77a06139331a266dde10048e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32974005-d9c4-1d60-202d-4f2164d317ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quadraticChar_card_card [DecidableEq F] (hF : ringChar F ≠ 2) {F' : Type*} [Field F']
    [Fintype F'] [DecidableEq F'] (hF' : ringChar F' ≠ 2) (h : ringChar F' ≠ ringChar F) :
    quadraticChar F (Fintype.card F') =
    quadraticChar F' (quadraticChar F (-1) * Fintype.card F) := by
  let χ := (quadraticChar F).ringHomComp (algebraMap ℤ F')
  have hχ₁ : χ ≠ 1 := by
    obtain ⟨a, ha⟩ := quadraticChar_exists_neg_one' hF
    refine ne_one_iff.mpr ⟨a, ?_⟩
    simpa only [ringHomComp_apply, ha, eq_intCast, Int.cast_neg, Int.cast_one, χ] using
      Ring.neg_one_ne_one_of_char_ne_two hF'
  have h := Char.card_pow_card hχ₁ ((quadraticChar_isQuadratic F).comp _) h hF'
  rw [← quadraticChar_eq_pow_of_char_ne_two' hF'] at h
  exact (IsQuadratic.eq_of_eq_coe (quadraticChar_isQuadratic F')
    (quadraticChar_isQuadratic F) hF' h).symm

/-- The value of the quadratic character at an odd prime `p` different from `ringChar F`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/GaussSum/Variantaf0cfed4b435f4a97a1edfcf31ee9017a5ba2b3e77a06139331a266dde10048e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/GaussSum/Variantaf0cfed4b435f4a97a1edfcf31ee9017a5ba2b3e77a06139331a266dde10048e.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29fa07a6854fe2305852abfb6b4f1609484559b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
