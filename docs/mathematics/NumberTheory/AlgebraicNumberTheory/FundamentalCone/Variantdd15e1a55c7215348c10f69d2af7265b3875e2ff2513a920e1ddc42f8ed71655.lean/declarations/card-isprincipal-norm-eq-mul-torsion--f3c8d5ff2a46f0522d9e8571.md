# card_isPrincipal_norm_eq_mul_torsion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c73dc1f4511bc61f0b68dac5fd12e97f4aa19c0e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 469,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/dd/dd15e1a55c7215348c10f69d2af7265b3875e2ff2513a920e1ddc42f8ed71655.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c6bce971-e836-26ac-5909-8556d5e18202",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:daef3316-86b1-35b6-aaf1-254b1ec197b3",
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
  "slug": "card-isprincipal-norm-eq-mul-torsion--f3c8d5ff2a46f0522d9e8571",
  "source": {
    "blob": "c73dc1f4511bc61f0b68dac5fd12e97f4aa19c0e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 479,
    "line": 469,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/FundamentalCone/Variantdd15e1a55c7215348c10f69d2af7265b3875e2ff2513a920e1ddc42f8ed71655.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f3c8d5ff2a46f0522d9e85715c0c9acc2b7f1b595ac2e64a2bb2c34f61e65deb",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/FundamentalCone/Variantdd15e1a55c7215348c10f69d2af7265b3875e2ff2513a920e1ddc42f8ed71655.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:daef3316-86b1-35b6-aaf1-254b1ec197b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 469–479.

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

[Verification target and public status](../../../../../../verification/NumberTheory/AlgebraicNumberTheory/FundamentalCone/Variantdd15e1a55c7215348c10f69d2af7265b3875e2ff2513a920e1ddc42f8ed71655.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/FundamentalCone/Variantdd15e1a55c7215348c10f69d2af7265b3875e2ff2513a920e1ddc42f8ed71655.lean#L469).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c73dc1f4511bc61f0b68dac5fd12e97f4aa19c0e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
