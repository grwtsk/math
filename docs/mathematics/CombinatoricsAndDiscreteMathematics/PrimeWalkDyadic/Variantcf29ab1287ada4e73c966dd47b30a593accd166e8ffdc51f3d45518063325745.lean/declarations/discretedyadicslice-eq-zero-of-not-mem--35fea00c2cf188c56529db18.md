# discreteDyadicSlice_eq_zero_of_not_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7f865d75-6be3-0c5d-e7a2-4f3e95b2911b",
  "kind": "theorem",
  "lexical_name": "discreteDyadicSlice_eq_zero_of_not_mem",
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
  "slug": "discretedyadicslice-eq-zero-of-not-mem--35fea00c2cf188c56529db18",
  "source": {
    "blob": "ab0b4f69d1450dcdea318d34c4732008daf32219",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 138,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeWalkDyadic/Variantcf29ab1287ada4e73c966dd47b30a593accd166e8ffdc51f3d45518063325745.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35fea00c2cf188c56529db18996f0b0025223cd0a4df2dd543e0a65ffcd07c09",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/PrimeWalkDyadic/Variantcf29ab1287ada4e73c966dd47b30a593accd166e8ffdc51f3d45518063325745.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f865d75-6be3-0c5d-e7a2-4f3e95b2911b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem discreteDyadicSlice_eq_zero_of_not_mem {E : Type*} [Zero E]
    (j : ℕ) (walk : ℕ → E) (k : ℕ) (hk : k ∉ dyadicInterval j) :
    discreteDyadicSlice j walk k = 0 := by
  simp [discreteDyadicSlice, hk]

/-- Summing a slice over its own block recovers the original block mass. -/
@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/PrimeWalkDyadic/Variantcf29ab1287ada4e73c966dd47b30a593accd166e8ffdc51f3d45518063325745.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/PrimeWalkDyadic/Variantcf29ab1287ada4e73c966dd47b30a593accd166e8ffdc51f3d45518063325745.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ab0b4f69d1450dcdea318d34c4732008daf32219` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
