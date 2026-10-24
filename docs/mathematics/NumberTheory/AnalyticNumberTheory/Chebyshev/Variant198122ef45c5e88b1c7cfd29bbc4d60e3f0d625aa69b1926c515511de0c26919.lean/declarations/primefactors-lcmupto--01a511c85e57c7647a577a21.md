# primeFactors_lcmUpto

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dbcf6787-d7e4-4267-188b-cc1df47279f0",
  "kind": "theorem",
  "lexical_name": "primeFactors_lcmUpto",
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
  "slug": "primefactors-lcmupto--01a511c85e57c7647a577a21",
  "source": {
    "blob": "c61841c98997cb77229212c2741e157e4724b1f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 84,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant198122ef45c5e88b1c7cfd29bbc4d60e3f0d625aa69b1926c515511de0c26919.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:01a511c85e57c7647a577a2132d6ddc6f9a057b110ec814e485cf8db01ee4b74",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant198122ef45c5e88b1c7cfd29bbc4d60e3f0d625aa69b1926c515511de0c26919.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dbcf6787-d7e4-4267-188b-cc1df47279f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primeFactors_lcmUpto (n : ℕ) : primeFactors (lcmUpto n) = primesLE n := by
  ext p
  constructor
  · intro h
    have := prime_of_mem_primeFactors h
    rw [←support_factorization, Finsupp.mem_support_iff, factorization_lcmUpto _ this] at h
    simp_all
  intro h
  simp_all only [mem_filter, mem_range, Order.lt_add_one_iff, lcmUpto, mem_primeFactors, ne_eq,
    Finset.lcm_eq_zero_iff, mem_Icc, id_eq, exists_eq_right, nonpos_iff_eq_zero, one_ne_zero,
    _root_.zero_le, and_true, not_false_eq_true, true_and]
  convert dvd_lcm (b := p) ?_ <;> simp_all [h.2.one_le]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant198122ef45c5e88b1c7cfd29bbc4d60e3f0d625aa69b1926c515511de0c26919.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Chebyshev/Variant198122ef45c5e88b1c7cfd29bbc4d60e3f0d625aa69b1926c515511de0c26919.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c61841c98997cb77229212c2741e157e4724b1f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
