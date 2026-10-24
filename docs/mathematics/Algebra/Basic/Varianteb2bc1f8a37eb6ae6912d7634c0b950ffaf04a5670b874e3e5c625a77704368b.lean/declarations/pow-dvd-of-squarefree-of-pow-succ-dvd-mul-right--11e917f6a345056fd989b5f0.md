# pow_dvd_of_squarefree_of_pow_succ_dvd_mul_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "274352a9244b74eba3322291f777657ccd54794c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 175,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/eb/eb2bc1f8a37eb6ae6912d7634c0b950ffaf04a5670b874e3e5c625a77704368b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e26ab82f-b94e-5585-c6b8-3278c6323412",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:82a579c2-d15c-6075-9e42-469023355026",
  "kind": "theorem",
  "lexical_name": "pow_dvd_of_squarefree_of_pow_succ_dvd_mul_right",
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
  "slug": "pow-dvd-of-squarefree-of-pow-succ-dvd-mul-right--11e917f6a345056fd989b5f0",
  "source": {
    "blob": "274352a9244b74eba3322291f777657ccd54794c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 175,
    "path": "GRWTSK/Algebra/Basic/Varianteb2bc1f8a37eb6ae6912d7634c0b950ffaf04a5670b874e3e5c625a77704368b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:11e917f6a345056fd989b5f0417d0c7280c3cc741a3eac2a6e831915060bc165",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Varianteb2bc1f8a37eb6ae6912d7634c0b950ffaf04a5670b874e3e5c625a77704368b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:82a579c2-d15c-6075-9e42-469023355026`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pow_dvd_of_squarefree_of_pow_succ_dvd_mul_right {k : ℕ}
    (hx : Squarefree x) (hp : Prime p) (h : p ^ (k + 1) ∣ x * y) :
    p ^ k ∣ y := by
  by_cases hxp : p ∣ x
  · obtain ⟨x', rfl⟩ := hxp
    have hx' : ¬ p ∣ x' := fun contra ↦ hp.not_unit <| hx p (mul_dvd_mul_left p contra)
    replace h : p ^ k ∣ x' * y := by
      rw [pow_succ', mul_assoc] at h
      exact (mul_dvd_mul_iff_left hp.ne_zero).mp h
    exact hp.pow_dvd_of_dvd_mul_left _ hx' h
  · exact (pow_dvd_pow _ k.le_succ).trans (hp.pow_dvd_of_dvd_mul_left _ hxp h)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Varianteb2bc1f8a37eb6ae6912d7634c0b950ffaf04a5670b874e3e5c625a77704368b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Varianteb2bc1f8a37eb6ae6912d7634c0b950ffaf04a5670b874e3e5c625a77704368b.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `274352a9244b74eba3322291f777657ccd54794c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
