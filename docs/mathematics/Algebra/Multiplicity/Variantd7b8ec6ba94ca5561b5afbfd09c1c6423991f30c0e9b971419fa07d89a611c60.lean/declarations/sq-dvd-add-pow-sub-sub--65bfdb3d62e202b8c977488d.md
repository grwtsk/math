# sq_dvd_add_pow_sub_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "693c07db5964005f125996f5a04e81b206fe8654",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 54,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d7/d7b8ec6ba94ca5561b5afbfd09c1c6423991f30c0e9b971419fa07d89a611c60.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:14886e55-49aa-2af5-d313-59405aa71bd1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f2f91ee2-9008-b175-84f6-d91779bbf270",
  "kind": "theorem",
  "lexical_name": "sq_dvd_add_pow_sub_sub",
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
  "slug": "sq-dvd-add-pow-sub-sub--65bfdb3d62e202b8c977488d",
  "source": {
    "blob": "693c07db5964005f125996f5a04e81b206fe8654",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 54,
    "path": "GRWTSK/Algebra/Multiplicity/Variantd7b8ec6ba94ca5561b5afbfd09c1c6423991f30c0e9b971419fa07d89a611c60.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:65bfdb3d62e202b8c977488d6b65a23026b3992b3b7c38f6fcc725f9a897ce81",
  "verification": {
    "reference": "docs/verification/Algebra/Multiplicity/Variantd7b8ec6ba94ca5561b5afbfd09c1c6423991f30c0e9b971419fa07d89a611c60.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2f91ee2-9008-b175-84f6-d91779bbf270`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sq_dvd_add_pow_sub_sub (p x : R) (n : ℕ) :
    p ^ 2 ∣ (x + p) ^ n - x ^ (n - 1) * p * n - x ^ n := by
  rcases n with - | n
  · simp only [pow_zero, Nat.cast_zero, sub_zero, sub_self, dvd_zero, mul_zero]
  · simp only [Nat.succ_sub_succ_eq_sub, tsub_zero, Nat.cast_succ, add_pow, Finset.sum_range_succ,
      Nat.choose_self, Nat.succ_sub _, tsub_self, pow_one, Nat.choose_succ_self_right, pow_zero,
      mul_one, Nat.cast_zero, zero_add, Nat.succ_eq_add_one, add_tsub_cancel_left]
    suffices p ^ 2 ∣ ∑ i ∈ range n, x ^ i * p ^ (n + 1 - i) * ↑((n + 1).choose i) by
      convert this; abel
    apply Finset.dvd_sum
    intro y hy
    calc
      p ^ 2 ∣ p ^ (n + 1 - y) :=
        pow_dvd_pow p (le_tsub_of_add_le_left (by linarith [Finset.mem_range.mp hy]))
      _ ∣ x ^ y * p ^ (n + 1 - y) * ↑((n + 1).choose y) :=
        dvd_mul_of_dvd_left (dvd_mul_left _ _) _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Multiplicity/Variantd7b8ec6ba94ca5561b5afbfd09c1c6423991f30c0e9b971419fa07d89a611c60.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Multiplicity/Variantd7b8ec6ba94ca5561b5afbfd09c1c6423991f30c0e9b971419fa07d89a611c60.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `693c07db5964005f125996f5a04e81b206fe8654` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
