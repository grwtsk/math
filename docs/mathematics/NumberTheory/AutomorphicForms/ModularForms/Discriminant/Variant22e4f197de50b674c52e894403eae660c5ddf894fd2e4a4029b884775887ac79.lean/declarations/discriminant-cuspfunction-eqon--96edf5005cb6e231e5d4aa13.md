# discriminant_cuspFunction_eqOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f1d831120b5f2baa1b8af0571bce2de472f94014",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 201,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/22/22e4f197de50b674c52e894403eae660c5ddf894fd2e4a4029b884775887ac79.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2096646c-2c40-87ec-a58d-e41360a72a8e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1379665f-f229-4122-bf2a-dc972f9a2116",
  "kind": "lemma",
  "lexical_name": "discriminant_cuspFunction_eqOn",
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
  "slug": "discriminant-cuspfunction-eqon--96edf5005cb6e231e5d4aa13",
  "source": {
    "blob": "f1d831120b5f2baa1b8af0571bce2de472f94014",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 201,
    "path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/Discriminant/Variant22e4f197de50b674c52e894403eae660c5ddf894fd2e4a4029b884775887ac79.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:96edf5005cb6e231e5d4aa1326b315658882845fdb6a006af38ff120f8c70cbb",
  "verification": {
    "reference": "docs/verification/NumberTheory/AutomorphicForms/ModularForms/Discriminant/Variant22e4f197de50b674c52e894403eae660c5ddf894fd2e4a4029b884775887ac79.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1379665f-f229-4122-bf2a-dc972f9a2116`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma discriminant_cuspFunction_eqOn : Set.EqOn (cuspFunction 1 Δ)
    (fun q ↦ q * ∏' i, (1 - q ^ (i + 1)) ^ 24) (Metric.ball 0 1) := by
  intro q hq
  by_cases hq0 : q = 0
  · simpa [hq0] using! Periodic.cuspFunction_zero_of_zero_at_inf one_pos
      discriminant_isZeroAtImInfty.zero_at_infty_comp_ofComplex
  · have him := Periodic.im_invQParam_pos_of_norm_lt_one one_pos
      (by simpa [dist_zero_right] using hq) hq0
    simp [cuspFunction, Periodic.cuspFunction_eq_of_nonzero 1 _ hq0,
      ofComplex_apply_of_im_pos him, discriminant_eq_q_prod ⟨_, him⟩,
      Periodic.qParam_right_inv one_ne_zero hq0, eta_q]

/-- The first q-expansion coefficient of the modular discriminant is 1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AutomorphicForms/ModularForms/Discriminant/Variant22e4f197de50b674c52e894403eae660c5ddf894fd2e4a4029b884775887ac79.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AutomorphicForms/ModularForms/Discriminant/Variant22e4f197de50b674c52e894403eae660c5ddf894fd2e4a4029b884775887ac79.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1d831120b5f2baa1b8af0571bce2de472f94014` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
