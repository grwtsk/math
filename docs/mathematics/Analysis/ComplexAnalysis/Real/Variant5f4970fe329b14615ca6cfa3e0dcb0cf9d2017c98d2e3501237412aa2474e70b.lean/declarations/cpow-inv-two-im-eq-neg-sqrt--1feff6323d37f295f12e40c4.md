# cpow_inv_two_im_eq_neg_sqrt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6e3f62550a758e94a1d513133cd744406b319e41",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1018,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5f/5f4970fe329b14615ca6cfa3e0dcb0cf9d2017c98d2e3501237412aa2474e70b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c4812ae2-3e3c-48be-cfab-0e9f9d1f6a1f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5440f89b-e793-18a3-44cb-331b593b58bc",
  "kind": "lemma",
  "lexical_name": "cpow_inv_two_im_eq_neg_sqrt",
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
  "slug": "cpow-inv-two-im-eq-neg-sqrt--1feff6323d37f295f12e40c4",
  "source": {
    "blob": "6e3f62550a758e94a1d513133cd744406b319e41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1025,
    "line": 1018,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Real/Variant5f4970fe329b14615ca6cfa3e0dcb0cf9d2017c98d2e3501237412aa2474e70b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1feff6323d37f295f12e40c442296ed9e479b12f726c895bf055b2fc2974f96b",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Real/Variant5f4970fe329b14615ca6cfa3e0dcb0cf9d2017c98d2e3501237412aa2474e70b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5440f89b-e793-18a3-44cb-331b593b58bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1018–1025.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma cpow_inv_two_im_eq_neg_sqrt {x : ℂ} (hx : x.im < 0) :
    (x ^ (2⁻¹ : ℂ)).im = -√((‖x‖ - x.re) / 2) := by
  rw [← ofReal_ofNat, ← ofReal_inv, cpow_ofReal_im, ← div_eq_mul_inv, ← one_div,
    ← Real.sqrt_eq_rpow, sin_half_eq_neg_sqrt, mul_neg, ← sqrt_mul (norm_nonneg _),
    ← mul_div_assoc, mul_sub, mul_one, norm_mul_cos_arg]
  · linarith [pi_pos, neg_pi_lt_arg x]
  · exact (arg_neg_iff.2 hx).le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Real/Variant5f4970fe329b14615ca6cfa3e0dcb0cf9d2017c98d2e3501237412aa2474e70b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Real/Variant5f4970fe329b14615ca6cfa3e0dcb0cf9d2017c98d2e3501237412aa2474e70b.lean#L1018).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e3f62550a758e94a1d513133cd744406b319e41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
