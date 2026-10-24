# inducedMap_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6d4f872a4541d98c3586765805e53e7ee678bd71",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 211,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7b/7b3e0644d4cb064219b79736e6abae6e84fdb95daf0a2916f957ed3f8d6459a4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1b07279e-3f31-1498-5329-3b98d5e12df3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f7e301cc-06e8-bf29-e860-fa3c449e37db",
  "kind": "lemma",
  "lexical_name": "inducedMap_comp",
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
  "slug": "inducedmap-comp--0dd951d7c5a600ba09618486",
  "source": {
    "blob": "6d4f872a4541d98c3586765805e53e7ee678bd71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 211,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasFibers/Variant7b3e0644d4cb064219b79736e6abae6e84fdb95daf0a2916f957ed3f8d6459a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0dd951d7c5a600ba09618486ca8734155161fa2fbc640751728e6f8799fd1f16",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasFibers/Variant7b3e0644d4cb064219b79736e6abae6e84fdb95daf0a2916f957ed3f8d6459a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f7e301cc-06e8-bf29-e860-fa3c449e37db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
lemma inducedMap_comp : (ι R).map (inducedMap f ψ φ) ≫ ψ = φ := by
  simp only [inducedMap, Fib.map_homMk, IsCartesian.fac]

end

section

variable [IsFibered p] {R S : 𝒮} {a : 𝒳} {b : Fib p R}

/-- Given `a : 𝒳`, `b : Fib p R`, and a diagram
```
  b --φ--> a
  -        -
  |        |
  v        v
  R --f--> S
```
It can be factorized as
```
  b --τ--> b'--ψ--> a
  -        -        -
  |        |        |
  v        v        v
  R ====== R --f--> S
```
with `ψ` Cartesian over `f` and `τ` a map in `Fib p R`. -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasFibers/Variant7b3e0644d4cb064219b79736e6abae6e84fdb95daf0a2916f957ed3f8d6459a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasFibers/Variant7b3e0644d4cb064219b79736e6abae6e84fdb95daf0a2916f957ed3f8d6459a4.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d4f872a4541d98c3586765805e53e7ee678bd71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
