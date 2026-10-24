# composite_has_small_prime_divisor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "82988026bae26e16d3a9a8d9672b38d8473f7864",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 13,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bc/bc39076411ed8dfb5ee850b4c780ab2c861e42eaefa00b5e15c9ddd1465f2a59.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4e402587-dea2-b0ea-7c9a-1767bf1d68ce",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e6102846-3296-0393-a0b0-8d03ae7d65a5",
  "kind": "theorem",
  "lexical_name": "composite_has_small_prime_divisor",
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
  "slug": "composite-has-small-prime-divisor--e70eef1de4a4a51f013fec11",
  "source": {
    "blob": "82988026bae26e16d3a9a8d9672b38d8473f7864",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 23,
    "line": 13,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FactorState/Variantbc39076411ed8dfb5ee850b4c780ab2c861e42eaefa00b5e15c9ddd1465f2a59.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e70eef1de4a4a51f013fec111ff151cfc1e57897cfc747bc42de5911d2d8ac8d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FactorState/Variantbc39076411ed8dfb5ee850b4c780ab2c861e42eaefa00b5e15c9ddd1465f2a59.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e6102846-3296-0393-a0b0-8d03ae7d65a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 13–23.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem composite_has_small_prime_divisor {n : ℕ} (h2 : 2 ≤ n) (hn : ¬n.Prime) :
    ∃ p, p.Prime ∧ p ≤ Nat.sqrt n ∧ p ∣ n := by
  have hnot : ¬ ∀ m, 2 ≤ m → m ≤ Nat.sqrt n → ¬m ∣ n := by
    intro h
    exact hn (Nat.prime_def_le_sqrt.mpr ⟨h2, h⟩)
  push Not at hnot
  obtain ⟨m, hm, hmn, hmdvd⟩ := hnot
  obtain ⟨p, hp, hpdvd⟩ := Nat.exists_prime_and_dvd (by omega : m ≠ 1)
  exact ⟨p, hp, (Nat.le_of_dvd (by omega) hpdvd).trans hmn, hpdvd.trans hmdvd⟩

/-- Proper observations on a larger declared finite range suffice for primality. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FactorState/Variantbc39076411ed8dfb5ee850b4c780ab2c861e42eaefa00b5e15c9ddd1465f2a59.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FactorState/Variantbc39076411ed8dfb5ee850b4c780ab2c861e42eaefa00b5e15c9ddd1465f2a59.lean#L13).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82988026bae26e16d3a9a8d9672b38d8473f7864` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
