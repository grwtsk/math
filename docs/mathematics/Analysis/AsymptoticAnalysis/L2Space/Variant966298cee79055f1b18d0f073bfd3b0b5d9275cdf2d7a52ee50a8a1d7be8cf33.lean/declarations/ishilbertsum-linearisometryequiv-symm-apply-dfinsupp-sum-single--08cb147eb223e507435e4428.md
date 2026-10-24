# IsHilbertSum.linearIsometryEquiv_symm_apply_dfinsupp_sum_single

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b8520356ab2f1c4a3fbd850e62a522fc8517f0bf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 327,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/96/966298cee79055f1b18d0f073bfd3b0b5d9275cdf2d7a52ee50a8a1d7be8cf33.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9119bc0d-d2c2-6bee-1579-dda719ed32a5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5c5c4882-b365-9fe8-d9b6-199b6275d281",
  "kind": "theorem",
  "lexical_name": "IsHilbertSum.linearIsometryEquiv_symm_apply_dfinsupp_sum_single",
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
  "slug": "ishilbertsum-linearisometryequiv-symm-apply-dfinsupp-sum-single--08cb147eb223e507435e4428",
  "source": {
    "blob": "b8520356ab2f1c4a3fbd850e62a522fc8517f0bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 336,
    "line": 327,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/L2Space/Variant966298cee79055f1b18d0f073bfd3b0b5d9275cdf2d7a52ee50a8a1d7be8cf33.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:08cb147eb223e507435e4428942f9ba9e099c5091f3664a4cc21d2e34ae08aee",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/L2Space/Variant966298cee79055f1b18d0f073bfd3b0b5d9275cdf2d7a52ee50a8a1d7be8cf33.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5c5c4882-b365-9fe8-d9b6-199b6275d281`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 327–336.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem IsHilbertSum.linearIsometryEquiv_symm_apply_dfinsupp_sum_single
    [DecidableEq ι] [∀ i, DecidableEq (G i)] (hV : IsHilbertSum 𝕜 G V) (W₀ : Π₀ i : ι, G i) :
    hV.linearIsometryEquiv.symm (W₀.sum (lp.single 2)) = W₀.sum fun i => V i := by
  simp only [map_dfinsuppSum, IsHilbertSum.linearIsometryEquiv_symm_apply_single]

set_option backward.isDefEq.respectTransparency false in
/-- In the canonical isometric isomorphism between a Hilbert sum `E` of `G : ι → Type*` and
`lp G 2`, a finitely-supported vector in `lp G 2` is the image of the associated finite sum of
elements of `E`. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/L2Space/Variant966298cee79055f1b18d0f073bfd3b0b5d9275cdf2d7a52ee50a8a1d7be8cf33.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/L2Space/Variant966298cee79055f1b18d0f073bfd3b0b5d9275cdf2d7a52ee50a8a1d7be8cf33.lean#L327).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8520356ab2f1c4a3fbd850e62a522fc8517f0bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
