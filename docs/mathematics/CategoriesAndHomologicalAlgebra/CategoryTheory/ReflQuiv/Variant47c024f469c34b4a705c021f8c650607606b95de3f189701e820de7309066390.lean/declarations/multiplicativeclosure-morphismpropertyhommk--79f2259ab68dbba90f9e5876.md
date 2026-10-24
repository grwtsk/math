# multiplicativeClosure_morphismPropertyHomMk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a6361f62-e93d-2deb-58b4-7b0f0fe38c29",
  "kind": "lemma",
  "lexical_name": "multiplicativeClosure_morphismPropertyHomMk",
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
  "slug": "multiplicativeclosure-morphismpropertyhommk--79f2259ab68dbba90f9e5876",
  "source": {
    "blob": "ffb0e4d8b4bb85f1d49a9d03a7523e87c668f2a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 233,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiv/Variant47c024f469c34b4a705c021f8c650607606b95de3f189701e820de7309066390.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:79f2259ab68dbba90f9e5876710d68e9768b6577097b8de2162ae5fe6a5e6698",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiv/Variant47c024f469c34b4a705c021f8c650607606b95de3f189701e820de7309066390.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a6361f62-e93d-2deb-58b4-7b0f0fe38c29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 233–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma multiplicativeClosure_morphismPropertyHomMk :
    (morphismPropertyHomMk V).multiplicativeClosure = ⊤ :=
  le_antisymm (by simp) (by
    intro _ _ f hf
    clear hf
    induction f using hom_induction with
    | id => exact le_multiplicativeClosure _ _ (morphismPropertyHomMk_homMk _)
    | comp_homMk _ _ h =>
      exact comp_mem _ _ _ h (le_multiplicativeClosure _ _ (morphismPropertyHomMk_homMk _)))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiv/Variant47c024f469c34b4a705c021f8c650607606b95de3f189701e820de7309066390.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiv/Variant47c024f469c34b4a705c021f8c650607606b95de3f189701e820de7309066390.lean#L233).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ffb0e4d8b4bb85f1d49a9d03a7523e87c668f2a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
