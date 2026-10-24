# mulDysonEtransform_idem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:37956d07-1d46-6e0d-a7c5-75c508aeb9bd",
  "kind": "theorem",
  "lexical_name": "mulDysonEtransform_idem",
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
  "slug": "muldysonetransform-idem--d717a1f8b0ce61cf1ff02757",
  "source": {
    "blob": "a97e5e0807644b17de9ef0cf5d4ac74169b2ecd6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 83,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Etransform/Variant8c5d9bfb957153935a9350f10633aeeeb93335ffa8a2b7ded21719cf545ee289.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d717a1f8b0ce61cf1ff02757d214017355215d5e52228e160e4d6bacaf037b0c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ETransform/Variant8c5d9bfb957153935a9350f10633aeeeb93335ffa8a2b7ded21719cf545ee289.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:37956d07-1d46-6e0d-a7c5-75c508aeb9bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mulDysonEtransform_idem :
    mulDysonEtransform e (mulDysonEtransform e x) = mulDysonEtransform e x := by
  ext : 1 <;> dsimp
  · rw [smul_finset_inter, smul_inv_smul, inter_comm, union_eq_left_iff_subset]
    exact inter_subset_union
  · rw [smul_finset_union, inv_smul_smul, union_comm, inter_eq_left_iff_subset]
    exact inter_subset_union
#align finset.mul_dyson_e_transform_idem Finset.mulDysonEtransform_idem
#align finset.add_dyson_e_transform_idem Finset.addDysonEtransform_idem

variable {e x}

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ETransform/Variant8c5d9bfb957153935a9350f10633aeeeb93335ffa8a2b7ded21719cf545ee289.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Etransform/Variant8c5d9bfb957153935a9350f10633aeeeb93335ffa8a2b7ded21719cf545ee289.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a97e5e0807644b17de9ef0cf5d4ac74169b2ecd6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
