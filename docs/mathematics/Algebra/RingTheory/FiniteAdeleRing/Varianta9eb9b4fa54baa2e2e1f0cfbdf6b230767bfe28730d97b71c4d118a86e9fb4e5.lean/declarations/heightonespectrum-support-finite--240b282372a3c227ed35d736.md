# HeightOneSpectrum.Support.finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "034ee21a854f318f9c0c9a94f4aae67c8a560683",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 51,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a9/a9eb9b4fa54baa2e2e1f0cfbdf6b230767bfe28730d97b71c4d118a86e9fb4e5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b8eb2dd6-f66f-f5ba-d43a-831298bbb0e7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:02ff4114-4392-8431-fde2-35b8d455d59f",
  "kind": "lemma",
  "lexical_name": "HeightOneSpectrum.Support.finite",
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
  "slug": "heightonespectrum-support-finite--240b282372a3c227ed35d736",
  "source": {
    "blob": "034ee21a854f318f9c0c9a94f4aae67c8a560683",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 51,
    "path": "GRWTSK/Algebra/RingTheory/FiniteAdeleRing/Varianta9eb9b4fa54baa2e2e1f0cfbdf6b230767bfe28730d97b71c4d118a86e9fb4e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:240b282372a3c227ed35d736bb18869b17f95805f72cd5e57aa4232aea156a6d",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/FiniteAdeleRing/Varianta9eb9b4fa54baa2e2e1f0cfbdf6b230767bfe28730d97b71c4d118a86e9fb4e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:02ff4114-4392-8431-fde2-35b8d455d59f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma HeightOneSpectrum.Support.finite (k : K) : (Support R k).Finite := by
  -- We write k=n/d.
  obtain ⟨⟨n, ⟨d, hd⟩⟩, hk⟩ := IsLocalization.surj (nonZeroDivisors R) k
  have hd' : d ≠ 0 := nonZeroDivisors.ne_zero hd
  suffices {v : HeightOneSpectrum R | v.valuation K (algebraMap R K d) < 1}.Finite by
    apply Set.Finite.subset this
    intro v hv
    apply_fun v.valuation K at hk
    simp only [Valuation.map_mul, valuation_of_algebraMap] at hk
    rw [Set.mem_ofPred_eq, valuation_of_algebraMap]
    have := intValuation_le_one v n
    contrapose! this
    rw [← hk, mul_comm]
    exact (lt_mul_of_one_lt_right (by simp) hv).trans_le <|
      mul_le_mul_of_nonneg_right this (by simp)
  simp_rw [valuation_lt_one_iff_dvd]
  apply Ideal.finite_factors
  simpa only [Submodule.zero_eq_bot, ne_eq, Ideal.span_singleton_eq_bot]

end IsDedekindDomain

noncomputable section

open Function Set IsDedekindDomain.HeightOneSpectrum

namespace IsDedekindDomain

variable (K)

open scoped RestrictedProduct

/-! ### The finite adèle ring of a Dedekind domain
We define the finite adèle ring of `R` as the restricted product over all maximal ideals `v` of `R`
of `adicCompletion` with respect to `adicCompletionIntegers`. We prove that it is a commutative
ring. -/

/--
If `K` is the field of fractions of the Dedekind domain `R` then `FiniteAdeleRing R K` is
the ring of finite adeles of `K`, defined as the restricted product of the completions
`K_v` with respect to the subrings `R_v`. Here `v` runs through the nonzero primes of `R`
and the restricted product is the subring of `∏_v K_v` consisting of elements which
are in `R_v` for all but finitely many `v`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/FiniteAdeleRing/Varianta9eb9b4fa54baa2e2e1f0cfbdf6b230767bfe28730d97b71c4d118a86e9fb4e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/FiniteAdeleRing/Varianta9eb9b4fa54baa2e2e1f0cfbdf6b230767bfe28730d97b71c4d118a86e9fb4e5.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `034ee21a854f318f9c0c9a94f4aae67c8a560683` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
