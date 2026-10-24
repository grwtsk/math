# dyadic_cover

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:46ed79d5-68e1-e0df-4c37-6aa8244e0225",
  "kind": "theorem",
  "lexical_name": "dyadic_cover",
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
  "slug": "dyadic-cover--32417e5e68832c1aa78fdd1c",
  "source": {
    "blob": "c77c4e684f065879f2bb66206f950e3706d448d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 91,
    "path": "GRWTSK/Analysis/Asymptotics/SublinearDyadic.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:32417e5e68832c1aa78fdd1ca898f4b0d6ee8c0b095535a847e1703f5ed1bc70",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/SublinearDyadic__SourceOccurrencef9b36037560bba889629b9cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:46ed79d5-68e1-e0df-4c37-6aa8244e0225`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–104.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dyadic_cover (n : ℕ) (hn : 1 ≤ n) :
    ∃ j : ℕ, n ≤ 2^j ∧ 2^j ≤ 2*n := by
  have hex : ∃ j : ℕ, n ≤ 2^j := ⟨n, nat_le_two_pow n⟩
  let j := Nat.find hex
  have hj : n ≤ 2^j := Nat.find_spec hex
  refine ⟨j, hj, ?_⟩
  cases he : j with
  | zero => simp only [pow_zero]; omega
  | succ k =>
      have hk : ¬ n ≤ 2^k := Nat.find_min hex (by dsimp [j] at he ⊢; omega)
      simp only [pow_succ]
      omega

/-- Finite dyadic prefix cost. Nothing is inferred from finitely many tests. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/AsymptoticAnalysis/SublinearDyadic__SourceOccurrencef9b36037560bba889629b9cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Asymptotics/SublinearDyadic.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c77c4e684f065879f2bb66206f950e3706d448d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
