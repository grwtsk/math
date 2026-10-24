# pow_dvd_add_pow_of_pow_eq_zero_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1f7dba29-8e43-1fe8-9168-f9669f91f6a9",
  "kind": "lemma",
  "lexical_name": "pow_dvd_add_pow_of_pow_eq_zero_right",
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
  "slug": "pow-dvd-add-pow-of-pow-eq-zero-right--36c216f22fb13c5691f71312",
  "source": {
    "blob": "b2089efe493b230bd5266c826bbd29d20c9b9652",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 49,
    "path": "GRWTSK/Algebra/Lemmas/Variant81cdfd898d9c00de0fda9d9eed63ea66c3e5b5b4617bfecd89dea7b3c61adce1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:36c216f22fb13c5691f71312e4a4931671a5bcdffaf3179730364022b7ab6c1b",
  "verification": {
    "reference": "docs/verification/Algebra/Lemmas/Variant81cdfd898d9c00de0fda9d9eed63ea66c3e5b5b4617bfecd89dea7b3c61adce1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f7dba29-8e43-1fe8-9168-f9669f91f6a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pow_dvd_add_pow_of_pow_eq_zero_right (hp : n + m ≤ p + 1) (h_comm : Commute x y)
    (hy : y ^ n = 0) : x ^ m ∣ (x + y) ^ p := by
  rw [h_comm.add_pow']
  refine Finset.dvd_sum fun ⟨i, j⟩ hij ↦ ?_
  replace hij : i + j = p := by simpa using hij
  apply dvd_nsmul_of_dvd
  rcases le_or_lt m i with (hi : m ≤ i) | (hi : i + 1 ≤ m)
  · exact dvd_mul_of_dvd_left (pow_dvd_pow x hi) _
  · simp [pow_eq_zero_of_le (by omega : n ≤ j) hy]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Lemmas/Variant81cdfd898d9c00de0fda9d9eed63ea66c3e5b5b4617bfecd89dea7b3c61adce1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Lemmas/Variant81cdfd898d9c00de0fda9d9eed63ea66c3e5b5b4617bfecd89dea7b3c61adce1.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2089efe493b230bd5266c826bbd29d20c9b9652` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
