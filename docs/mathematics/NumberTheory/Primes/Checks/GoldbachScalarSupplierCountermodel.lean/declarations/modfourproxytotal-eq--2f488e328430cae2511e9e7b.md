# modFourProxyTotal_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1ee71e86-1161-a2ec-ec4a-c541631d58f4",
  "kind": "theorem",
  "lexical_name": "modFourProxyTotal_eq",
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
  "slug": "modfourproxytotal-eq--2f488e328430cae2511e9e7b",
  "source": {
    "blob": "2334e4f61b5ee1b62cdc0145489134e08d84b9cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 82,
    "path": "GRWTSK/NumberTheory/Primes/Checks/GoldbachScalarSupplierCountermodel.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f488e328430cae2511e9e7b58e64170005ebb0c67992beb697ec07b78c00508",
  "verification": {
    "reference": "docs/verification/NumberTheory/Primes/Checks/GoldbachScalarSupplierCountermodel.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ee71e86-1161-a2ec-ec4a-c541631d58f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem modFourProxyTotal_eq (c : ℝ) (k : ℕ) :
    modFourProxyTotal c k =
      4 * (((k - 1) / 4 : ℕ) : ℝ) + if 2 ≤ k then c else 0 := by
  induction k with
  | zero => simp [modFourProxyTotal, modFourProxyWeight]
  | succ k ih =>
    have hs : modFourProxyTotal c (k + 1) =
        modFourProxyTotal c k + modFourProxyWeight c (k + 1) := by
      simp [modFourProxyTotal, Finset.sum_range_succ]
    rw [hs, ih]
    by_cases hk : k < 4
    · interval_cases k <;> norm_num [modFourProxyWeight]
    · have hk4 : 4 ≤ k := by omega
      have hk2 : 2 ≤ k := by omega
      have hks2 : 2 ≤ k + 1 := by omega
      have hks5 : 5 ≤ k + 1 := by omega
      have hne : k + 1 ≠ 2 := by omega
      by_cases hm : (k + 1) % 4 = 1
      · have hq : k / 4 = (k - 1) / 4 + 1 := by omega
        simp [modFourProxyWeight, hk2, hks2, hks5, hne, hm, hq,
          Nat.cast_add, Nat.cast_one]
        ring
      · have hq : k / 4 = (k - 1) / 4 := by omega
        simp [modFourProxyWeight, hk2, hks2, hks5, hne, hm, hq]

/-- Uniform O(1) scalar prefix error for every prefix, not merely a terminal
estimate or an average over targets. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Primes/Checks/GoldbachScalarSupplierCountermodel.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Primes/Checks/GoldbachScalarSupplierCountermodel.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2334e4f61b5ee1b62cdc0145489134e08d84b9cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
