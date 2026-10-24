# Submodule.range_ker_disjoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7d691b993206990704e02d62c3d1a5bdd41e9289",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 93,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e0/e0b9ddc89268abb33348324624b1bf03f1e6d2c60f149a1a1be45da01674fb3e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1436569a-1d7b-a4c6-246c-122879e102a7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:997712cb-ac5e-46a9-7e94-65e7ad33f097",
  "kind": "theorem",
  "lexical_name": "Submodule.range_ker_disjoint",
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
  "slug": "submodule-range-ker-disjoint--2285791903efcd8819bc0496",
  "source": {
    "blob": "7d691b993206990704e02d62c3d1a5bdd41e9289",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 93,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variante0b9ddc89268abb33348324624b1bf03f1e6d2c60f149a1a1be45da01674fb3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2285791903efcd8819bc049654611ae71184f7ae96e62cf24b71b05fec76c012",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variante0b9ddc89268abb33348324624b1bf03f1e6d2c60f149a1a1be45da01674fb3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:997712cb-ac5e-46a9-7e94-65e7ad33f097`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Submodule.range_ker_disjoint {f : M →ₗ[R] M'}
    (hv : LinearIndependent R (f ∘ v)) :
    Disjoint (span R (range v)) (LinearMap.ker f) := by
  rw [LinearIndependent, Finsupp.linearCombination_linear_comp] at hv
  rw [disjoint_iff_inf_le, ← Set.image_univ, Finsupp.span_image_eq_map_linearCombination,
    map_inf_eq_map_inf_comap, (LinearMap.ker_comp _ _).symm.trans
      (LinearMap.ker_eq_bot_of_injective hv), inf_bot_eq, map_bot]

/-- If `M / R` and `M' / R'` are modules, `i : R' → R` is a map, `j : M →+ M'` is a monoid map,
such that they are both injective, and compatible with the scalar
multiplications on `M` and `M'`, then `j` sends linearly independent families of vectors to
linearly independent families of vectors. As a special case, taking `R = R'`
it is `LinearIndependent.map_injOn`.
TODO : `LinearIndepOn` version. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variante0b9ddc89268abb33348324624b1bf03f1e6d2c60f149a1a1be45da01674fb3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variante0b9ddc89268abb33348324624b1bf03f1e6d2c60f149a1a1be45da01674fb3e.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d691b993206990704e02d62c3d1a5bdd41e9289` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
