# sign_sumCongr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "44d53713a1ba03e8f8028ace3bc2a45ab8ab9016",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 563,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b0/b0cfeebd1b9db78f1dc8e96c36ed9c0eb4de808ad2f292cec8d71ff807981bb6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1608acd2-4dd3-75c4-04dc-83aeeca5747f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dc09dcc1-085c-0258-2dda-698d37f13edd",
  "kind": "theorem",
  "lexical_name": "sign_sumCongr",
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
  "slug": "sign-sumcongr--b19e412e5c4690fe3e5c9276",
  "source": {
    "blob": "44d53713a1ba03e8f8028ace3bc2a45ab8ab9016",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 578,
    "line": 563,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantb0cfeebd1b9db78f1dc8e96c36ed9c0eb4de808ad2f292cec8d71ff807981bb6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b19e412e5c4690fe3e5c9276f12e7e510a9eb22c10eb2972cb67d23160e25930",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantb0cfeebd1b9db78f1dc8e96c36ed9c0eb4de808ad2f292cec8d71ff807981bb6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc09dcc1-085c-0258-2dda-698d37f13edd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 563–578.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sign_sumCongr (σa : Perm α) (σb : Perm β) : sign (sumCongr σa σb) = sign σa * sign σb := by
  suffices sign (sumCongr σa (1 : Perm β)) = sign σa ∧ sign (sumCongr (1 : Perm α) σb) = sign σb
    by rw [← this.1, ← this.2, ← sign_mul, sumCongr_mul, one_mul, mul_one]
  constructor
  · induction σa using swap_induction_on with
    | one => simp
    | swap_mul σa' a₁ a₂ ha ih =>
      rw [← one_mul (1 : Perm β), ← sumCongr_mul, sign_mul, sign_mul, ih, sumCongr_swap_one,
        sign_swap ha, sign_swap (Sum.inl_injective.ne_iff.mpr ha)]
  · induction σb using swap_induction_on with
    | one => simp
    | swap_mul σb' b₁ b₂ hb ih =>
      rw [← one_mul (1 : Perm α), ← sumCongr_mul, sign_mul, sign_mul, ih, sumCongr_one_swap,
        sign_swap hb, sign_swap (Sum.inr_injective.ne_iff.mpr hb)]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantb0cfeebd1b9db78f1dc8e96c36ed9c0eb4de808ad2f292cec8d71ff807981bb6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sign/Variantb0cfeebd1b9db78f1dc8e96c36ed9c0eb4de808ad2f292cec8d71ff807981bb6.lean#L563).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44d53713a1ba03e8f8028ace3bc2a45ab8ab9016` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
