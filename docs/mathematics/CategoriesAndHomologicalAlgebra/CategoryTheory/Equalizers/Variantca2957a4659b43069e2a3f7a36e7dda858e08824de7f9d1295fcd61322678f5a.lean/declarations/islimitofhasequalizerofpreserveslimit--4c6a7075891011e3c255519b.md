# isLimitOfHasEqualizerOfPreservesLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5d4b9589ad4e2dcdafad63ff0b15af4ef24d701dba45bc9d0a8ccf86e5cb0a46",
  "kind": "def",
  "lexical_name": "isLimitOfHasEqualizerOfPreservesLimit",
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
  "slug": "islimitofhasequalizerofpreserveslimit--4c6a7075891011e3c255519b",
  "source": {
    "blob": "3e3b781aeb0d85b48bff9bbb3e09d37267e4bee6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 64,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantca2957a4659b43069e2a3f7a36e7dda858e08824de7f9d1295fcd61322678f5a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4c6a7075891011e3c255519b6651a111aaaf7a139f7de846300e568cdc5f7955",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantca2957a4659b43069e2a3f7a36e7dda858e08824de7f9d1295fcd61322678f5a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5d4b9589ad4e2dcdafad63ff0b15af4ef24d701dba45bc9d0a8ccf86e5cb0a46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isLimitOfHasEqualizerOfPreservesLimit [PreservesLimit (parallelPair f g) G] :
    IsLimit (Fork.ofι
      (G.map (equalizer.ι f g)) (by simp only [← G.map_comp]; rw [equalizer.condition]) :
      Fork (G.map f) (G.map g)) :=
  isLimitForkMapOfIsLimit G _ (equalizerIsEqualizer f g)

variable [HasEqualizer (G.map f) (G.map g)]

/-- If the equalizer comparison map for `G` at `(f,g)` is an isomorphism, then `G` preserves the
equalizer of `(f,g)`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantca2957a4659b43069e2a3f7a36e7dda858e08824de7f9d1295fcd61322678f5a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Equalizers/Variantca2957a4659b43069e2a3f7a36e7dda858e08824de7f9d1295fcd61322678f5a.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e3b781aeb0d85b48bff9bbb3e09d37267e4bee6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
