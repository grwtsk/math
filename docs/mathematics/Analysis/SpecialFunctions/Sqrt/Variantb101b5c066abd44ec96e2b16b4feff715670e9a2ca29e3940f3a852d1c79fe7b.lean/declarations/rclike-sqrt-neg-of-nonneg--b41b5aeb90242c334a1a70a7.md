# RCLike.sqrt_neg_of_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3f401a831f76d9f059accec22c55da83dbbb1383",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 117,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b1/b101b5c066abd44ec96e2b16b4feff715670e9a2ca29e3940f3a852d1c79fe7b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4035f934-b541-8f7b-951a-22b980cee57e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:21bdc9e8-9748-b4f5-3614-b80d81978bb0",
  "kind": "theorem",
  "lexical_name": "RCLike.sqrt_neg_of_nonneg",
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
  "slug": "rclike-sqrt-neg-of-nonneg--b41b5aeb90242c334a1a70a7",
  "source": {
    "blob": "3f401a831f76d9f059accec22c55da83dbbb1383",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 117,
    "path": "GRWTSK/Analysis/SpecialFunctions/Sqrt/Variantb101b5c066abd44ec96e2b16b4feff715670e9a2ca29e3940f3a852d1c79fe7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b41b5aeb90242c334a1a70a795d7636939ef7147d1e27550ca662212395f7122",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Sqrt/Variantb101b5c066abd44ec96e2b16b4feff715670e9a2ca29e3940f3a852d1c79fe7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:21bdc9e8-9748-b4f5-3614-b80d81978bb0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem RCLike.sqrt_neg_of_nonneg {a : 𝕜} (ha : 0 ≤ a) :
    sqrt (-a) = I * sqrt a := by
  obtain (h | h) := I_eq_zero_or_im_I_eq_one (K := 𝕜)
  · simp [h, sqrt_eq_ite, Real.sqrt_eq_zero', nonneg_iff.mp ha]
  rw [sqrt_eq_ite, dite_eq_left h, RingEquiv.symm_apply_eq, map_neg,
    Complex.sqrt_neg_of_nonneg (by simpa)]
  simp [h, sqrt, map_mul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Sqrt/Variantb101b5c066abd44ec96e2b16b4feff715670e9a2ca29e3940f3a852d1c79fe7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Sqrt/Variantb101b5c066abd44ec96e2b16b4feff715670e9a2ca29e3940f3a852d1c79fe7b.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3f401a831f76d9f059accec22c55da83dbbb1383` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
