# squareTentMangoldt_eq_riesz_difference

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:71389dd5-276e-adf5-f15d-4d0d05962757",
  "kind": "theorem",
  "lexical_name": "squareTentMangoldt_eq_riesz_difference",
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
  "slug": "squaretentmangoldt-eq-riesz-difference--e6fa9cce1294ccc4bc64dbd2",
  "source": {
    "blob": "79fc0cd73f7e4ee9e8a66aa47307ef54cf44d87d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 113,
    "path": "GRWTSK/NumberTheory/Chebyshev/TentSource.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6fa9cce1294ccc4bc64dbd25c4a6180769e3d8dc8fe2f4dae8fa86f2e13fe3a",
  "verification": {
    "reference": "docs/verification/NumberTheory/Chebyshev/TentSource.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:71389dd5-276e-adf5-f15d-4d0d05962757`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem squareTentMangoldt_eq_riesz_difference (n : ℕ) (hn : 1 ≤ n) :
    squareTentMangoldt n =
      (firstRieszPrefix ((n + 1) ^ 2) (((n + 1) ^ 2 : ℕ) : ℝ) -
        2 * firstRieszPrefix ((n + 1) ^ 2) (squareCenter n) +
        firstRieszPrefix ((n + 1) ^ 2) ((n ^ 2 : ℕ) : ℝ)) / squareRadius n := by
  have h := firstRieszPrefix_second_difference
    ((n + 1) ^ 2) (squareCenter n) (squareRadius n) (squareRadius_pos n)
  rw [center_add_radius, center_sub_radius] at h
  change _ = squareRadius n *
    (∑ m ∈ Finset.Icc 2 ((n + 1) ^ 2),
      ArithmeticFunction.vonMangoldt m * squareWeight n m) at h
  rw [← squareTentMangoldt_eq_prefix n hn] at h
  apply (eq_div_iff (ne_of_gt (squareRadius_pos n))).2
  simpa only [mul_comm] using h.symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Chebyshev/TentSource.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Chebyshev/TentSource.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79fc0cd73f7e4ee9e8a66aa47307ef54cf44d87d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
