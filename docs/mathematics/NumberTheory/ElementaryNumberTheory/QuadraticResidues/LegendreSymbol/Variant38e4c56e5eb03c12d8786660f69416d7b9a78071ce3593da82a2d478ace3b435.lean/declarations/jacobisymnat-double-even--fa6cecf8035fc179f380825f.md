# jacobiSymNat.double_even

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "db5269773b3c2132e84a6f94d450d01d5ec61dab",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 136,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/38/38e4c56e5eb03c12d8786660f69416d7b9a78071ce3593da82a2d478ace3b435.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1c99569f-d58d-9327-c483-e91931e432bb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f6c5f4f7-d446-191d-59a2-9d737977cfef",
  "kind": "theorem",
  "lexical_name": "jacobiSymNat.double_even",
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
  "slug": "jacobisymnat-double-even--fa6cecf8035fc179f380825f",
  "source": {
    "blob": "db5269773b3c2132e84a6f94d450d01d5ec61dab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 136,
    "path": "GRWTSK/NumberTheory/LegendreSymbol/Variant38e4c56e5eb03c12d8786660f69416d7b9a78071ce3593da82a2d478ace3b435.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fa6cecf8035fc179f380825f60d274b9a8f10673daf235ecf1e067fc61957425",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant38e4c56e5eb03c12d8786660f69416d7b9a78071ce3593da82a2d478ace3b435.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6c5f4f7-d446-191d-59a2-9d737977cfef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem jacobiSymNat.double_even (a b c : ℕ) (r : ℤ) (ha : a % 4 = 0) (hb : b % 2 = 1)
    (hc : a / 4 = c) (hr : jacobiSymNat c b = r) : jacobiSymNat a b = r := by
  have : ((2 : ℕ) : ℤ).gcd b = 1 := by
    rw [Int.coe_nat_gcd, ← Nat.mod_add_div b 2, hb, Nat.gcd_add_mul_left_right, Nat.gcd_one_right]
  rwa [← Nat.mod_add_div a 4, ha, hc, Nat.zero_add, (by decide : 4 = 2 ^ 2), jacobiSymNat,
    Nat.cast_mul, Nat.cast_pow, jacobiSym.mul_left, jacobiSym.sq_one' this, one_mul]
#align norm_num.jacobi_sym_nat.double_even Mathlib.Meta.NormNum.jacobiSymNat.double_even

/-- If `a` is even and `b` is odd, then we can remove a factor `2` from `a`,
but we may have to change the sign, depending on `b % 8`.
We give one version for each of the four odd residue classes mod `8`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/QuadraticResidues/LegendreSymbol/Variant38e4c56e5eb03c12d8786660f69416d7b9a78071ce3593da82a2d478ace3b435.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/LegendreSymbol/Variant38e4c56e5eb03c12d8786660f69416d7b9a78071ce3593da82a2d478ace3b435.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db5269773b3c2132e84a6f94d450d01d5ec61dab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
