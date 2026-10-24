# sigmaR_one_apply_prime_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9949b222-0ecd-0ebb-be21-22a5a3d19250",
  "kind": "lemma",
  "lexical_name": "sigmaR_one_apply_prime_pow",
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
  "slug": "sigmar-one-apply-prime-pow--bd0261f63fff5242b2dd8951",
  "source": {
    "blob": "f10936542ce26f4e3d13f8c80e4a797c94ed7c9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 452,
    "line": 438,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variant42007ba30dbada865398868f58e11a889b7e865cffdbd5722b59ba222b79eafe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd0261f63fff5242b2dd8951e8fa8f695579e5a7251ee6f0d6cf499fa4bba072",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variant42007ba30dbada865398868f58e11a889b7e865cffdbd5722b59ba222b79eafe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9949b222-0ecd-0ebb-be21-22a5a3d19250`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 438–452.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sigmaR_one_apply_prime_pow {p i : ℕ} (hp : p.Prime) :
    σᴿ (1 : ℂ) (p ^ i) = ∑ k ∈ .range (i + 1), p ^ k := by
  simp only [sigmaR_apply_prime_pow hp, mul_one, Complex.cpow_natCast, cast_sum, cast_pow]

@[blueprint
  "sigmaR_eq_sum_div"
  (title := "sigmaR-eq-sum-div")
  (statement := /--
    We have that $\sigma^R_s(n)=\sum_{d\mid n}(n/d)^s$.
  -/)
  (proof := /--
    Note that $d \mapsto n/d$ forms a one-to-one mapping between the divisors of $n$. Using this in
    combination with the definiton we have that
    $$\sigma^R_s(n)=\sum_{d\mid n}d^s=\sum_{d\mid n}(n/d)^s.$$
  -/)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variant42007ba30dbada865398868f58e11a889b7e865cffdbd5722b59ba222b79eafe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/IwaniecKowalskiCh1/Variant42007ba30dbada865398868f58e11a889b7e865cffdbd5722b59ba222b79eafe.lean#L438).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f10936542ce26f4e3d13f8c80e4a797c94ed7c9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
