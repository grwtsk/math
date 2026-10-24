# card_isPrincipal_norm_eq_mul_torsion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5461da86-a9eb-e584-d5d1-7c9a430fb129",
  "kind": "theorem",
  "lexical_name": "card_isPrincipal_norm_eq_mul_torsion",
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
  "slug": "card-isprincipal-norm-eq-mul-torsion--3615fb6030284a0ec3866bc3",
  "source": {
    "blob": "e402cf9e21e2f5980eb41f22d785a1b310c4f5a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 487,
    "line": 477,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/FundamentalCone/Variant9f6bd370978ccc6d1ece8c57fb65eb136ab4d30441805ad95bb7170a26533f37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3615fb6030284a0ec3866bc381bdd164aa2c0a772047d982320015f65618eee7",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/FundamentalCone/Variant9f6bd370978ccc6d1ece8c57fb65eb136ab4d30441805ad95bb7170a26533f37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5461da86-a9eb-e584-d5d1-7c9a430fb129`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 477–487.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_isPrincipal_norm_eq_mul_torsion (n : ℕ) :
    Nat.card {I : (Ideal (𝓞 K))⁰ | IsPrincipal (I : Ideal (𝓞 K)) ∧
      absNorm (I : Ideal (𝓞 K)) = n} * torsionOrder K =
        Nat.card {a : integerSet K | mixedEmbedding.norm (a : mixedSpace K) = n} := by
  rw [torsionOrder, ← Nat.card_eq_fintype_card, ← Nat.card_prod]
  exact Nat.card_congr (integerSetEquivNorm K n).symm

variable (J : (Ideal (𝓞 K))⁰)

/-- The intersection between the fundamental cone and the `idealLattice` defined by the image of
the integral ideal `J`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/FundamentalCone/Variant9f6bd370978ccc6d1ece8c57fb65eb136ab4d30441805ad95bb7170a26533f37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/FundamentalCone/Variant9f6bd370978ccc6d1ece8c57fb65eb136ab4d30441805ad95bb7170a26533f37.lean#L477).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e402cf9e21e2f5980eb41f22d785a1b310c4f5a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
