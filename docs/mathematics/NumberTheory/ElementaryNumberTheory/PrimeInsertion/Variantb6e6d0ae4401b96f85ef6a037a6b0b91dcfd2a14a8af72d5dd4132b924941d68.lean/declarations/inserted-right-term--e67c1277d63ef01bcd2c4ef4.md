# inserted_right_term

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a7976d05-c2df-3b26-ab6d-7cc8aa81c24e",
  "kind": "theorem",
  "lexical_name": "inserted_right_term",
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
  "slug": "inserted-right-term--e67c1277d63ef01bcd2c4ef4",
  "source": {
    "blob": "fdd6e7d0f329c551e9b0facacdf63686f49357c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 162,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PrimeInsertion/Variantb6e6d0ae4401b96f85ef6a037a6b0b91dcfd2a14a8af72d5dd4132b924941d68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e67c1277d63ef01bcd2c4ef430f5706882f0a37dee5026ca60255bec5f719611",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/PrimeInsertion/Variantb6e6d0ae4401b96f85ef6a037a6b0b91dcfd2a14a8af72d5dd4132b924941d68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7976d05-c2df-3b26-ab6d-7cc8aa81c24e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem inserted_right_term (P : Finset ℕ) (p g U V : ℕ)
    (hP : ∀ q ∈ P, Nat.Prime q) (hp : Nat.Prime p) (hpP : p ∉ P)
    (E : ℕ → ℝ) (a : ℕ × ℕ) (ha : a ∈ supportedPairs P) :
    (if a.1 ≤ U ∧ p * a.2 ≤ V then
      (ArithmeticFunction.moebius (a.1 * (p * a.2)) : ℝ) *
        (if Nat.Coprime g (a.1 * (p * a.2)) then 1 else 0) *
          E ((a.1 * (p * a.2)) * g ^ 2) else 0) =
      -(if Nat.Coprime g p then 1 else 0) *
        (if a.1 ≤ U ∧ a.2 ≤ V / p then
          (ArithmeticFunction.moebius (a.1 * a.2) : ℝ) *
            (if Nat.Coprime g (a.1 * a.2) then 1 else 0) *
              E (p * ((a.1 * a.2) * g ^ 2)) else 0) := by
  have hh := inserted_left_term P p g V U hP hp hpP E (a.2, a.1)
    (supportedPairs_swap_mem P hP a ha)
  convert! hh using 1 <;> simp only [and_comm, Nat.mul_comm, Nat.mul_left_comm]

/-- One inserted prime keeps both signed rectangular boundary terms exactly. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/PrimeInsertion/Variantb6e6d0ae4401b96f85ef6a037a6b0b91dcfd2a14a8af72d5dd4132b924941d68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/PrimeInsertion/Variantb6e6d0ae4401b96f85ef6a037a6b0b91dcfd2a14a8af72d5dd4132b924941d68.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fdd6e7d0f329c551e9b0facacdf63686f49357c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
