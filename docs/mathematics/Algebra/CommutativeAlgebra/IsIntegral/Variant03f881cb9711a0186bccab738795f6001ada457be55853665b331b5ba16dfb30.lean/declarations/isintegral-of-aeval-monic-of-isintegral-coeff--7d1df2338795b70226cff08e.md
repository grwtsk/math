# IsIntegral.of_aeval_monic_of_isIntegral_coeff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9bad1401caa94239470792cfee91c5c72741030d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 166,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/03/03f881cb9711a0186bccab738795f6001ada457be55853665b331b5ba16dfb30.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b76768ca-1ea9-0697-de62-7ffb9e28e95b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:85f58f49-ef90-f68b-49af-58adb95fbd2d",
  "kind": "lemma",
  "lexical_name": "IsIntegral.of_aeval_monic_of_isIntegral_coeff",
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
  "slug": "isintegral-of-aeval-monic-of-isintegral-coeff--7d1df2338795b70226cff08e",
  "source": {
    "blob": "9bad1401caa94239470792cfee91c5c72741030d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 166,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/IsIntegral/Variant03f881cb9711a0186bccab738795f6001ada457be55853665b331b5ba16dfb30.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d1df2338795b70226cff08e3cec3f15f72cbd368038196757431fa9388fc54c",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/IsIntegral/Variant03f881cb9711a0186bccab738795f6001ada457be55853665b331b5ba16dfb30.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:85f58f49-ef90-f68b-49af-58adb95fbd2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsIntegral.of_aeval_monic_of_isIntegral_coeff {R A : Type*} [CommRing R] [CommRing A]
    [Algebra R A] {x : A} {p : A[X]} (monic : p.Monic) (deg : p.natDegree ≠ 0)
    (hx : IsIntegral R (eval x p)) (hp : ∀ i, IsIntegral R (p.coeff i)) : IsIntegral R x := by
  obtain ⟨q, hqp, hdeg, hq⟩ :=
    lifts_and_natDegree_eq_and_monic (p := p) (f := algebraMap (integralClosure R A) _)
    (p.lifts_iff_coeff_lifts.mpr (by simpa)) monic
  exact isIntegral_trans _ (.of_aeval_monic hq (hdeg ▸ deg)
    (by simpa [← eval_map_algebraMap, hqp] using hx.tower_top))

@[stacks 030A]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/IsIntegral/Variant03f881cb9711a0186bccab738795f6001ada457be55853665b331b5ba16dfb30.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/IsIntegral/Variant03f881cb9711a0186bccab738795f6001ada457be55853665b331b5ba16dfb30.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9bad1401caa94239470792cfee91c5c72741030d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
