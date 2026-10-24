# star_left_conjugate_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a7a23a2cf9db86dca088cfacfe13d6ffa9551c6f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 232,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/65/65593ddcc916b7eb26bcf74a77fcba681057e951ea3067da9138619c389463f5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:34a3ef21-49da-2290-92f7-ad4f559ef07a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:16f18b9b-e980-c70e-7e9f-82a0540c752e",
  "kind": "theorem",
  "lexical_name": "star_left_conjugate_nonneg",
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
  "slug": "star-left-conjugate-nonneg--65da47144fe19671b0d0a4d3",
  "source": {
    "blob": "a7a23a2cf9db86dca088cfacfe13d6ffa9551c6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 244,
    "line": 232,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Basic/Variant65593ddcc916b7eb26bcf74a77fcba681057e951ea3067da9138619c389463f5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:65da47144fe19671b0d0a4d30878f2ef400834123d6d4a9808d200c64f3f7771",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Basic/Variant65593ddcc916b7eb26bcf74a77fcba681057e951ea3067da9138619c389463f5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:16f18b9b-e980-c70e-7e9f-82a0540c752e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 232–244.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem star_left_conjugate_nonneg {a : R} (ha : 0 ≤ a) (c : R) : 0 ≤ star c * a * c := by
  rw [StarOrderedRing.nonneg_iff] at ha
  refine AddSubmonoid.closure_induction (fun x hx => ?_)
    (by rw [mul_zero, zero_mul]) (fun x y _ _ hx hy => ?_) ha
  · obtain ⟨x, rfl⟩ := hx
    convert! star_mul_self_nonneg (x * c) using 1
    rw [star_mul, ← mul_assoc, mul_assoc _ _ c]
  · calc
      0 ≤ star c * x * c + 0 := by rw [add_zero]; exact hx
      _ ≤ star c * x * c + star c * y * c := by gcongr
      _ ≤ _ := by rw [mul_add, add_mul]

@[aesop safe apply]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Basic/Variant65593ddcc916b7eb26bcf74a77fcba681057e951ea3067da9138619c389463f5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Basic/Variant65593ddcc916b7eb26bcf74a77fcba681057e951ea3067da9138619c389463f5.lean#L232).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7a23a2cf9db86dca088cfacfe13d6ffa9551c6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
