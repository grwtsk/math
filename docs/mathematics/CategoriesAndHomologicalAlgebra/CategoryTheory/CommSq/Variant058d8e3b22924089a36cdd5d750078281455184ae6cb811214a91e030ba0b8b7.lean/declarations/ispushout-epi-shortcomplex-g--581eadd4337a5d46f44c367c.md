# IsPushout.epi_shortComplex_g

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:edc52143-6b29-b9e3-27ba-fce8368f285b",
  "kind": "lemma",
  "lexical_name": "IsPushout.epi_shortComplex_g",
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
  "slug": "ispushout-epi-shortcomplex-g--581eadd4337a5d46f44c367c",
  "source": {
    "blob": "18bb3541a8c82092bcdf9a8518988e1ff7008144",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 116,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant058d8e3b22924089a36cdd5d750078281455184ae6cb811214a91e030ba0b8b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:581eadd4337a5d46f44c367c2b89c943f5fc9a048f4df46c8fe07c95a901a5e1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant058d8e3b22924089a36cdd5d750078281455184ae6cb811214a91e030ba0b8b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:edc52143-6b29-b9e3-27ba-fce8368f285b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsPushout.epi_shortComplex_g (h : IsPushout f g inl inr) :
    Epi h.shortComplex.g := by
  rw [Preadditive.epi_iff_cancel_zero]
  intro _ b hb
  exact Cofork.IsColimit.hom_ext h.isColimitCokernelCofork (by simpa using hb)

end Pushout

section Pullback

variable {fst : X₁ ⟶ X₂} {snd : X₁ ⟶ X₃} {f : X₂ ⟶ X₄} {g : X₃ ⟶ X₄}

/-- The kernel fork attached to a commutative square in a preadditive category. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant058d8e3b22924089a36cdd5d750078281455184ae6cb811214a91e030ba0b8b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommSq/Variant058d8e3b22924089a36cdd5d750078281455184ae6cb811214a91e030ba0b8b7.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18bb3541a8c82092bcdf9a8518988e1ff7008144` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
