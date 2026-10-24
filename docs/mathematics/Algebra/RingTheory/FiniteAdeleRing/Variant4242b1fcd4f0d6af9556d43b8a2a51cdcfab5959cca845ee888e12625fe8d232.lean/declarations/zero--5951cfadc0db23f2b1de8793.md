# zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:02d45fd9-f573-bfcb-4885-a23a2dc6879d",
  "kind": "theorem",
  "lexical_name": "zero",
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
  "slug": "zero--5951cfadc0db23f2b1de8793",
  "source": {
    "blob": "b07585d9d173ea5d94be67a196bf0aec42f294b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 216,
    "path": "GRWTSK/Algebra/RingTheory/FiniteAdeleRing/Variant4242b1fcd4f0d6af9556d43b8a2a51cdcfab5959cca845ee888e12625fe8d232.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5951cfadc0db23f2b1de87930df15c5c71966fdb857962b57bce17118f2e6ffd",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/FiniteAdeleRing/Variant4242b1fcd4f0d6af9556d43b8a2a51cdcfab5959cca845ee888e12625fe8d232.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:02d45fd9-f573-bfcb-4885-a23a2dc6879d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 216–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zero : (0 : K_hat R K).IsFiniteAdele := by
  rw [IsFiniteAdele, Filter.eventually_cofinite]
  have h_empty :
    {v : HeightOneSpectrum R | ¬(0 : v.adicCompletion K) ∈ v.adicCompletionIntegers K} = ∅ := by
    ext v; rw [mem_empty_iff_false, iff_false_iff]; intro hv
    rw [mem_setOf] at hv; apply hv; rw [mem_adicCompletionIntegers]
    have h_zero : (Valued.v (0 : v.adicCompletion K) : WithZero (Multiplicative ℤ)) = 0 :=
      Valued.v.map_zero'
    rw [h_zero]; exact zero_le_one' _
  -- Porting note: was `exact`, but `OfNat` got in the way.
  convert finite_empty
#align dedekind_domain.prod_adic_completions.is_finite_adele.zero DedekindDomain.ProdAdicCompletions.IsFiniteAdele.zero

/-- The negative of a finite adèle is a finite adèle. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/FiniteAdeleRing/Variant4242b1fcd4f0d6af9556d43b8a2a51cdcfab5959cca845ee888e12625fe8d232.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/FiniteAdeleRing/Variant4242b1fcd4f0d6af9556d43b8a2a51cdcfab5959cca845ee888e12625fe8d232.lean#L216).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b07585d9d173ea5d94be67a196bf0aec42f294b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
