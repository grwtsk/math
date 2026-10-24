# totalDegree_expand

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1334ffa3-5358-5903-b9a0-8d51ae076614",
  "kind": "theorem",
  "lexical_name": "totalDegree_expand",
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
  "slug": "totaldegree-expand--c7b6608e54594d00e0699ac6",
  "source": {
    "blob": "c04e6a476cc220434d9954052f6179b2c23ce49b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 195,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Expand/Variant55adc733974b7179769e22cf97f483a485125646d31dbba4c9a920812199440a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c7b6608e54594d00e0699ac6355437d7a7b1a286344dbae193df48631ed12a6c",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Expand/Variant55adc733974b7179769e22cf97f483a485125646d31dbba4c9a920812199440a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1334ffa3-5358-5903-b9a0-8d51ae076614`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem totalDegree_expand (f : MvPolynomial σ R) :
    (expand p f).totalDegree = f.totalDegree * p := by
  classical
  rcases p.eq_zero_or_pos with hp | hp
  · simp [hp]
  by_cases hf : f = 0
  · rw [hf, map_zero, totalDegree_zero, zero_mul]
  simp_rw [totalDegree_eq, support_expand _ (p.ne_zero_iff_zero_lt.mpr hp)]
  simp only [Finsupp.card_toMultiset, Finset.sup_image, Finset.sup_mul₀, Function.comp_def]
  congr! 2 with d
  rw [Finsupp.sum_of_support_subset _ Finsupp.support_smul _ (by simp)]
  simp [Finsupp.sum, Finset.sum_mul, mul_comm p]

end

end CommSemiring

section CommRing

variable (R σ : Type*) [CommRing R]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Expand/Variant55adc733974b7179769e22cf97f483a485125646d31dbba4c9a920812199440a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Expand/Variant55adc733974b7179769e22cf97f483a485125646d31dbba4c9a920812199440a.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c04e6a476cc220434d9954052f6179b2c23ce49b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
