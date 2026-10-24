# IsDedekindDomain.quotientEquivPiOfFinsetProdEq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:72830dab1617b1a93f0a33d7d318876c01950c0b26395e2dd2e266d7080a7523",
  "kind": "def",
  "lexical_name": "IsDedekindDomain.quotientEquivPiOfFinsetProdEq",
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
  "slug": "isdedekinddomain-quotientequivpioffinsetprodeq--9d1974aa01b65c13b63cfbf9",
  "source": {
    "blob": "e90daecbecdebee2e650dd3e06b56eebdb71422e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1312,
    "line": 1303,
    "path": "GRWTSK/Algebra/Ideal/Variant3b1361fe8da2dc8b2f8cdcf20b06bf4a29fccf64a63e9e58a9af67235a918d1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9d1974aa01b65c13b63cfbf9705f3e136011512eb7077b06b4f3a403fc919bfd",
  "verification": {
    "reference": "docs/verification/Algebra/Ideal/Variant3b1361fe8da2dc8b2f8cdcf20b06bf4a29fccf64a63e9e58a9af67235a918d1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:72830dab1617b1a93f0a33d7d318876c01950c0b26395e2dd2e266d7080a7523`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1303–1312.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def IsDedekindDomain.quotientEquivPiOfFinsetProdEq {ι : Type*} {s : Finset ι}
    (I : Ideal R) (P : ι → Ideal R) (e : ι → ℕ) (prime : ∀ i ∈ s, Prime (P i))
    (coprime : ∀ᵉ (i ∈ s) (j ∈ s), i ≠ j → P i ≠ P j)
    (prod_eq : ∏ i ∈ s, P i ^ e i = I) : R ⧸ I ≃+* ∀ i : s, R ⧸ P i ^ e i :=
  IsDedekindDomain.quotientEquivPiOfProdEq I (fun i : s => P i) (fun i : s => e i)
    (fun i => prime i i.2) (fun i j h => coprime i i.2 j j.2 (Subtype.coe_injective.ne h))
    (_root_.trans (Finset.prod_coe_sort s fun i => P i ^ e i) prod_eq)

/-- Corollary of the Chinese remainder theorem: given elements `x i : R / P i ^ e i`,
we can choose a representative `y : R` such that `y ≡ x i (mod P i ^ e i)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Ideal/Variant3b1361fe8da2dc8b2f8cdcf20b06bf4a29fccf64a63e9e58a9af67235a918d1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Ideal/Variant3b1361fe8da2dc8b2f8cdcf20b06bf4a29fccf64a63e9e58a9af67235a918d1d.lean#L1303).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e90daecbecdebee2e650dd3e06b56eebdb71422e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
