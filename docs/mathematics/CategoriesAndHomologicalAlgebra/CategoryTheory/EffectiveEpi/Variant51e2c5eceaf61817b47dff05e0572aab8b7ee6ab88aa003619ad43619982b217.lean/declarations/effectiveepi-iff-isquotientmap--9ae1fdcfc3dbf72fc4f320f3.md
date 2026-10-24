# effectiveEpi_iff_isQuotientMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3dc41cdf2faeabf0bd31e08eaa574e28e4ec2923",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 59,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/51/51e2c5eceaf61817b47dff05e0572aab8b7ee6ab88aa003619ad43619982b217.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:21410d24-3121-e78c-2179-31ea6cd8feed",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:efe89d3e-ad0e-5128-fb4e-8d20a34f50c1",
  "kind": "theorem",
  "lexical_name": "effectiveEpi_iff_isQuotientMap",
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
  "slug": "effectiveepi-iff-isquotientmap--9ae1fdcfc3dbf72fc4f320f3",
  "source": {
    "blob": "3dc41cdf2faeabf0bd31e08eaa574e28e4ec2923",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 59,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpi/Variant51e2c5eceaf61817b47dff05e0572aab8b7ee6ab88aa003619ad43619982b217.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ae1fdcfc3dbf72fc4f320f34336d815a0fb7005f458795e61a27287fcab8f55",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpi/Variant51e2c5eceaf61817b47dff05e0572aab8b7ee6ab88aa003619ad43619982b217.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:efe89d3e-ad0e-5128-fb4e-8d20a34f50c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem effectiveEpi_iff_isQuotientMap {B X : TopCat.{u}} (π : X ⟶ B) :
    EffectiveEpi π ↔ IsQuotientMap π := by
  /- The backward direction is given by `effectiveEpiStructOfQuotientMap` above. -/
  refine ⟨fun _ ↦ ?_, fun hπ ↦ ⟨⟨effectiveEpiStructOfQuotientMap π hπ⟩⟩⟩
  /- Since `TopCat` has pullbacks, `π` is in fact a `RegularEpi`. This means that it exhibits `B` as
    a coequalizer of two maps into `X`. It suffices to prove that `π` followed by the isomorphism to
    an arbitrary coequalizer is a quotient map. -/
  have hπ : RegularEpi π := inferInstance
  exact isQuotientMap_of_isColimit_cofork _ hπ.isColimit

@[deprecated (since := "2024-10-22")]
alias effectiveEpi_iff_quotientMap := effectiveEpi_iff_isQuotientMap

end TopCat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpi/Variant51e2c5eceaf61817b47dff05e0572aab8b7ee6ab88aa003619ad43619982b217.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EffectiveEpi/Variant51e2c5eceaf61817b47dff05e0572aab8b7ee6ab88aa003619ad43619982b217.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3dc41cdf2faeabf0bd31e08eaa574e28e4ec2923` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
