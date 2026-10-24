# norm_prod_le_of_forall_le_of_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5fbc15d9-74ed-239a-a78f-f2c91d03cbfe",
  "kind": "lemma",
  "lexical_name": "norm_prod_le_of_forall_le_of_nonneg",
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
  "slug": "norm-prod-le-of-forall-le-of-nonneg--675b5b10afa9d0a1f9080760",
  "source": {
    "blob": "599deda5cbea27bbb7ec2dd26f13f10b8033ff8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 274,
    "line": 264,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Ultra/Variantfb75d76319d2a757e7acf9311964109a6ef6c25188292bb49a786c67911bd03f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:675b5b10afa9d0a1f9080760ff60cb1732ad16bbe46b847e3751114a871b1de1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Ultra/Variantfb75d76319d2a757e7acf9311964109a6ef6c25188292bb49a786c67911bd03f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5fbc15d9-74ed-239a-a78f-f2c91d03cbfe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 264–274.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma norm_prod_le_of_forall_le_of_nonneg {s : Finset ι} {f : ι → M} {C : ℝ}
    (h_nonneg : 0 ≤ C) (hC : ∀ i ∈ s, ‖f i‖ ≤ C) : ‖∏ i ∈ s, f i‖ ≤ C := by
  lift C to NNReal using h_nonneg
  exact nnnorm_prod_le_of_forall_le hC

/--
Given a function `f : ι → M` and a nonempty finite set `t ⊆ ι`, we can always find `i ∈ t` such that
`‖∏ j in t, f j‖ ≤ ‖f i‖`.
-/
@[to_additive /-- Given a function `f : ι → M` and a nonempty finite set `t ⊆ ι`, we can always find
`i ∈ t` such that `‖∑ j ∈ t, f j‖ ≤ ‖f i‖`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Ultra/Variantfb75d76319d2a757e7acf9311964109a6ef6c25188292bb49a786c67911bd03f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Ultra/Variantfb75d76319d2a757e7acf9311964109a6ef6c25188292bb49a786c67911bd03f.lean#L264).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `599deda5cbea27bbb7ec2dd26f13f10b8033ff8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
