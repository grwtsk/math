# image_pow_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b70a0063-4762-8423-6715-cfb77c85b047",
  "kind": "theorem",
  "lexical_name": "image_pow_subset",
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
  "slug": "image-pow-subset--ea797f9db5983a7d26f8a62e",
  "source": {
    "blob": "465631648544a42e7720dcb9a9a4a9ac3b74ffcb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 117,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/WellApproximable/Varianta5ff4671ffdff89626049601a2df534b5754997da629f6c96a6f34bdfd7ae531.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea797f9db5983a7d26f8a62ee44fb154b490b4c5598dc7ee729da9cde344a4af",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/WellApproximable/Varianta5ff4671ffdff89626049601a2df534b5754997da629f6c96a6f34bdfd7ae531.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b70a0063-4762-8423-6715-cfb77c85b047`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem image_pow_subset (n : ℕ) (hm : 0 < m) :
    (fun (y : A) => y ^ m) '' approxOrderOf A (n * m) δ ⊆ approxOrderOf A n (m * δ) := by
  rintro - ⟨a, ha, rfl⟩
  obtain ⟨b, hb : orderOf b = n * m, hab : a ∈ ball b δ⟩ := mem_approxOrderOf_iff.mp ha
  replace hb : b ^ m ∈ {y : A | orderOf y = n} := by
    rw [mem_setOf_eq, orderOf_pow' b hm.ne', hb, Nat.gcd_mul_left_left, n.mul_div_cancel hm]
  apply ball_subset_thickening hb (m * δ)
  convert pow_mem_ball hm hab using 1
  simp only [nsmul_eq_mul]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/WellApproximable/Varianta5ff4671ffdff89626049601a2df534b5754997da629f6c96a6f34bdfd7ae531.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/WellApproximable/Varianta5ff4671ffdff89626049601a2df534b5754997da629f6c96a6f34bdfd7ae531.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `465631648544a42e7720dcb9a9a4a9ac3b74ffcb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
