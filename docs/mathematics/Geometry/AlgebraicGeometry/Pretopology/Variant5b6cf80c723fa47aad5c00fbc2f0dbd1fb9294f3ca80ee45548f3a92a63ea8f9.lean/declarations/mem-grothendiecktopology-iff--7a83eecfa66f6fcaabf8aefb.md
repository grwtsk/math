# mem_grothendieckTopology_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fd6276ab-e305-b16b-4017-826b68af07ed",
  "kind": "lemma",
  "lexical_name": "mem_grothendieckTopology_iff",
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
  "slug": "mem-grothendiecktopology-iff--7a83eecfa66f6fcaabf8aefb",
  "source": {
    "blob": "06a579e2c509d67b25babc546bd0d64e91e6fdff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 88,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Pretopology/Variant5b6cf80c723fa47aad5c00fbc2f0dbd1fb9294f3ca80ee45548f3a92a63ea8f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a83eecfa66f6fcaabf8aefbf5f824ce4fa5264c70296f743fe6a48c7cbd7b1a",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Pretopology/Variant5b6cf80c723fa47aad5c00fbc2f0dbd1fb9294f3ca80ee45548f3a92a63ea8f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd6276ab-e305-b16b-4017-826b68af07ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mem_grothendieckTopology_iff {X : Scheme.{u}} {S : Sieve X} :
    S ∈ grothendieckTopology P X ↔
      ∃ (𝒰 : Cover.{u} (precoverage P) X), Presieve.ofArrows 𝒰.X 𝒰.f ≤ S := by
  simp_rw [grothendieckTopology, Precoverage.mem_toGrothendieck_iff_of_isStableUnderComposition]
  refine ⟨fun ⟨R, hR, hle⟩ ↦ ?_, fun ⟨𝒰, hle⟩ ↦ ⟨.ofArrows 𝒰.X 𝒰.f, 𝒰.mem_pretopology, hle⟩⟩
  rw [Precoverage.mem_iff_exists_zeroHypercover] at hR
  obtain ⟨(𝒰 : Scheme.Cover _ _), rfl⟩ := hR
  use 𝒰.ulift, le_trans (fun Y g ⟨i⟩ ↦ .mk _) hle

alias ⟨exists_cover_of_mem_grothendieckTopology, _⟩ := mem_grothendieckTopology_iff

section

/-- The jointly surjective topology on `Scheme` is defined by the same condition as the jointly
surjective pretopology. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Pretopology/Variant5b6cf80c723fa47aad5c00fbc2f0dbd1fb9294f3ca80ee45548f3a92a63ea8f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Pretopology/Variant5b6cf80c723fa47aad5c00fbc2f0dbd1fb9294f3ca80ee45548f3a92a63ea8f9.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `06a579e2c509d67b25babc546bd0d64e91e6fdff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
