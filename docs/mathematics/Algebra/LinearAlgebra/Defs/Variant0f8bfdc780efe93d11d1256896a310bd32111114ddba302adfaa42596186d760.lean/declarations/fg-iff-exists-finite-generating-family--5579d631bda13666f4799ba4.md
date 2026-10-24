# fg_iff_exists_finite_generating_family

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "07ea2c832a16c963165b95efa4068d57642abb01",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 71,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0f/0f8bfdc780efe93d11d1256896a310bd32111114ddba302adfaa42596186d760.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ccd05270-f77d-e330-64c4-89f23a58e151",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2f6581ce-cb74-c868-d5aa-1247746794a6",
  "kind": "lemma",
  "lexical_name": "fg_iff_exists_finite_generating_family",
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
  "slug": "fg-iff-exists-finite-generating-family--5579d631bda13666f4799ba4",
  "source": {
    "blob": "07ea2c832a16c963165b95efa4068d57642abb01",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 71,
    "path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant0f8bfdc780efe93d11d1256896a310bd32111114ddba302adfaa42596186d760.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5579d631bda13666f4799ba49a7985e2c51d6a9fd7b3b98c3b3a4d446a8896d0",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Defs/Variant0f8bfdc780efe93d11d1256896a310bd32111114ddba302adfaa42596186d760.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f6581ce-cb74-c868-d5aa-1247746794a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma fg_iff_exists_finite_generating_family {A : Type u} [Semiring A] {M : Type v}
    [AddCommMonoid M] [Module A M] {N : Submodule A M} :
    N.FG ↔ ∃ (G : Type w) (_ : Finite G) (g : G → M), span A (range g) = N := by
  constructor
  · intro hN
    obtain ⟨n, f, h⟩ := fg_iff_exists_fin_generating_family.mp hN
    refine ⟨ULift (Fin n), inferInstance, f ∘ ULift.down, ?_⟩
    convert! h
    ext
    simp
  · rintro ⟨G, _, g, hg⟩
    have := Fintype.ofFinite (range g)
    exact ⟨(range g).toFinset, by simpa⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Defs/Variant0f8bfdc780efe93d11d1256896a310bd32111114ddba302adfaa42596186d760.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Defs/Variant0f8bfdc780efe93d11d1256896a310bd32111114ddba302adfaa42596186d760.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07ea2c832a16c963165b95efa4068d57642abb01` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
