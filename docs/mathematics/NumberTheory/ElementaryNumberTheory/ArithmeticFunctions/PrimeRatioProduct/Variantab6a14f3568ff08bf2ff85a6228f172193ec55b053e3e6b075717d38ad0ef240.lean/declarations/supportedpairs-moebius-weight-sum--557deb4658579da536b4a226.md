# supportedPairs_moebius_weight_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:18225024-ab8f-32f2-5e19-971bdb759e80",
  "kind": "theorem",
  "lexical_name": "supportedPairs_moebius_weight_sum",
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
  "slug": "supportedpairs-moebius-weight-sum--557deb4658579da536b4a226",
  "source": {
    "blob": "8dacd16366adce0ddddf3184896bd48a76bdede8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 142,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProduct/Variantab6a14f3568ff08bf2ff85a6228f172193ec55b053e3e6b075717d38ad0ef240.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:557deb4658579da536b4a2266abf4930ed65abacc6db6ba288afadbcdbff069c",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProduct/Variantab6a14f3568ff08bf2ff85a6228f172193ec55b053e3e6b075717d38ad0ef240.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18225024-ab8f-32f2-5e19-971bdb759e80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem supportedPairs_moebius_weight_sum (P : Finset ℕ) (hP : ∀ p ∈ P, Nat.Prime p) :
    (∑ p ∈ supportedPairs P,
      |(ArithmeticFunction.moebius p.1 : ℝ) * (ArithmeticFunction.moebius p.2 : ℝ)| /
        Real.sqrt ((p.1 * p.2 : ℕ) : ℝ)) =
      ∏ p ∈ P, (1 + 2 / Real.sqrt (p : ℝ)) := by
  rw [← supportedPairs_weight_sum P hP]
  apply sum_congr rfl
  intro p hp
  have hs := (mem_supportedPairs_iff P hP p.1 p.2).mp hp
  have h1 : |(ArithmeticFunction.moebius p.1 : ℝ)| = 1 := by
    exact_mod_cast ArithmeticFunction.abs_moebius_eq_one_of_squarefree hs.1
  have h2 : |(ArithmeticFunction.moebius p.2 : ℝ)| = 1 := by
    exact_mod_cast ArithmeticFunction.abs_moebius_eq_one_of_squarefree hs.2.1
  rw [abs_mul, h1, h2, one_mul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProduct/Variantab6a14f3568ff08bf2ff85a6228f172193ec55b053e3e6b075717d38ad0ef240.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimeRatioProduct/Variantab6a14f3568ff08bf2ff85a6228f172193ec55b053e3e6b075717d38ad0ef240.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8dacd16366adce0ddddf3184896bd48a76bdede8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
