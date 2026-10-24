# isLimitOfHasPullbackOfPreservesLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e50938e6e5daad4987ac813fd8272a3ae1d842d75c8f84e2f45fe2ea7cd0c1dd",
  "kind": "def",
  "lexical_name": "isLimitOfHasPullbackOfPreservesLimit",
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
  "slug": "islimitofhaspullbackofpreserveslimit--6e9003b8310ad7bf38bcbcaf",
  "source": {
    "blob": "77d2f0eb2a3ed36079e9426d9042552028ed02b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 95,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variantd90c405d64ece05443b978b62af81c5f1aadbd92526d6f678a1678f889dd9c53.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6e9003b8310ad7bf38bcbcaf7a32c3a997d1bf845692eb98a0df22087d4dd828",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variantd90c405d64ece05443b978b62af81c5f1aadbd92526d6f678a1678f889dd9c53.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e50938e6e5daad4987ac813fd8272a3ae1d842d75c8f84e2f45fe2ea7cd0c1dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isLimitOfHasPullbackOfPreservesLimit [HasPullback f g] :
    have : G.map (pullback.fst f g) ≫ G.map f = G.map (pullback.snd f g) ≫ G.map g := by
      simp only [← G.map_comp, pullback.condition]
    IsLimit (PullbackCone.mk (G.map (pullback.fst f g)) (G.map (pullback.snd f g)) this) :=
  isLimitPullbackConeMapOfIsLimit G _ (pullbackIsPullback f g)

/-- If `F` preserves the pullback of `f, g`, it also preserves the pullback of `g, f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variantd90c405d64ece05443b978b62af81c5f1aadbd92526d6f678a1678f889dd9c53.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pullbacks/Variantd90c405d64ece05443b978b62af81c5f1aadbd92526d6f678a1678f889dd9c53.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77d2f0eb2a3ed36079e9426d9042552028ed02b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
