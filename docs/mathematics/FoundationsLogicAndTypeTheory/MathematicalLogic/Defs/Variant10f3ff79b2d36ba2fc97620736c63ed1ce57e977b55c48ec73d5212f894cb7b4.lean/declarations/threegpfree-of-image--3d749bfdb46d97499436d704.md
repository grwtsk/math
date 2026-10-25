# ThreeGPFree.of_image

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f34cb17d-5e9c-d7ac-c891-869a4ebcf7f5",
  "kind": "lemma",
  "lexical_name": "ThreeGPFree.of_image",
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
  "slug": "threegpfree-of-image--3d749bfdb46d97499436d704",
  "source": {
    "blob": "ed20367611106a8aa2fd46bdaac51858d2c122e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 124,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant10f3ff79b2d36ba2fc97620736c63ed1ce57e977b55c48ec73d5212f894cb7b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d749bfdb46d97499436d70463f7f4aa732289cc68455a077bc1e0433d62cd15",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant10f3ff79b2d36ba2fc97620736c63ed1ce57e977b55c48ec73d5212f894cb7b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f34cb17d-5e9c-d7ac-c891-869a4ebcf7f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ThreeGPFree.of_image (hf : IsMulFreimanHom 2 s t f) (hf' : s.InjOn f) (hAs : A ⊆ s)
    (hA : ThreeGPFree (f '' A)) : ThreeGPFree A :=
  fun _ ha _ hb _ hc habc ↦ hf' (hAs ha) (hAs hb) <| hA (mem_image_of_mem _ ha)
    (mem_image_of_mem _ hb) (mem_image_of_mem _ hc) <|
    hf.mul_eq_mul (hAs ha) (hAs hc) (hAs hb) (hAs hb) habc

/-- Geometric progressions of length three are unchanged under `2`-Freiman isomorphisms. -/
@[to_additive
/-- Arithmetic progressions of length three are unchanged under `2`-Freiman isomorphisms. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant10f3ff79b2d36ba2fc97620736c63ed1ce57e977b55c48ec73d5212f894cb7b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Defs/Variant10f3ff79b2d36ba2fc97620736c63ed1ce57e977b55c48ec73d5212f894cb7b4.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed20367611106a8aa2fd46bdaac51858d2c122e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
