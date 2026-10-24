# isLimitKernelForkOfFork

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7fe7217d95c685fb95f03d01adf88c4e519b4bc7b3cf9e791ed54c28907ee017",
  "kind": "def",
  "lexical_name": "isLimitKernelForkOfFork",
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
  "slug": "islimitkernelforkoffork--3f48c6b4e9c0113eb18a3f1b",
  "source": {
    "blob": "858164ca1c9d52befc38790a6ff26e996668c728",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 376,
    "line": 370,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5d01c299d098cdf353d215cedbb5068da0f7f4465a0f3f46e5c62907012810a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3f48c6b4e9c0113eb18a3f1b8308af5614b4d169ae1adcc1d6cea003aed4ad6d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5d01c299d098cdf353d215cedbb5068da0f7f4465a0f3f46e5c62907012810a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7fe7217d95c685fb95f03d01adf88c4e519b4bc7b3cf9e791ed54c28907ee017`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 370–376.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isLimitKernelForkOfFork {c : Fork f g} (i : IsLimit c) : IsLimit (kernelForkOfFork c) :=
  Fork.IsLimit.mk' _ fun s =>
    ⟨i.lift (forkOfKernelFork s), i.fac _ _, fun h => by apply Fork.IsLimit.hom_ext i; cat_disch⟩

variable (f g)

/-- A preadditive category has an equalizer for `f` and `g` if it has a kernel for `f - g`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5d01c299d098cdf353d215cedbb5068da0f7f4465a0f3f46e5c62907012810a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant5d01c299d098cdf353d215cedbb5068da0f7f4465a0f3f46e5c62907012810a5.lean#L370).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `858164ca1c9d52befc38790a6ff26e996668c728` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
