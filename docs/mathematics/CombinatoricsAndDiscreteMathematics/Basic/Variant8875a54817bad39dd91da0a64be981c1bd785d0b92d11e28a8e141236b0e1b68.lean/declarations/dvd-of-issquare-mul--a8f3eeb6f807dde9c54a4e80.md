# dvd_of_isSquare_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d1f1ae88c5c57feaa3eb2d0509b8dc258ae1c69c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 215,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/88/8875a54817bad39dd91da0a64be981c1bd785d0b92d11e28a8e141236b0e1b68.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:45b4a857-075b-5228-fee5-7ce0fa09d753",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d3dbd9c0-9781-8f61-5a28-2ef8fa472ac2",
  "kind": "theorem",
  "lexical_name": "dvd_of_isSquare_mul",
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
  "slug": "dvd-of-issquare-mul--a8f3eeb6f807dde9c54a4e80",
  "source": {
    "blob": "d1f1ae88c5c57feaa3eb2d0509b8dc258ae1c69c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 215,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant8875a54817bad39dd91da0a64be981c1bd785d0b92d11e28a8e141236b0e1b68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8f3eeb6f807dde9c54a4e802b1b4202b5e47dbc1aad8d0a725a16bc6411d60b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variant8875a54817bad39dd91da0a64be981c1bd785d0b92d11e28a8e141236b0e1b68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d3dbd9c0-9781-8f61-5a28-2ef8fa472ac2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dvd_of_isSquare_mul (hx : Squarefree x) (h : IsSquare (x * y)) : x ∣ y := by
  nontriviality R
  obtain ⟨c, hc⟩ := h
  obtain ⟨k, rfl⟩ : x ∣ c := (hx.dvd_pow_iff_dvd two_ne_zero).mp ⟨y, by rwa [sq, eq_comm]⟩
  rw [mul_mul_mul_comm, mul_assoc, mul_right_inj' hx.ne_zero] at hc
  exact ⟨k * k, hc⟩

/-- Two squarefree elements whose product is a square are associated. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variant8875a54817bad39dd91da0a64be981c1bd785d0b92d11e28a8e141236b0e1b68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant8875a54817bad39dd91da0a64be981c1bd785d0b92d11e28a8e141236b0e1b68.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1f1ae88c5c57feaa3eb2d0509b8dc258ae1c69c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
