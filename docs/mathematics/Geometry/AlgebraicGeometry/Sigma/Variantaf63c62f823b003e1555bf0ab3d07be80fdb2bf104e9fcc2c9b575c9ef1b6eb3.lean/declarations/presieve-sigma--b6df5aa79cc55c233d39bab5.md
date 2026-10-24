# presieve₀_sigma

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:acb7f1fa-5cb3-1f6e-7053-f8835592e682",
  "kind": "lemma",
  "lexical_name": "presieve₀_sigma",
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
  "slug": "presieve-sigma--b6df5aa79cc55c233d39bab5",
  "source": {
    "blob": "bdb7f62083d9c4653ff1c8a3c0e428e0ffc69a35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 49,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Sigma/Variantaf63c62f823b003e1555bf0ab3d07be80fdb2bf104e9fcc2c9b575c9ef1b6eb3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6df5aa79cc55c233d39bab550218b341a4d81ab6a48a123b39da83ce60ae288",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Sigma/Variantaf63c62f823b003e1555bf0ab3d07be80fdb2bf104e9fcc2c9b575c9ef1b6eb3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:acb7f1fa-5cb3-1f6e-7053-f8835592e682`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma presieve₀_sigma {S : Scheme.{u}} (𝒰 : Cover.{v} (precoverage P) S) :
    𝒰.sigma.presieve₀ = Presieve.singleton (Sigma.desc 𝒰.f) := by
  refine le_antisymm ?_ fun T g ⟨⟩ ↦ ⟨⟨⟩⟩
  rw [Presieve.ofArrows_le_iff]
  intro i
  exact Presieve.singleton_self _

variable [P.IsMultiplicative] {𝒰 𝒱 : Scheme.Cover.{v} (precoverage P) S}

variable (𝒰) in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Sigma/Variantaf63c62f823b003e1555bf0ab3d07be80fdb2bf104e9fcc2c9b575c9ef1b6eb3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Sigma/Variantaf63c62f823b003e1555bf0ab3d07be80fdb2bf104e9fcc2c9b575c9ef1b6eb3.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bdb7f62083d9c4653ff1c8a3c0e428e0ffc69a35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
