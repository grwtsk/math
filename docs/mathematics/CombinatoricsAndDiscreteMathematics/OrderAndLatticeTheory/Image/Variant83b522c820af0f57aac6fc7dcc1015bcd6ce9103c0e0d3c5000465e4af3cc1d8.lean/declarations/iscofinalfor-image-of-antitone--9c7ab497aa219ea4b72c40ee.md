# IsCofinalFor.image_of_antitone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cc65475e-0625-71ca-50ab-b3261c0bab65",
  "kind": "lemma",
  "lexical_name": "IsCofinalFor.image_of_antitone",
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
  "slug": "iscofinalfor-image-of-antitone--9c7ab497aa219ea4b72c40ee",
  "source": {
    "blob": "28f8ca9136e79d8243680694ccb100d5f434362d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 347,
    "line": 334,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Image/Variant83b522c820af0f57aac6fc7dcc1015bcd6ce9103c0e0d3c5000465e4af3cc1d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c7ab497aa219ea4b72c40eecf0aa3d1bae0fbe8df16d165769147c95b902b79",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Image/Variant83b522c820af0f57aac6fc7dcc1015bcd6ce9103c0e0d3c5000465e4af3cc1d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc65475e-0625-71ca-50ab-b3261c0bab65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 334–347.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsCofinalFor.image_of_antitone (hst : IsCofinalFor s t) (hf : Antitone f) :
    IsCoinitialFor (f '' s) (f '' t) := by
  simp only [IsCoinitialFor, forall_mem_image, exists_mem_image]
  rintro a ha
  obtain ⟨b, hb, hab⟩ := hst ha
  exact ⟨b, hb, hf hab⟩

end IsCofinalFor

section Prod

variable {α β : Type*} [Preorder α] [Preorder β]

@[to_dual]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Image/Variant83b522c820af0f57aac6fc7dcc1015bcd6ce9103c0e0d3c5000465e4af3cc1d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Image/Variant83b522c820af0f57aac6fc7dcc1015bcd6ce9103c0e0d3c5000465e4af3cc1d8.lean#L334).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28f8ca9136e79d8243680694ccb100d5f434362d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
