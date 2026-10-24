# separable_minpoly_mod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f6ad26402bf698df4afe96a2ae319a388fac27a5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 60,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/22/22cc075b4f7a7ada7e680756732726c8e406cbbcf86f27b202de60fbef267cc5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:85474c78-34ec-7176-9aa6-6528a2720868",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8ea75389-f6c2-a55c-e8e1-6beb79cae927",
  "kind": "theorem",
  "lexical_name": "separable_minpoly_mod",
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
  "slug": "separable-minpoly-mod--ffa281505e5d673b1af30e02",
  "source": {
    "blob": "f6ad26402bf698df4afe96a2ae319a388fac27a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 60,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Minpoly/Variant22cc075b4f7a7ada7e680756732726c8e406cbbcf86f27b202de60fbef267cc5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ffa281505e5d673b1af30e0216c234065a54caa5af681cc073a7cd7f0707b27a",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Minpoly/Variant22cc075b4f7a7ada7e680756732726c8e406cbbcf86f27b202de60fbef267cc5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8ea75389-f6c2-a55c-e8e1-6beb79cae927`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem separable_minpoly_mod {p : ℕ} [Fact p.Prime] (hdiv : ¬p ∣ n) :
    Separable (map (Int.castRingHom (ZMod p)) (minpoly ℤ μ)) := by
  have hdvd : map (Int.castRingHom (ZMod p)) (minpoly ℤ μ) ∣ X ^ n - 1 := by
    convert RingHom.map_dvd (mapRingHom (Int.castRingHom (ZMod p)))
        (minpoly_dvd_x_pow_sub_one h)
    simp only [map_sub, map_pow, coe_mapRingHom, map_X, map_one]
  refine Separable.of_dvd (separable_X_pow_sub_C 1 ?_ one_ne_zero) hdvd
  by_contra hzero
  exact hdiv ((ZMod.natCast_zmod_eq_zero_iff_dvd n p).1 hzero)

/-- The reduction modulo `p` of the minimal polynomial of a root of unity `μ` is squarefree. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Minpoly/Variant22cc075b4f7a7ada7e680756732726c8e406cbbcf86f27b202de60fbef267cc5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Minpoly/Variant22cc075b4f7a7ada7e680756732726c8e406cbbcf86f27b202de60fbef267cc5.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6ad26402bf698df4afe96a2ae319a388fac27a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
