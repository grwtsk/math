# locallySurjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:277e043aec720e1dcf5c6bce145b3b71d44c42e8e9f774cfeb3f09c80fb0849d",
  "kind": "def",
  "lexical_name": "locallySurjective",
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
  "slug": "locallysurjective--0eb304d135ba47d3d3f4c202",
  "source": {
    "blob": "7f00fb39e4242618b4f475dea7754453aaa16efb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 49,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant4db7f4fade9bdf1369cad4506b6c9e8ae2bba8349075ba648f5a499c806e6a82.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0eb304d135ba47d3d3f4c202b5c5610e9f0806fcb466f68872a9d51a8804cbb5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant4db7f4fade9bdf1369cad4506b6c9e8ae2bba8349075ba648f5a499c806e6a82.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:277e043aec720e1dcf5c6bce145b3b71d44c42e8e9f774cfeb3f09c80fb0849d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def locallySurjective : MorphismProperty (Sheaf J A) :=
  fun _ _  f => IsLocallySurjective f

section

variable {A}
variable (data : FunctorialSurjectiveInjectiveFactorizationData A) [HasWeakSheafify J A]

/-- Given a functorial surjective/injective factorizations of morphisms in a concrete
category `A`, this is the induced functorial locally surjective/locally injective
factorization of morphisms in the category `Sheaf J A`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant4db7f4fade9bdf1369cad4506b6c9e8ae2bba8349075ba648f5a499c806e6a82.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant4db7f4fade9bdf1369cad4506b6c9e8ae2bba8349075ba648f5a499c806e6a82.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f00fb39e4242618b4f475dea7754453aaa16efb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
