# pow_dvd_pow_of_sub_pow_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8b5af1f3-7d78-b9df-2f41-41a34a27c324",
  "kind": "lemma",
  "lexical_name": "pow_dvd_pow_of_sub_pow_eq_zero",
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
  "slug": "pow-dvd-pow-of-sub-pow-eq-zero--8ae04c6279f4b4e1d757ae86",
  "source": {
    "blob": "b2089efe493b230bd5266c826bbd29d20c9b9652",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 69,
    "path": "GRWTSK/Algebra/Lemmas/Variant81cdfd898d9c00de0fda9d9eed63ea66c3e5b5b4617bfecd89dea7b3c61adce1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ae04c6279f4b4e1d757ae8665fa0c418b886b3b39b5e55e6d3b86d7cf319014",
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

Occurrence: `result:8b5af1f3-7d78-b9df-2f41-41a34a27c324`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma pow_dvd_pow_of_sub_pow_eq_zero (hp : n + m ≤ p + 1) (h_comm : Commute x y)
    (h : (x - y) ^ n = 0) : x ^ m ∣ y ^ p := by
  rw [← sub_add_cancel y x]
  apply (h_comm.symm.sub_left rfl).pow_dvd_add_pow_of_pow_eq_zero_left hp _
  rw [← neg_sub x y, neg_pow, h, mul_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Lemmas/Variant81cdfd898d9c00de0fda9d9eed63ea66c3e5b5b4617bfecd89dea7b3c61adce1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Lemmas/Variant81cdfd898d9c00de0fda9d9eed63ea66c3e5b5b4617bfecd89dea7b3c61adce1.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2089efe493b230bd5266c826bbd29d20c9b9652` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
