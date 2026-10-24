# monotoneOn_or_antitoneOn_iff_uIcc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:23d9c810-9455-68e4-ff68-1182e7e3c36f",
  "kind": "lemma",
  "lexical_name": "monotoneOn_or_antitoneOn_iff_uIcc",
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
  "slug": "monotoneon-or-antitoneon-iff-uicc--ef831394aaae1d1a9c99ffd3",
  "source": {
    "blob": "36497280631e7957a47e3d03800a7f629805c8bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 251,
    "line": 242,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UnorderedInterval/Variantdf25599c0f56f41b3b1cafb254353074f65ffe1adaf06cb10f2cac58812ca018.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef831394aaae1d1a9c99ffd35080b1933744fb0051346ba54e8d353a52cd3f9b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UnorderedInterval/Variantdf25599c0f56f41b3b1cafb254353074f65ffe1adaf06cb10f2cac58812ca018.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:23d9c810-9455-68e4-ff68-1182e7e3c36f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 242–251.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma monotoneOn_or_antitoneOn_iff_uIcc :
    MonotoneOn f s ∨ AntitoneOn f s ↔
      ∀ (a) (_ : a ∈ s) (b) (_ : b ∈ s) (c) (_ : c ∈ s), c ∈ [[a, b]] → f c ∈ [[f a, f b]] :=
  by simp [monotoneOn_iff_monotone, antitoneOn_iff_antitone, monotone_or_antitone_iff_uIcc,
    mem_uIcc]
#align set.monotone_on_or_antitone_on_iff_uIcc Set.monotoneOn_or_antitoneOn_iff_uIcc

-- Porting note: what should the naming scheme be here? This is a term, so should be `uIoc`,
-- but we also want to match the `Ioc` convention.
/-- The open-closed uIcc with unordered bounds. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UnorderedInterval/Variantdf25599c0f56f41b3b1cafb254353074f65ffe1adaf06cb10f2cac58812ca018.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UnorderedInterval/Variantdf25599c0f56f41b3b1cafb254353074f65ffe1adaf06cb10f2cac58812ca018.lean#L242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36497280631e7957a47e3d03800a7f629805c8bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
