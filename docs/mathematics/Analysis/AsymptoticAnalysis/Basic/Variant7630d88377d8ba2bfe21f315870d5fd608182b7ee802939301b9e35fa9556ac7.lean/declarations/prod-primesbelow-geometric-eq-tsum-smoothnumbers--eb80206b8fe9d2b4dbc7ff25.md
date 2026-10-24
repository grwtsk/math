# prod_primesBelow_geometric_eq_tsum_smoothNumbers

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4f0296ac-2bdc-84a4-8955-99780bb5110c",
  "kind": "lemma",
  "lexical_name": "prod_primesBelow_geometric_eq_tsum_smoothNumbers",
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
  "slug": "prod-primesbelow-geometric-eq-tsum-smoothnumbers--eb80206b8fe9d2b4dbc7ff25",
  "source": {
    "blob": "88d824da1f06d504490ae01374c29e5d7f6ab473",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 349,
    "line": 340,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant7630d88377d8ba2bfe21f315870d5fd608182b7ee802939301b9e35fa9556ac7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eb80206b8fe9d2b4dbc7ff252749f22a7eef0182f6be44fee46c83d255665e85",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Basic/Variant7630d88377d8ba2bfe21f315870d5fd608182b7ee802939301b9e35fa9556ac7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f0296ac-2bdc-84a4-8955-99780bb5110c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 340–349.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma prod_primesBelow_geometric_eq_tsum_smoothNumbers {f : ℕ →* F} (hsum : Summable f) (N : ℕ) :
    ∏ p ∈ N.primesBelow, (1 - f p)⁻¹ = ∑' m : N.smoothNumbers, f m := by
  rw [smoothNumbers_eq_factoredNumbers, primesBelow]
  exact prod_filter_prime_geometric_eq_tsum_factoredNumbers hsum _

/-- The *Euler Product* for completely multiplicative functions.

If `f : ℕ →*₀ F`, where `F` is a complete normed field and `‖f ·‖` is summable, then
`∏' p : Nat.Primes, (1 - f p)⁻¹ = ∑' n, f n`.
This version is stated in terms of `HasProd`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Basic/Variant7630d88377d8ba2bfe21f315870d5fd608182b7ee802939301b9e35fa9556ac7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variant7630d88377d8ba2bfe21f315870d5fd608182b7ee802939301b9e35fa9556ac7.lean#L340).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88d824da1f06d504490ae01374c29e5d7f6ab473` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
