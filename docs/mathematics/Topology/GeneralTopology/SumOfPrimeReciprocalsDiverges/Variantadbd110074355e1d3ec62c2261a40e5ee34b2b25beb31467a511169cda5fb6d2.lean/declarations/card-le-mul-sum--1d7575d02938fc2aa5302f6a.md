# card_le_mul_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:876a81a4-fe39-3ff5-5eba-166c3d693d7e",
  "kind": "theorem",
  "lexical_name": "card_le_mul_sum",
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
  "slug": "card-le-mul-sum--1d7575d02938fc2aa5302f6a",
  "source": {
    "blob": "ab3b98554054aef4bab73665a22340c104bfb2ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 137,
    "path": "GRWTSK/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variantadbd110074355e1d3ec62c2261a40e5ee34b2b25beb31467a511169cda5fb6d2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1d7575d02938fc2aa5302f6a086ed40cec4ddfbb3811d348f10ef08b3be1b792",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variantadbd110074355e1d3ec62c2261a40e5ee34b2b25beb31467a511169cda5fb6d2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:876a81a4-fe39-3ff5-5eba-166c3d693d7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_le_mul_sum {x k : ℕ} : (card (U x k) : ℝ) ≤ x * ∑ p in P x k, 1 / (p : ℝ) := by
  let P := Finset.filter (fun p => k < p ∧ Nat.Prime p) (range (x + 1))
  let N p := Finset.filter (fun e => p ∣ e + 1) (range x)
  have h : card (Finset.biUnion P N) ≤ ∑ p in P, card (N p) := card_biUnion_le
  calc
    (card (Finset.biUnion P N) : ℝ) ≤ ∑ p in P, (card (N p) : ℝ) := by assumption_mod_cast
    _ ≤ ∑ p in P, x * (1 / (p : ℝ)) := (sum_le_sum fun p _ => ?_)
    _ = x * ∑ p in P, 1 / (p : ℝ) := mul_sum.symm
  simp only [mul_one_div, Nat.card_multiples, Nat.cast_div_le]
#align theorems_100.card_le_mul_sum Theorems100.card_le_mul_sum

/--
The number of `e < x` for which `e + 1` is a squarefree product of primes smaller than or equal to
`k` is bounded by `2 ^ k`, the number of subsets of `[1, k]`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variantadbd110074355e1d3ec62c2261a40e5ee34b2b25beb31467a511169cda5fb6d2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SumOfPrimeReciprocalsDiverges/Variantadbd110074355e1d3ec62c2261a40e5ee34b2b25beb31467a511169cda5fb6d2.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab3b98554054aef4bab73665a22340c104bfb2ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
