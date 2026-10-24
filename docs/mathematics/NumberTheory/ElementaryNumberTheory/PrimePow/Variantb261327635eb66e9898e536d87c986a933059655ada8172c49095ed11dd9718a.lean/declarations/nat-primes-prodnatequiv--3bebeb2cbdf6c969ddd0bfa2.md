# Nat.Primes.prodNatEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:33fb8c5e667b5dd28fded9b8eed4da8071c6657019523f15dd89e53a61bf1135",
  "kind": "def",
  "lexical_name": "Nat.Primes.prodNatEquiv",
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
  "slug": "nat-primes-prodnatequiv--3bebeb2cbdf6c969ddd0bfa2",
  "source": {
    "blob": "60833212605b9c634a124d6937af8dc5b6d6c258",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 158,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PrimePow/Variantb261327635eb66e9898e536d87c986a933059655ada8172c49095ed11dd9718a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3bebeb2cbdf6c969ddd0bfa278bfc32ffa85b7b7460d536ce9922643535eb260",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/PrimePow/Variantb261327635eb66e9898e536d87c986a933059655ada8172c49095ed11dd9718a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:33fb8c5e667b5dd28fded9b8eed4da8071c6657019523f15dd89e53a61bf1135`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Nat.Primes.prodNatEquiv : Nat.Primes × ℕ ≃ {n : ℕ // IsPrimePow n} where
  toFun pk :=
    ⟨pk.1 ^ (pk.2 + 1), ⟨pk.1, pk.2 + 1, prime_iff.mp pk.1.prop, pk.2.add_one_pos, rfl⟩⟩
  invFun n :=
    (⟨n.val.minFac, minFac_prime n.prop.ne_one⟩, n.val.factorization n.val.minFac - 1)
  left_inv := fun (p, k) ↦ by
    simp only [p.prop.pow_minFac k.add_one_ne_zero, Subtype.coe_eta, factorization_pow, p.prop,
      Prime.factorization, Finsupp.smul_single, smul_eq_mul, mul_one, Finsupp.single_add,
      Finsupp.coe_add, Pi.add_apply, Finsupp.single_eq_same, add_tsub_cancel_right]
  right_inv n := by
    ext1
    dsimp only
    rw [sub_one_add_one n.prop.factorization_minFac_ne_zero, n.prop.minFac_pow_factorization_eq]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/PrimePow/Variantb261327635eb66e9898e536d87c986a933059655ada8172c49095ed11dd9718a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/PrimePow/Variantb261327635eb66e9898e536d87c986a933059655ada8172c49095ed11dd9718a.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60833212605b9c634a124d6937af8dc5b6d6c258` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
