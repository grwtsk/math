# Scheme.Hom.asFiberHom_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5c2d9e1d7135a0b53eb57e299626c1f105e3830a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 160,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bfb047b25dbd69b00277701ab1e4be6ddad9100cf9ff2c887c3179cf6b516713.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5b327747-a5fc-a93a-9315-656d1b0207ac",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:26665f53-0593-839e-6a64-85001ced929b",
  "kind": "lemma",
  "lexical_name": "Scheme.Hom.asFiberHom_apply",
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
  "slug": "scheme-hom-asfiberhom-apply--6ca0a4995b6c8d7a2a6bbbc7",
  "source": {
    "blob": "5c2d9e1d7135a0b53eb57e299626c1f105e3830a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 160,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Fiber/Variantbfb047b25dbd69b00277701ab1e4be6ddad9100cf9ff2c887c3179cf6b516713.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ca0a4995b6c8d7a2a6bbbc72b60a56cd1aecb14468d05c2ee993e9a65214604",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Fiber/Variantbfb047b25dbd69b00277701ab1e4be6ddad9100cf9ff2c887c3179cf6b516713.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:26665f53-0593-839e-6a64-85001ced929b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Scheme.Hom.asFiberHom_apply (f : X ⟶ Y) (x : X) (y) :
    f.asFiberHom x y = f.asFiber x :=
  (f.fiberι _).isEmbedding.injective (by simp [← Scheme.Hom.comp_apply])

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Fiber/Variantbfb047b25dbd69b00277701ab1e4be6ddad9100cf9ff2c887c3179cf6b516713.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Fiber/Variantbfb047b25dbd69b00277701ab1e4be6ddad9100cf9ff2c887c3179cf6b516713.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c2d9e1d7135a0b53eb57e299626c1f105e3830a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
