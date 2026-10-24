# inserted_left_term

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f47bc15ee7659d444f6099da0293a4fd500d3780",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 112,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b7/b7c0adbe3d1257c00bfda83045a8d593f384a147970ac2b32918214601aa18e2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6092b1fd-df2e-7b86-1575-19776a6ec01a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:97c8a436-d470-2778-96ef-775445d8f9ef",
  "kind": "theorem",
  "lexical_name": "inserted_left_term",
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
  "slug": "inserted-left-term--0126ff2a1f8e363069728439",
  "source": {
    "blob": "f47bc15ee7659d444f6099da0293a4fd500d3780",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 112,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PrimeInsertion/Variantb7c0adbe3d1257c00bfda83045a8d593f384a147970ac2b32918214601aa18e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0126ff2a1f8e36306972843976067858c5fd872e4ac8a2cc33db46ffed7046a0",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/PrimeInsertion/Variantb7c0adbe3d1257c00bfda83045a8d593f384a147970ac2b32918214601aa18e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:97c8a436-d470-2778-96ef-775445d8f9ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem inserted_left_term (P : Finset ℕ) (p g U V : ℕ)
    (hP : ∀ q ∈ P, Nat.Prime q) (hp : Nat.Prime p) (hpP : p ∉ P)
    (E : ℕ → ℝ) (a : ℕ × ℕ) (ha : a ∈ supportedPairs P) :
    (if p * a.1 ≤ U ∧ a.2 ≤ V then
      (ArithmeticFunction.moebius ((p * a.1) * a.2) : ℝ) *
        (if Nat.Coprime g ((p * a.1) * a.2) then 1 else 0) *
          E (((p * a.1) * a.2) * g ^ 2) else 0) =
      -(if Nat.Coprime g p then 1 else 0) *
        (if a.1 ≤ U / p ∧ a.2 ≤ V then
          (ArithmeticFunction.moebius (a.1 * a.2) : ℝ) *
            (if Nat.Coprime g (a.1 * a.2) then 1 else 0) *
              E (p * ((a.1 * a.2) * g ^ 2)) else 0) := by
  have hcut : p * a.1 ≤ U ↔ a.1 ≤ U / p := by
    rw [Nat.le_div_iff_mul_le hp.pos, Nat.mul_comm a.1 p]
  have hμ : (ArithmeticFunction.moebius (p * (a.1 * a.2)) : ℝ) =
      -(ArithmeticFunction.moebius (a.1 * a.2) : ℝ) := by
    rw [ArithmeticFunction.isMultiplicative_moebius.map_mul_of_coprime
      (inserted_prime_coprime P p hP hp hpP a ha), ArithmeticFunction.moebius_apply_prime hp]
    push_cast
    ring
  simp only [hcut, mul_assoc, hμ, Nat.coprime_mul_iff_right]
  split_ifs <;> simp_all


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/PrimeInsertion/Variantb7c0adbe3d1257c00bfda83045a8d593f384a147970ac2b32918214601aa18e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/PrimeInsertion/Variantb7c0adbe3d1257c00bfda83045a8d593f384a147970ac2b32918214601aa18e2.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f47bc15ee7659d444f6099da0293a4fd500d3780` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
