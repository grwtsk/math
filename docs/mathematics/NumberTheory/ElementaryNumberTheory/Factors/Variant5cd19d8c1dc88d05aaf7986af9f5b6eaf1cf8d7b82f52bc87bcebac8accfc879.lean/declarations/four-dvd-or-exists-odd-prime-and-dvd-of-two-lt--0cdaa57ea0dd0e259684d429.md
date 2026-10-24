# four_dvd_or_exists_odd_prime_and_dvd_of_two_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f11078c0-f80a-847d-6694-5cf673494a15",
  "kind": "theorem",
  "lexical_name": "four_dvd_or_exists_odd_prime_and_dvd_of_two_lt",
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
  "slug": "four-dvd-or-exists-odd-prime-and-dvd-of-two-lt--0cdaa57ea0dd0e259684d429",
  "source": {
    "blob": "747602f04098ab86237467f1a3966af27f87249d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 320,
    "line": 312,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Factors/Variant5cd19d8c1dc88d05aaf7986af9f5b6eaf1cf8d7b82f52bc87bcebac8accfc879.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0cdaa57ea0dd0e259684d4299b63101d905fd7f186fc4c010455d43a4d82c1a3",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Factors/Variant5cd19d8c1dc88d05aaf7986af9f5b6eaf1cf8d7b82f52bc87bcebac8accfc879.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f11078c0-f80a-847d-6694-5cf673494a15`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 312–320.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem four_dvd_or_exists_odd_prime_and_dvd_of_two_lt {n : ℕ} (n2 : 2 < n) :
    4 ∣ n ∨ ∃ p, Prime p ∧ p ∣ n ∧ Odd p := by
  obtain ⟨_ | _ | k, rfl⟩ | ⟨p, hp, hdvd, hodd⟩ := n.eq_two_pow_or_exists_odd_prime_and_dvd
  · contradiction
  · contradiction
  · simp [Nat.pow_succ, mul_assoc]
  · exact Or.inr ⟨p, hp, hdvd, hodd⟩

end Nat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Factors/Variant5cd19d8c1dc88d05aaf7986af9f5b6eaf1cf8d7b82f52bc87bcebac8accfc879.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Factors/Variant5cd19d8c1dc88d05aaf7986af9f5b6eaf1cf8d7b82f52bc87bcebac8accfc879.lean#L312).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `747602f04098ab86237467f1a3966af27f87249d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
