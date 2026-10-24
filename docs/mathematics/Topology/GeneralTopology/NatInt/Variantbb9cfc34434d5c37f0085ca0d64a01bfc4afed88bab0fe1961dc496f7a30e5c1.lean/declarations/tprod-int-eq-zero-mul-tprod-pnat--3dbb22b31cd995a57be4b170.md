# tprod_int_eq_zero_mul_tprod_pnat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "068846239a74b9cff04c456bcba142809ac58eca",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 574,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bb/bb9cfc34434d5c37f0085ca0d64a01bfc4afed88bab0fe1961dc496f7a30e5c1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cab72f01-3f00-a767-c54d-0ea0c38d2c68",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9a931357-a2ef-c6dd-3391-95ff44c5f9dc",
  "kind": "theorem",
  "lexical_name": "tprod_int_eq_zero_mul_tprod_pnat",
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
  "slug": "tprod-int-eq-zero-mul-tprod-pnat--3dbb22b31cd995a57be4b170",
  "source": {
    "blob": "068846239a74b9cff04c456bcba142809ac58eca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 592,
    "line": 574,
    "path": "GRWTSK/Topology/GeneralTopology/NatInt/Variantbb9cfc34434d5c37f0085ca0d64a01bfc4afed88bab0fe1961dc496f7a30e5c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3dbb22b31cd995a57be4b1705a95de1fbbac64602ea25d921bbcc9de625fd83a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NatInt/Variantbb9cfc34434d5c37f0085ca0d64a01bfc4afed88bab0fe1961dc496f7a30e5c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9a931357-a2ef-c6dd-3391-95ff44c5f9dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 574–592.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tprod_int_eq_zero_mul_tprod_pnat [UniformSpace G] [IsUniformGroup G] [CompleteSpace G]
    [T2Space G] {f : ℤ → G} (hf2 : Multipliable f) :
    ∏' n, f n = f 0 * (∏' n : ℕ+, f n) * (∏' n : ℕ+, f (-n)) := by
  have h1 : Multipliable fun n : ℕ ↦ f n :=
    (multipliable_int_iff_multipliable_nat_and_neg.mp hf2).1
  have h2 : Multipliable fun n : ℕ ↦ f (-n) :=
    (multipliable_int_iff_multipliable_nat_and_neg.mp hf2).2
  have h3 : Multipliable fun n : ℕ+ ↦ f n := by
    rwa [multipliable_pnat_iff_multipliable_succ (f := (f ·)),
      multipliable_nat_add_iff 1 (f := (f ·))]
  have h4 : Multipliable fun n : ℕ+ ↦ f (-n) := by
    rwa [multipliable_pnat_iff_multipliable_succ (f := (fun x ↦ f (-x))),
      multipliable_nat_add_iff 1 (f := (fun x ↦ f (-x)))]
  have := tprod_nat_mul_neg hf2
  simp only [← tprod_zero_pnat_eq_tprod_nat (by simpa using h1.mul h2), Nat.cast_zero, neg_zero,
    mul_comm _ (f 0), mul_assoc, mul_right_inj] at this
  simp [← this, h3.tprod_mul h4, ← mul_assoc]

@[to_additive tsum_int_eq_zero_add_two_mul_tsum_pnat]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NatInt/Variantbb9cfc34434d5c37f0085ca0d64a01bfc4afed88bab0fe1961dc496f7a30e5c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NatInt/Variantbb9cfc34434d5c37f0085ca0d64a01bfc4afed88bab0fe1961dc496f7a30e5c1.lean#L574).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `068846239a74b9cff04c456bcba142809ac58eca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
