# spine_map_subinterval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5cdddc57-c0c1-5feb-d2bc-76ac44462561",
  "kind": "lemma",
  "lexical_name": "spine_map_subinterval",
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
  "slug": "spine-map-subinterval--fe7e3b060e91a16054d2f71e",
  "source": {
    "blob": "03d1b5c9ebf0add768429e30b873fed73a5f2699",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 197,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant24d86de4ec91bf3aa58447f1838ae676cba67a9b5b7608fcac6cb15356037afa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe7e3b060e91a16054d2f71e5806260aa81b96e601bacc3695ef2d4462bec02a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant24d86de4ec91bf3aa58447f1838ae676cba67a9b5b7608fcac6cb15356037afa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5cdddc57-c0c1-5feb-d2bc-76ac44462561`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma spine_map_subinterval (j l : ℕ) (h : j + l ≤ m) (Δ : X _⦋m⦌ₙ₊₁) :
    X.spine l (by lia) (X.map (tr (subinterval j l h)).op Δ) =
      (X.spine m hₘ Δ).interval j l h := by
  ext i
  · dsimp only [spine_vertex, Path.interval]
    rw [← Functor.map_comp_apply, ← op_comp, ← tr_comp,
      const_subinterval_eq]
  · dsimp only [spine_arrow, Path.interval]
    rw [← Functor.map_comp_apply, ← op_comp, ← tr_comp,
      mkOfSucc_subinterval_eq]

end Truncated

/-- A path of length `n` in a simplicial set `X` is defined as a 1-truncated
path in the 1-truncation of `X`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant24d86de4ec91bf3aa58447f1838ae676cba67a9b5b7608fcac6cb15356037afa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Path/Variant24d86de4ec91bf3aa58447f1838ae676cba67a9b5b7608fcac6cb15356037afa.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03d1b5c9ebf0add768429e30b873fed73a5f2699` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
