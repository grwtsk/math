# Module.exists_dual_forall_apply_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bf48d773-14ea-d519-dff9-674151fe5983",
  "kind": "lemma",
  "lexical_name": "Module.exists_dual_forall_apply_ne_zero",
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
  "slug": "module-exists-dual-forall-apply-ne-zero--2c5beb02eae063923ba310ae",
  "source": {
    "blob": "84f5c9d0d8d1c467e8d94cd1605f4586f84ea3be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 120,
    "path": "GRWTSK/Algebra/LinearAlgebra/Union/Variant124e756f3f29be48576de3f6ba5ea8d9bbc093db17e40026c7f108a382fe76d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2c5beb02eae063923ba310aead9d1284bf3b300b588f8a38437d560327d8844e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Union/Variant124e756f3f29be48576de3f6ba5ea8d9bbc093db17e40026c7f108a382fe76d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bf48d773-14ea-d519-dff9-674151fe5983`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Module.exists_dual_forall_apply_ne_zero (v : ι → M) (hv : ∀ i, v i ≠ 0) :
    ∃ f : Dual K M, ∀ i, f (v i) ≠ 0 := by
  refine Dual.exists_forall_ne_zero_of_forall_exists (fun i ↦ Dual.eval K M (v i)) fun i ↦ ?_
  by_contra! contra
  simp_rw [Dual.eval_apply, forall_dual_apply_eq_zero_iff] at contra
  exact hv i contra
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Union/Variant124e756f3f29be48576de3f6ba5ea8d9bbc093db17e40026c7f108a382fe76d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Union/Variant124e756f3f29be48576de3f6ba5ea8d9bbc093db17e40026c7f108a382fe76d5.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84f5c9d0d8d1c467e8d94cd1605f4586f84ea3be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
