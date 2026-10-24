# weak_rough_arity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f5e18c2c-2e37-0b6c-8237-ee54a91c3d97",
  "kind": "theorem",
  "lexical_name": "weak_rough_arity",
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
  "slug": "weak-rough-arity--5e3c6c6f9a02651330382c0b",
  "source": {
    "blob": "5a88bd0a70321058fa83fa088a49623edb8eccd3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 25,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RoughFactorArity/Variant4da9c8876cb3d8a118ca2014a17fed8cf76f261f0292b64305f231e0dbdaf81c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5e3c6c6f9a02651330382c0bf3f67684440d23068bc4d101a21d3037ed3078bd",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RoughFactorArity/Variant4da9c8876cb3d8a118ca2014a17fed8cf76f261f0292b64305f231e0dbdaf81c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f5e18c2c-2e37-0b6c-8237-ee54a91c3d97`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weak_rough_arity {ι : Type*} (s : Finset ι) (a : ι → ℝ) {X theta : ℝ}
    (hX : 1 < X) (hrough : ∀ i ∈ s, X ^ theta ≤ a i) (hprod : (∏ i ∈ s, a i) ≤ X) :
    theta * (s.card : ℝ) ≤ 1 := by
  have hX0 : 0 < X := zero_lt_one.trans hX
  have hlower : X ^ (theta * (s.card : ℝ)) ≤ ∏ i ∈ s, a i := by
    rw [Real.rpow_mul_natCast hX0.le]
    simpa only [Finset.prod_const] using
      Finset.prod_le_prod (fun _i _ => (Real.rpow_pos_of_pos hX0 theta).le) hrough
  have h : X ^ (theta * (s.card : ℝ)) ≤ X ^ (1 : ℝ) := by
    rw [Real.rpow_one]
    exact hlower.trans hprod
  exact (Real.rpow_le_rpow_left_iff hX).mp h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RoughFactorArity/Variant4da9c8876cb3d8a118ca2014a17fed8cf76f261f0292b64305f231e0dbdaf81c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/RoughFactorArity/Variant4da9c8876cb3d8a118ca2014a17fed8cf76f261f0292b64305f231e0dbdaf81c.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a88bd0a70321058fa83fa088a49623edb8eccd3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
