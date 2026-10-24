# X_pow_mul_sub_C_irreducible

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "eb507eb6fc3b59ca7942bd0f2038038f2acf0721",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 87,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4c/4c58eb1108fe364b785c7cb560b97625aa7a9bd5b924f0d77686aef31ae2d872.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ca9aa014-3102-301d-8e53-7aecb5998f71",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:48cf956e-95c4-5296-3af3-d03904797d65",
  "kind": "theorem",
  "lexical_name": "X_pow_mul_sub_C_irreducible",
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
  "slug": "x-pow-mul-sub-c-irreducible--2078ab6bffbcb64d39f0a613",
  "source": {
    "blob": "eb507eb6fc3b59ca7942bd0f2038038f2acf0721",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 87,
    "path": "GRWTSK/Algebra/KummerExtension/Variant4c58eb1108fe364b785c7cb560b97625aa7a9bd5b924f0d77686aef31ae2d872.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2078ab6bffbcb64d39f0a6133b8db49ee76562c153b7a7740590ba3aae6f6210",
  "verification": {
    "reference": "docs/verification/Algebra/KummerExtension/Variant4c58eb1108fe364b785c7cb560b97625aa7a9bd5b924f0d77686aef31ae2d872.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:48cf956e-95c4-5296-3af3-d03904797d65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem X_pow_mul_sub_C_irreducible
    {n m : ℕ} {a : K} (hm : Irreducible (X ^ m - C a))
    (hn : ∀ (E : Type u) [Field E] [Algebra K E] (x : E) (_ : minpoly K x = X ^ m - C a),
      Irreducible (X ^ n - C (AdjoinSimple.gen K x))) :
    Irreducible (X ^ (n * m) - C a) := by
  have hm' : m ≠ 0 := by
    rintro rfl
    rw [pow_zero, ← C.map_one, ← map_sub] at hm
    exact not_irreducible_C _ hm
  simpa [pow_mul] using irreducible_comp (monic_X_pow_sub_C a hm') (monic_X_pow n) hm
    (by simpa only [Polynomial.map_pow, map_X] using hn)

-- TODO: generalize to even `n`
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/KummerExtension/Variant4c58eb1108fe364b785c7cb560b97625aa7a9bd5b924f0d77686aef31ae2d872.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/KummerExtension/Variant4c58eb1108fe364b785c7cb560b97625aa7a9bd5b924f0d77686aef31ae2d872.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb507eb6fc3b59ca7942bd0f2038038f2acf0721` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
