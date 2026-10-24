# norm_bound_of_odd_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2d45da58f9af0f2d3b54071ef8ffa6b956253942",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 175,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6c/6cfd24d8822e309ba77cc0ec762e78e06607737a94218eaca25bc36ab1b316c4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:854d2396-ad91-dd76-abb5-70d52f21b97b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:07c53076-476a-9f72-ecb2-7c1efaa45ff9",
  "kind": "theorem",
  "lexical_name": "norm_bound_of_odd_sum",
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
  "slug": "norm-bound-of-odd-sum--a139048eab3cee0396a22de9",
  "source": {
    "blob": "2d45da58f9af0f2d3b54071ef8ffa6b956253942",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 175,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variant6cfd24d8822e309ba77cc0ec762e78e06607737a94218eaca25bc36ab1b316c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a139048eab3cee0396a22de956a7e0f6aa1f66eb3714f60f1f0d2e978b86b24f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variant6cfd24d8822e309ba77cc0ec762e78e06607737a94218eaca25bc36ab1b316c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:07c53076-476a-9f72-ecb2-7c1efaa45ff9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_bound_of_odd_sum {x y z : ℤ} (h : x + y = 2 * z + 1) :
    2 * z * z + 2 * z + 1 ≤ x * x + y * y := by
  suffices 4 * z * z + 4 * z + 1 + 1 ≤ 2 * x * x + 2 * y * y by
    rw [← mul_le_mul_left (zero_lt_two' ℤ)]; ring_nf at this ⊢; exact this
  have h' : (x + y) * (x + y) = 4 * z * z + 4 * z + 1 := by rw [h]; ring
  rw [← add_sq_add_sq_sub, h', add_le_add_iff_left]
  suffices 0 < (x - y) * (x - y) by apply Int.add_one_le_of_lt this
  rw [mul_self_pos, sub_ne_zero]; apply Int.ne_of_odd_add ⟨z, h⟩
#align imo1998_q2.norm_bound_of_odd_sum Imo1998Q2.norm_bound_of_odd_sum

section

variable [Fintype J]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variant6cfd24d8822e309ba77cc0ec762e78e06607737a94218eaca25bc36ab1b316c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Imo1998Q2/Variant6cfd24d8822e309ba77cc0ec762e78e06607737a94218eaca25bc36ab1b316c4.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d45da58f9af0f2d3b54071ef8ffa6b956253942` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
