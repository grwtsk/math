# descFactorial_lt_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6b2cfa6c-a5b0-e11c-f7c7-403cc168a3e9",
  "kind": "theorem",
  "lexical_name": "descFactorial_lt_pow",
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
  "slug": "descfactorial-lt-pow--dc31466a464cdca2088ec8d6",
  "source": {
    "blob": "6a6f30c5287c7531b1c25913fb0174a6df3335a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 498,
    "line": 487,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Basic/Variant89c9892addc14e70f8f2aa02ef4ef744f269371cb842ebc54ecda05f7b52b423.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc31466a464cdca2088ec8d64e4a609ec076776bfb6d5a33af855fd6c41ad45e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Basic/Variant89c9892addc14e70f8f2aa02ef4ef744f269371cb842ebc54ecda05f7b52b423.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6b2cfa6c-a5b0-e11c-f7c7-403cc168a3e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 487–498.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem descFactorial_lt_pow {n : ℕ} (hn : 1 ≤ n) : ∀ {k : ℕ}, 2 ≤ k → n.descFactorial k < n ^ k
  | 0 => by rintro ⟨⟩
  | 1 => by intro; contradiction
  | k + 2 => fun _ => by
    rw [descFactorial_succ, pow_succ', mul_comm, mul_comm n]
    exact Nat.mul_lt_mul' (descFactorial_le_pow _ _) (tsub_lt_self hn k.zero_lt_succ)
      (pow_pos (Nat.lt_of_succ_le hn) _)
#align nat.desc_factorial_lt_pow Nat.descFactorial_lt_pow

end DescFactorial

end Nat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Basic/Variant89c9892addc14e70f8f2aa02ef4ef744f269371cb842ebc54ecda05f7b52b423.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Basic/Variant89c9892addc14e70f8f2aa02ef4ef744f269371cb842ebc54ecda05f7b52b423.lean#L487).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a6f30c5287c7531b1c25913fb0174a6df3335a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
