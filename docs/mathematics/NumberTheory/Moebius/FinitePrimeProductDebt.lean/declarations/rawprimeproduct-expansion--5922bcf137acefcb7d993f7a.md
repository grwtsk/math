# rawPrimeProduct_expansion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:81b7e386-abea-8e8c-da01-e0cca4594e7c",
  "kind": "theorem",
  "lexical_name": "rawPrimeProduct_expansion",
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
  "slug": "rawprimeproduct-expansion--5922bcf137acefcb7d993f7a",
  "source": {
    "blob": "c8306cc01af4928e3056636576250f63490b8522",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 72,
    "path": "GRWTSK/NumberTheory/Moebius/FinitePrimeProductDebt.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5922bcf137acefcb7d993f7a2dec5b6835d978e359449bf42115dc3eda6041cd",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/FinitePrimeProductDebt.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:81b7e386-abea-8e8c-da01-e0cca4594e7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rawPrimeProduct_expansion (N : ℕ) (s : ℂ) :
    rawPrimeProduct N s =
      ∑ U ∈ (Nat.primesLE N).powerset,
        (ArithmeticFunction.moebius (primeProduct U) : ℂ) *
          exponentialWeight s (primeProduct U) := by
  classical
  rw [rawPrimeProduct, Finset.prod_sub]
  apply Finset.sum_congr rfl
  intro U hU
  have hPrime : ∀ p ∈ U, p.Prime := fun p hp =>
    Nat.prime_of_mem_primesLE ((Finset.mem_powerset.mp hU) hp)
  rw [moebius_primeProduct U hPrime, exponentialWeight_primeProduct s U hPrime]
  push_cast
  simp only [Finset.prod_const]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/FinitePrimeProductDebt.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/FinitePrimeProductDebt.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c8306cc01af4928e3056636576250f63490b8522` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
