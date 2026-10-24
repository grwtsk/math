# map_ne_zero_of_ne_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "79131c1412bbd5c6ba1f9655dce9b7439c091c75",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 482,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3f/3fb1e6dcb4a7fe1e17da7c3fcbce28aa34b336bcfc79a174c37a5fac00f7f898.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2eff2f81-15f7-d2f8-464c-6eec806d3aaf",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:10d95950-706d-e277-a469-7e5b901fc572",
  "kind": "theorem",
  "lexical_name": "map_ne_zero_of_ne_top",
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
  "slug": "map-ne-zero-of-ne-top--d19c3f63d480372589be15b0",
  "source": {
    "blob": "79131c1412bbd5c6ba1f9655dce9b7439c091c75",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 489,
    "line": 482,
    "path": "GRWTSK/Algebra/WeierstrassPreparation/Variant3fb1e6dcb4a7fe1e17da7c3fcbce28aa34b336bcfc79a174c37a5fac00f7f898.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d19c3f63d480372589be15b0e904ef17ff36ba3558ebb287ae0c48837d3334d3",
  "verification": {
    "reference": "docs/verification/Algebra/WeierstrassPreparation/Variant3fb1e6dcb4a7fe1e17da7c3fcbce28aa34b336bcfc79a174c37a5fac00f7f898.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10d95950-706d-e277-a469-7e5b901fc572`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 482–489.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_ne_zero_of_ne_top (hI : I ≠ ⊤) : g.map (Ideal.Quotient.mk I) ≠ 0 := by
  rcases subsingleton_or_nontrivial (A ⧸ I) with h | _
  · apply (Submodule.Quotient.subsingleton_iff _).1 at h
    exact False.elim <| hI <| by ext; simp [h]
  rw [congr(map (Ideal.Quotient.mk I) $(H.eq_mul)), map_mul, ← Polynomial.polynomial_map_coe, ne_eq,
    (H.isUnit.map _).mul_left_eq_zero]
  exact_mod_cast f.map_monic_ne_zero (f := Ideal.Quotient.mk I) H.isDistinguishedAt.monic

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/WeierstrassPreparation/Variant3fb1e6dcb4a7fe1e17da7c3fcbce28aa34b336bcfc79a174c37a5fac00f7f898.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/WeierstrassPreparation/Variant3fb1e6dcb4a7fe1e17da7c3fcbce28aa34b336bcfc79a174c37a5fac00f7f898.lean#L482).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79131c1412bbd5c6ba1f9655dce9b7439c091c75` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
