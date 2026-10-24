# inner_definite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e32e7287-df5b-3b5b-7ce2-0c9cefbffaf9",
  "kind": "theorem",
  "lexical_name": "inner_definite",
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
  "slug": "inner-definite--0e228a09f1252612fa153af5",
  "source": {
    "blob": "17f075855009ed0bf9e9d2410af4603666bebdf1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 107,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/TensorProduct/Variant07fa84ab8f9831406977aeb3b0dc0946731b97d47b5c468e4ff693fe69d69539.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e228a09f1252612fa153af5b37a2d6424394068d3a9bfe97be9d5a6402e15e5",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/TensorProduct/Variant07fa84ab8f9831406977aeb3b0dc0946731b97d47b5c468e4ff693fe69d69539.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e32e7287-df5b-3b5b-7ce2-0c9cefbffaf9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem inner_definite (x : E ⊗[𝕜] F) (hx : inner 𝕜 x x = 0) : x = 0 := by
  /-
  The way we prove this is by noting that every element of a tensor product lies
  in the tensor product of some finite submodules.
  So for `x : E ⊗ F`, there exists finite submodules `E', F'` such that `x ∈ mapIncl E' F'`.
  And so the rest then follows from the above lemmas `inner_mapIncl_mapIncl` and `inner_self`.
  -/
  obtain ⟨E', F', iE', iF', hz⟩ := exists_finite_submodule_of_setFinite {x} (Set.finite_singleton x)
  obtain ⟨y : E' ⊗ F', rfl : mapIncl E' F' y = x⟩ := Set.singleton_subset_iff.mp hz
  obtain e := stdOrthonormalBasis 𝕜 E'
  obtain f := stdOrthonormalBasis 𝕜 F'
  have (i) (j) : (e.toBasis.tensorProduct f.toBasis).repr y (i, j) = 0 := by
    rw [inner_mapIncl_mapIncl, inner_self y e f, RCLike.ofReal_eq_zero,
      Finset.sum_eq_zero_iff_of_nonneg fun _ _ => sq_nonneg _] at hx
    simpa using hx (i, j)
  have : y = 0 := by simp [(e.toBasis.tensorProduct f.toBasis).ext_elem_iff, this]
  rw [this, map_zero]

set_option backward.privateInPublic true in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/TensorProduct/Variant07fa84ab8f9831406977aeb3b0dc0946731b97d47b5c468e4ff693fe69d69539.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/TensorProduct/Variant07fa84ab8f9831406977aeb3b0dc0946731b97d47b5c468e4ff693fe69d69539.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17f075855009ed0bf9e9d2410af4603666bebdf1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
