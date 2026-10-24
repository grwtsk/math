# cyclotomic_mul_prime_dvd_eq_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:206bf55b-fa33-54d5-d478-00c580e2fc5e",
  "kind": "theorem",
  "lexical_name": "cyclotomic_mul_prime_dvd_eq_pow",
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
  "slug": "cyclotomic-mul-prime-dvd-eq-pow--20bdb002823330fb13888da0",
  "source": {
    "blob": "54037a0779043dc8783deaf2ad5836902a59c34f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 140,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Expand/Variant0f2d83bb9f872424650450dd13f12ae1764a6df0baa2164d555b6545ed75cac8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:20bdb002823330fb13888da0b435868707428dcf7872aa4e263c05b1a878d5d2",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Expand/Variant0f2d83bb9f872424650450dd13f12ae1764a6df0baa2164d555b6545ed75cac8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:206bf55b-fa33-54d5-d478-00c580e2fc5e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cyclotomic_mul_prime_dvd_eq_pow (R : Type*) {p n : ℕ} [hp : Fact (Nat.Prime p)] [Ring R]
    [CharP R p] (hn : p ∣ n) : cyclotomic (n * p) R = cyclotomic n R ^ p := by
  letI : Algebra (ZMod p) R := ZMod.algebra _ _
  suffices cyclotomic (n * p) (ZMod p) = cyclotomic n (ZMod p) ^ p by
    rw [← map_cyclotomic _ (algebraMap (ZMod p) R), ← map_cyclotomic _ (algebraMap (ZMod p) R),
      this, Polynomial.map_pow]
  rw [← ZMod.expand_card, ← map_cyclotomic_int n, ← map_expand,
    cyclotomic_expand_eq_cyclotomic hp.out hn, map_cyclotomic]

/-- If `R` is of characteristic `p` and `¬p ∣ m`, then
`cyclotomic (p ^ k * m) R = (cyclotomic m R) ^ (p ^ k - p ^ (k - 1))`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Expand/Variant0f2d83bb9f872424650450dd13f12ae1764a6df0baa2164d555b6545ed75cac8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Expand/Variant0f2d83bb9f872424650450dd13f12ae1764a6df0baa2164d555b6545ed75cac8.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54037a0779043dc8783deaf2ad5836902a59c34f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
