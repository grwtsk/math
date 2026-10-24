# comp_zero_cochain_v

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "449c1a6db4b04e7ab81a49e244cf8a586cfc29f6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 243,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/45/458d2765721e325248b9de80a7adbec5dc02e56938edadbc9812e22d387c3144.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9f50d772-3760-a555-2b28-63b9f2c231f0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:77a7d1f9-12af-07ef-2ee2-9883e1200bb7",
  "kind": "lemma",
  "lexical_name": "comp_zero_cochain_v",
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
  "slug": "comp-zero-cochain-v--baf5c7ccc1eb4ce6759190b0",
  "source": {
    "blob": "449c1a6db4b04e7ab81a49e244cf8a586cfc29f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 243,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplex/Variant458d2765721e325248b9de80a7adbec5dc02e56938edadbc9812e22d387c3144.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:baf5c7ccc1eb4ce6759190b083f385b628903157ee3d657a05ab1fbfb595ed8c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplex/Variant458d2765721e325248b9de80a7adbec5dc02e56938edadbc9812e22d387c3144.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:77a7d1f9-12af-07ef-2ee2-9883e1200bb7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma comp_zero_cochain_v (z₁ : Cochain F G n) (z₂ : Cochain G K 0) (p q : ℤ) (hpq : p + n = q) :
    (z₁.comp z₂ (add_zero n)).v p q hpq = z₁.v p q hpq ≫ z₂.v q q (add_zero q) :=
  comp_v z₁ z₂ (add_zero n) p q q hpq (add_zero q)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplex/Variant458d2765721e325248b9de80a7adbec5dc02e56938edadbc9812e22d387c3144.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/HomComplex/Variant458d2765721e325248b9de80a7adbec5dc02e56938edadbc9812e22d387c3144.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `449c1a6db4b04e7ab81a49e244cf8a586cfc29f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
