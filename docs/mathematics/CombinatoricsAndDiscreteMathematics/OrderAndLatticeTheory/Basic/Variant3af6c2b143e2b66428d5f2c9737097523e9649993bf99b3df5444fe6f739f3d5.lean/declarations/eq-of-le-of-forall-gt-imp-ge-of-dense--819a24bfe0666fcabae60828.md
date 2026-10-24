# eq_of_le_of_forall_gt_imp_ge_of_dense

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3508c0af-490a-ac32-2ef6-19f68acad27a",
  "kind": "theorem",
  "lexical_name": "eq_of_le_of_forall_gt_imp_ge_of_dense",
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
  "slug": "eq-of-le-of-forall-gt-imp-ge-of-dense--819a24bfe0666fcabae60828",
  "source": {
    "blob": "c276d0e0763beed77f5b133b229caa2d27940522",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1232,
    "line": 1213,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant3af6c2b143e2b66428d5f2c9737097523e9649993bf99b3df5444fe6f739f3d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:819a24bfe0666fcabae608289afdfca02d85126a23605be2fb0f44a3d1599074",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant3af6c2b143e2b66428d5f2c9737097523e9649993bf99b3df5444fe6f739f3d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3508c0af-490a-ac32-2ef6-19f68acad27a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1213–1232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_of_le_of_forall_gt_imp_ge_of_dense (h₁ : a₂ ≤ a₁) (h₂ : ∀ a < a₁, a ≤ a₂) : a₁ = a₂ :=
  (le_of_forall_lt_imp_le_of_dense h₂).antisymm h₁

@[deprecated (since := "2025-01-21")]
alias le_of_forall_le_of_dense := le_of_forall_gt_imp_ge_of_dense

@[deprecated (since := "2025-01-21")]
alias le_of_forall_ge_of_dense := le_of_forall_lt_imp_le_of_dense

@[deprecated (since := "2025-01-21")] alias forall_lt_le_iff := forall_lt_imp_le_iff_le_of_dense
@[deprecated (since := "2025-01-21")] alias forall_gt_ge_iff := forall_gt_imp_ge_iff_le_of_dense

@[deprecated (since := "2025-01-21")]
alias eq_of_le_of_forall_le_of_dense := eq_of_le_of_forall_lt_imp_le_of_dense

@[deprecated (since := "2025-01-21")]
alias eq_of_le_of_forall_ge_of_dense := eq_of_le_of_forall_gt_imp_ge_of_dense

end LinearOrder

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant3af6c2b143e2b66428d5f2c9737097523e9649993bf99b3df5444fe6f739f3d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant3af6c2b143e2b66428d5f2c9737097523e9649993bf99b3df5444fe6f739f3d5.lean#L1213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c276d0e0763beed77f5b133b229caa2d27940522` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
