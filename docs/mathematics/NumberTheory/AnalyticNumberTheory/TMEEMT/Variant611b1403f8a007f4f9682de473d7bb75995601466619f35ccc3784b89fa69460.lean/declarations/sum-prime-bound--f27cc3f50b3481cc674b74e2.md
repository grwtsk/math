# sum_prime_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0ec90d8c858baca8b01364abdfa948bb05f941a5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 676,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/61/611b1403f8a007f4f9682de473d7bb75995601466619f35ccc3784b89fa69460.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b32640e3-77cb-7895-e01e-8acc49e5ec63",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5b4af92b-8fad-0c57-8e31-5dcedcd705f4",
  "kind": "theorem",
  "lexical_name": "sum_prime_bound",
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
  "slug": "sum-prime-bound--f27cc3f50b3481cc674b74e2",
  "source": {
    "blob": "0ec90d8c858baca8b01364abdfa948bb05f941a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 689,
    "line": 676,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/TMEEMT/Variant611b1403f8a007f4f9682de473d7bb75995601466619f35ccc3784b89fa69460.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f27cc3f50b3481cc674b74e2435e1d11259c6c6034517cec6534afeaae5d6f79",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/TMEEMT/Variant611b1403f8a007f4f9682de473d7bb75995601466619f35ccc3784b89fa69460.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5b4af92b-8fad-0c57-8e31-5dcedcd705f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 676–689.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_prime_bound (x₀ c₁ c₂ : ℝ) (hrow : (x₀, c₁, c₂) ∈ Table_1)
    (x : ℝ) (hx : x ≥ x₀) :
    x ^ 2 / (2 * log x) + c₁ * x ^ 2 / (log x) ^ 2 ≤
      ∑ p ∈ Finset.filter Nat.Prime (Finset.Iic ⌊x⌋₊), (p : ℝ) ∧
    ∑ p ∈ Finset.filter Nat.Prime (Finset.Iic ⌊x⌋₊), (p : ℝ) ≤
      x ^ 2 / (2 * log x) + c₂ * x ^ 2 / (log x) ^ 2 := by sorry

end Trevino

namespace DelegliseNicolas

blueprint_comment /-- Some results from \cite{deleglise-nicolas} -/

/-- The sum of $r$-th powers of primes up to $x$. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/TMEEMT/Variant611b1403f8a007f4f9682de473d7bb75995601466619f35ccc3784b89fa69460.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/TMEEMT/Variant611b1403f8a007f4f9682de473d7bb75995601466619f35ccc3784b89fa69460.lean#L676).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ec90d8c858baca8b01364abdfa948bb05f941a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
