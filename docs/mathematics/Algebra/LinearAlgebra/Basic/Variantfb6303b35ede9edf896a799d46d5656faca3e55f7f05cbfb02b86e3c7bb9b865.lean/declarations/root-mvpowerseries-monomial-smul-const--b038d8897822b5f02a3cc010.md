# _root_.MvPowerSeries.monomial_smul_const

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1d9fcebc259a8e3954bf5d670cdccf87863cd6e2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 982,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fb/fb6303b35ede9edf896a799d46d5656faca3e55f7f05cbfb02b86e3c7bb9b865.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7e5e423f-2eb9-4fee-8648-330b2547c841",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e2cdec59-71c3-03f2-746b-2105e442ab56",
  "kind": "theorem",
  "lexical_name": "_root_.MvPowerSeries.monomial_smul_const",
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
  "slug": "root-mvpowerseries-monomial-smul-const--b038d8897822b5f02a3cc010",
  "source": {
    "blob": "1d9fcebc259a8e3954bf5d670cdccf87863cd6e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 997,
    "line": 982,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantfb6303b35ede9edf896a799d46d5656faca3e55f7f05cbfb02b86e3c7bb9b865.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b038d8897822b5f02a3cc0108c368b164e181ead08a8aabc469032b6cc94b5bd",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantfb6303b35ede9edf896a799d46d5656faca3e55f7f05cbfb02b86e3c7bb9b865.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e2cdec59-71c3-03f2-746b-2105e442ab56`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 982–997.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.MvPowerSeries.monomial_smul_const
    {σ : Type*} {R : Type*} [CommSemiring R]
    (e : σ →₀ ℕ) (r : R) :
    MvPowerSeries.monomial e (r ^ (e.sum fun _ n => n))
      = (e.prod fun s e => (r • MvPowerSeries.X s) ^ e) := by
  rw [MvPowerSeries.prod_smul_X_eq_smul_monomial_one, ← map_smul, smul_eq_mul, mul_one]
  simp only [Finsupp.sum, Finsupp.prod, Finset.prod_pow_eq_pow_sum]

end Algebra

end MvPolynomial

namespace MvPowerSeries

variable {σ R A : Type*} [CommSemiring R] [CommSemiring A] [Algebra R A] (f : MvPowerSeries σ R)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantfb6303b35ede9edf896a799d46d5656faca3e55f7f05cbfb02b86e3c7bb9b865.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantfb6303b35ede9edf896a799d46d5656faca3e55f7f05cbfb02b86e3c7bb9b865.lean#L982).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d9fcebc259a8e3954bf5d670cdccf87863cd6e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
