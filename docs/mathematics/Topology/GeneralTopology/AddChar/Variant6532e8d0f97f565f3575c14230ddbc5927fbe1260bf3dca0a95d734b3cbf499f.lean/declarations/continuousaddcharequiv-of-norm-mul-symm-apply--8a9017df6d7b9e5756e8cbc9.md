# continuousAddCharEquiv_of_norm_mul_symm_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dd1b4489-f59a-b29a-8b2d-d598df983daa",
  "kind": "lemma",
  "lexical_name": "continuousAddCharEquiv_of_norm_mul_symm_apply",
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
  "slug": "continuousaddcharequiv-of-norm-mul-symm-apply--8a9017df6d7b9e5756e8cbc9",
  "source": {
    "blob": "eeb2afe31832f0fb702180fc19b9c8b34da0741f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 137,
    "path": "GRWTSK/Topology/GeneralTopology/AddChar/Variant6532e8d0f97f565f3575c14230ddbc5927fbe1260bf3dca0a95d734b3cbf499f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8a9017df6d7b9e5756e8cbc92fb00bcad959a7b9df43beeb7654f4ca83639de9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/AddChar/Variant6532e8d0f97f565f3575c14230ddbc5927fbe1260bf3dca0a95d734b3cbf499f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dd1b4489-f59a-b29a-8b2d-d598df983daa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma continuousAddCharEquiv_of_norm_mul_symm_apply {r : R} (hr : ‖r‖ < 1) :
    (continuousAddCharEquiv_of_norm_mul p R).symm ⟨r, hr⟩ = (addChar_of_value_at_one r
    (tendsto_pow_atTop_nhds_zero_iff_norm_lt_one.mpr hr) : AddChar ℤ_[p] R) :=
  rfl

end NormMulClass

end PadicInt
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/AddChar/Variant6532e8d0f97f565f3575c14230ddbc5927fbe1260bf3dca0a95d734b3cbf499f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/AddChar/Variant6532e8d0f97f565f3575c14230ddbc5927fbe1260bf3dca0a95d734b3cbf499f.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eeb2afe31832f0fb702180fc19b9c8b34da0741f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
