# product_ge_twenty_five_of_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:02bd25d2-d673-e81f-03a2-10814d362d90",
  "kind": "theorem",
  "lexical_name": "product_ge_twenty_five_of_mem",
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
  "slug": "product-ge-twenty-five-of-mem--b3bc804ede724d76f3716c5e",
  "source": {
    "blob": "9682ef821287392a52e6f556e98bec0dbdd85bae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 213,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaResidualCoefficient/Variantc87888ad1529f2869912fefe854f3235500de4cee87196775fea01f2d814ac2d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3bc804ede724d76f3716c5eba8fb795140f7717783e02e8dcdc09db81403849",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaResidualCoefficient/Variantc87888ad1529f2869912fefe854f3235500de4cee87196775fea01f2d814ac2d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:02bd25d2-d673-e81f-03a2-10814d362d90`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem product_ge_twenty_five_of_mem {n d : ℕ}
    (hd : d ∈ residualPrimeSquareInventory n) : 25 ≤ n := by
  rcases mem_residualPrimeSquareInventory.mp hd with ⟨hdnative, hd5, _⟩
  rcases mem_properCoprimeDivisorInventory.mp hdnative with ⟨hdiv, _, hm2, hcop⟩
  have hm5 := proper_coprime_six_ge_five hm2 hcop
  have hprod : d * (n / d) = n := Nat.mul_div_cancel' (Nat.dvd_of_mem_divisors hdiv)
  have hmul := Nat.mul_le_mul hd5 hm5
  rw [hprod] at hmul
  simpa only [Nat.reduceMul] using hmul

/-- No earlier product can occur in the literal residual inventory. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaResidualCoefficient/Variantc87888ad1529f2869912fefe854f3235500de4cee87196775fea01f2d814ac2d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceKapitzaResidualCoefficient/Variantc87888ad1529f2869912fefe854f3235500de4cee87196775fea01f2d814ac2d.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9682ef821287392a52e6f556e98bec0dbdd85bae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
