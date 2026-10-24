# cast_divInt_of_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9554cf30fb157ab3256363117be2f87c2b2a63c1",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 144,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3d/3d3dee2e2eb034a544ec3925b85e911c730df00ffd5803ef7182a2da17bc1909.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:884fbb0d-5ee6-ea81-5374-b4c979a9e035",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7ec6f152-7c9f-df9b-d04b-bfb3719f0a31",
  "kind": "lemma",
  "lexical_name": "cast_divInt_of_ne_zero",
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
  "slug": "cast-divint-of-ne-zero--eafcd4fbcca5b7eb541e2b66",
  "source": {
    "blob": "9554cf30fb157ab3256363117be2f87c2b2a63c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 144,
    "path": "GRWTSK/Algebra/Defs/Variant3d3dee2e2eb034a544ec3925b85e911c730df00ffd5803ef7182a2da17bc1909.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eafcd4fbcca5b7eb541e2b66ea81c53abdf5b2c9c56dd384f32c6ecd04bfa8e9",
  "verification": {
    "reference": "docs/verification/Algebra/Defs/Variant3d3dee2e2eb034a544ec3925b85e911c730df00ffd5803ef7182a2da17bc1909.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7ec6f152-7c9f-df9b-d04b-bfb3719f0a31`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 144–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cast_divInt_of_ne_zero (a : ℤ) {b : ℤ} (b0 : (b : α) ≠ 0) : (a /. b : α) = a / b := by
  have b0' : b ≠ 0 := by
    refine mt ?_ b0
    simp +contextual
  rcases e : a /. b with ⟨n, d, h, c⟩
  have d0 : (d : α) ≠ 0 := by
    intro d0
    have dd := den_dvd a b
    rcases show (d : ℤ) ∣ b by rwa [e] at dd with ⟨k, ke⟩
    have : (b : α) = (d : α) * (k : α) := by rw [ke, Int.cast_mul, Int.cast_natCast]
    rw [d0, zero_mul] at this
    contradiction
  rw [mk_eq_divInt] at e
  have := congr_arg ((↑) : ℤ → α)
    ((divInt_eq_divInt_iff b0' <| ne_of_gt <| Int.natCast_pos.2 h.bot_lt).1 e)
  rw [Int.cast_mul, Int.cast_mul, Int.cast_natCast] at this
  rw [eq_comm, cast_def, div_eq_mul_inv, eq_div_iff_mul_eq d0, mul_assoc, (d.commute_cast _).eq,
    ← mul_assoc, this, mul_assoc, mul_inv_cancel₀ b0, mul_one]

@[norm_cast]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Defs/Variant3d3dee2e2eb034a544ec3925b85e911c730df00ffd5803ef7182a2da17bc1909.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Defs/Variant3d3dee2e2eb034a544ec3925b85e911c730df00ffd5803ef7182a2da17bc1909.lean#L144).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9554cf30fb157ab3256363117be2f87c2b2a63c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
