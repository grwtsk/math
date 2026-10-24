# hasEqualizer_of_hasKernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a8616b3b-a167-faf5-69bd-66ef4b81489c",
  "kind": "theorem",
  "lexical_name": "hasEqualizer_of_hasKernel",
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
  "slug": "hasequalizer-of-haskernel--299a6f21814efdab8abc17db",
  "source": {
    "blob": "fe81433c80bf1f31ea63063c485e9ff84ccc76ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 363,
    "line": 357,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6056e14d16b6fb052fdbff0e59f45641566fe493cfc05abc7d1c562de9e41bd2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:299a6f21814efdab8abc17db3f28823cd6428785870ea38a64501ca9e2d15dde",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6056e14d16b6fb052fdbff0e59f45641566fe493cfc05abc7d1c562de9e41bd2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a8616b3b-a167-faf5-69bd-66ef4b81489c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 357–363.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasEqualizer_of_hasKernel [HasKernel (f - g)] : HasEqualizer f g :=
  HasLimit.mk
    { cone := forkOfKernelFork _
      isLimit := isLimitForkOfKernelFork (equalizerIsEqualizer (f - g) 0) }
#align category_theory.preadditive.has_equalizer_of_has_kernel CategoryTheory.Preadditive.hasEqualizer_of_hasKernel

/-- A preadditive category has a kernel for `f - g` if it has an equalizer for `f` and `g`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6056e14d16b6fb052fdbff0e59f45641566fe493cfc05abc7d1c562de9e41bd2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant6056e14d16b6fb052fdbff0e59f45641566fe493cfc05abc7d1c562de9e41bd2.lean#L357).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe81433c80bf1f31ea63063c485e9ff84ccc76ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
