# eulerProduct_completely_multiplicative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eaf2b1dd-0730-a6c0-b722-64b2c689a769",
  "kind": "theorem",
  "lexical_name": "eulerProduct_completely_multiplicative",
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
  "slug": "eulerproduct-completely-multiplicative--a40f0ea23aa9e8ea37c6d60b",
  "source": {
    "blob": "88d824da1f06d504490ae01374c29e5d7f6ab473",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 386,
    "line": 371,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant7630d88377d8ba2bfe21f315870d5fd608182b7ee802939301b9e35fa9556ac7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a40f0ea23aa9e8ea37c6d60b7fa6d92282796f9166b7febd9a3c64f5298ea4c3",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Basic/Variant7630d88377d8ba2bfe21f315870d5fd608182b7ee802939301b9e35fa9556ac7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eaf2b1dd-0730-a6c0-b722-64b2c689a769`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 371–386.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eulerProduct_completely_multiplicative {f : ℕ →*₀ F} (hsum : Summable (‖f ·‖)) :
    Tendsto (fun n : ℕ ↦ ∏ p ∈ primesBelow n, (1 - f p)⁻¹) atTop (𝓝 (∑' n, f n)) := by
  have hmul {m n} (_ : Nat.Coprime m n) := f.map_mul m n
  have := (eulerProduct_hasProd_mulIndicator f.map_one hmul hsum f.map_zero).tendsto_prod_nat
  have H (n : ℕ) : ∏ p ∈ range n, {p | Nat.Prime p}.mulIndicator (fun p ↦ (1 - f p)⁻¹) p =
                     ∏ p ∈ primesBelow n, (1 - f p)⁻¹ :=
    prod_mulIndicator_eq_prod_filter
      (range n) (fun _ ↦ fun p ↦ (1 - f p)⁻¹) (fun _ ↦ {p | Nat.Prime p}) id
  have H' : {p | Nat.Prime p}.mulIndicator (fun p ↦ (1 - f p)⁻¹) =
              {p | Nat.Prime p}.mulIndicator (fun p ↦ ∑' e : ℕ, f (p ^ e)) :=
    Set.mulIndicator_congr fun p hp ↦ one_sub_inv_eq_geometric_of_summable_norm hp hsum
  simpa only [← H, H'] using this

end EulerProduct

end CompletelyMultiplicative
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Basic/Variant7630d88377d8ba2bfe21f315870d5fd608182b7ee802939301b9e35fa9556ac7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant7630d88377d8ba2bfe21f315870d5fd608182b7ee802939301b9e35fa9556ac7.lean#L371).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88d824da1f06d504490ae01374c29e5d7f6ab473` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
