# preimage_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6c4ed060-6b32-4a4d-d45d-974c58f10068",
  "kind": "lemma",
  "lexical_name": "preimage_div",
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
  "slug": "preimage-div--9371c6b280dc8f2e3c6d2ac4",
  "source": {
    "blob": "8c3df6de0feb8a12f0005f12d8703c8343341ca2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1065,
    "line": 1053,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant8982075bcb324e7ad756063c7ea65155e28c0bb0248049de0235f1bc3c05cdd1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9371c6b280dc8f2e3c6d2ac4837983f94b2c76ebbbc43ee94d3b6d908d635d88",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant8982075bcb324e7ad756063c7ea65155e28c0bb0248049de0235f1bc3c05cdd1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c4ed060-6b32-4a4d-d45d-974c58f10068`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1053–1065.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma preimage_div (hm : Injective m) {s t : Set β} (hs : s ⊆ range m) (ht : t ⊆ range m) :
    m ⁻¹' (s / t) = m ⁻¹' s / m ⁻¹' t :=
  hm.image_injective <| by
    rw [image_div, image_preimage_eq_iff.2 hs, image_preimage_eq_iff.2 ht,
      image_preimage_eq_iff.2 (div_subset_range m hs ht)]

end Group

section Pi

variable {ι : Type*} {α : ι → Type*} [∀ i, Inv (α i)]

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant8982075bcb324e7ad756063c7ea65155e28c0bb0248049de0235f1bc3c05cdd1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant8982075bcb324e7ad756063c7ea65155e28c0bb0248049de0235f1bc3c05cdd1.lean#L1053).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c3df6de0feb8a12f0005f12d8703c8343341ca2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
