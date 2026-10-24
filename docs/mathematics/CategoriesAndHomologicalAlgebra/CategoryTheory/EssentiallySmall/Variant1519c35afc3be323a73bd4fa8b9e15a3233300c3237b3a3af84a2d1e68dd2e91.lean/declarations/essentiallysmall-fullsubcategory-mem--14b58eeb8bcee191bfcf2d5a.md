# essentiallySmall_fullSubcategory_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:685b09789fdbeff74997697f3252345656ac47b719d1b832fb9b78a3f9f28e59",
  "kind": "instance",
  "lexical_name": "essentiallySmall_fullSubcategory_mem",
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
  "slug": "essentiallysmall-fullsubcategory-mem--14b58eeb8bcee191bfcf2d5a",
  "source": {
    "blob": "fb78ea32526e1c8f100d7dfcea2273c7fa2aceb4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 284,
    "line": 275,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variant1519c35afc3be323a73bd4fa8b9e15a3233300c3237b3a3af84a2d1e68dd2e91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:14b58eeb8bcee191bfcf2d5aeaf60fea5d3813c5f4c0eff0198d91f14bbbce48",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variant1519c35afc3be323a73bd4fa8b9e15a3233300c3237b3a3af84a2d1e68dd2e91.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:685b09789fdbeff74997697f3252345656ac47b719d1b832fb9b78a3f9f28e59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 275–284.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance essentiallySmall_fullSubcategory_mem (s : Set C) [Small.{w} s] [LocallySmall.{w} C] :
    EssentiallySmall.{w} (ObjectProperty.FullSubcategory (· ∈ s)) :=
  suffices Small.{w} (ObjectProperty.FullSubcategory (· ∈ s)) from
    essentiallySmall_of_small_of_locallySmall _
  small_of_injective (f := fun x => (⟨x.1, x.2⟩ : s)) (by cat_disch)

end FullSubcategory

/-- Any thin category is locally small.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variant1519c35afc3be323a73bd4fa8b9e15a3233300c3237b3a3af84a2d1e68dd2e91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EssentiallySmall/Variant1519c35afc3be323a73bd4fa8b9e15a3233300c3237b3a3af84a2d1e68dd2e91.lean#L275).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb78ea32526e1c8f100d7dfcea2273c7fa2aceb4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
