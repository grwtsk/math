# isBoundary₂_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6c7ff337eb8bd6257d3aada1ec1b9cccacbed085",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 591,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ab/ab984722ba92212a1999cfb5127ccbde15a047b3a3f98834b5431cbc9395e679.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:50f39c05-a762-b85d-08d7-8014e0098774",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a42872c3-fc05-dcee-4a96-b7b40c308754",
  "kind": "theorem",
  "lexical_name": "isBoundary₂_iff",
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
  "slug": "isboundary-iff--f2f4a9563b140a8f0eac1644",
  "source": {
    "blob": "6c7ff337eb8bd6257d3aada1ec1b9cccacbed085",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 615,
    "line": 591,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/LowDegree/Variantab984722ba92212a1999cfb5127ccbde15a047b3a3f98834b5431cbc9395e679.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2f4a9563b140a8f0eac164481c9c3bf8cbbc69ccbd66a7b89b81d58eac07a0c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/LowDegree/Variantab984722ba92212a1999cfb5127ccbde15a047b3a3f98834b5431cbc9395e679.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a42872c3-fc05-dcee-4a96-b7b40c308754`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 591–615.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isBoundary₂_iff (x : G × G →₀ A) :
    IsBoundary₂ x ↔ ∃ y : G × G × G →₀ A, y.sum
      (fun g a => single (g.2.1, g.2.2) a - single (g.1 * g.2.1, g.2.2) (g.1 • a) +
        single (g.1, g.2.1 * g.2.2) (g.1 • a) - single (g.1, g.2.1) (g.1 • a)) = x := by
  constructor
  · rintro ⟨y, hy⟩
    use y.sum (fun g a => single g (g.1⁻¹ • a))
    simp_all [sum_sum_index]
  · rintro ⟨x, hx⟩
    use x.sum (fun g a => single g (g.1 • a))
    simp_all [sum_sum_index]

end

end IsBoundary

section ofDistribMulAction

variable {k G A : Type u} [CommRing k] [Group G] [AddCommGroup A] [Module k A]
  [DistribMulAction G A] [SMulCommClass G k A]

/-- Given a `k`-module `A` with a compatible `DistribMulAction` of `G`, and a term
`x : A` satisfying the 0-boundary condition, this produces an element of the kernel of the quotient
map `A → A_G` for the representation on `A` induced by the `DistribMulAction`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/LowDegree/Variantab984722ba92212a1999cfb5127ccbde15a047b3a3f98834b5431cbc9395e679.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/LowDegree/Variantab984722ba92212a1999cfb5127ccbde15a047b3a3f98834b5431cbc9395e679.lean#L591).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c7ff337eb8bd6257d3aada1ec1b9cccacbed085` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
