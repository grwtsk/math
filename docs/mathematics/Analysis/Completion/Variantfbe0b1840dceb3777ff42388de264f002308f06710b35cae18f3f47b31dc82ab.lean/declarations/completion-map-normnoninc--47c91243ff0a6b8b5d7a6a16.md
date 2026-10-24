# completion.map_normNoninc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1861b38f695eca1e8deb6e7f76bce20d0a7d17c9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 70,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fb/fbe0b1840dceb3777ff42388de264f002308f06710b35cae18f3f47b31dc82ab.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5929a093-c26a-e762-d148-b673dc24a2c4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:303bd547-397b-9379-9eaa-96b188ce177f",
  "kind": "theorem",
  "lexical_name": "completion.map_normNoninc",
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
  "slug": "completion-map-normnoninc--47c91243ff0a6b8b5d7a6a16",
  "source": {
    "blob": "1861b38f695eca1e8deb6e7f76bce20d0a7d17c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 70,
    "path": "GRWTSK/Analysis/Completion/Variantfbe0b1840dceb3777ff42388de264f002308f06710b35cae18f3f47b31dc82ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:47c91243ff0a6b8b5d7a6a16ea1836ba28e863958a45041a9941c7369144c348",
  "verification": {
    "reference": "docs/verification/Analysis/Completion/Variantfbe0b1840dceb3777ff42388de264f002308f06710b35cae18f3f47b31dc82ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:303bd547-397b-9379-9eaa-96b188ce177f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem completion.map_normNoninc {V W : SemiNormedGroupCat} {f : V ⟶ W} (hf : f.NormNoninc) :
    (completion.map f).NormNoninc :=
  NormedAddGroupHom.NormNoninc.normNoninc_iff_norm_le_one.2 <|
    (NormedAddGroupHom.norm_completion f).le.trans <|
      NormedAddGroupHom.NormNoninc.normNoninc_iff_norm_le_one.1 hf
#align SemiNormedGroup.Completion.map_norm_noninc SemiNormedGroupCat.completion.map_normNoninc

variable (V W : SemiNormedGroupCat)

/-- Given a normed group hom `V ⟶ W`, this defines the associated morphism
from the completion of `V` to the completion of `W`.
The difference from the definition obtained from the functoriality of completion is in that the
map sending a morphism `f` to the associated morphism of completions is itself additive. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Completion/Variantfbe0b1840dceb3777ff42388de264f002308f06710b35cae18f3f47b31dc82ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Completion/Variantfbe0b1840dceb3777ff42388de264f002308f06710b35cae18f3f47b31dc82ab.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1861b38f695eca1e8deb6e7f76bce20d0a7d17c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
