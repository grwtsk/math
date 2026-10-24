# _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.HasReverse.Variantc844db94b8c0b9f0dca0ef3a8e689ec417f265c3e0f1ce802104107e65b5d3e2.Prefunctor.symmetrify

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:89360682f56a478005780a97d798227c1e33725cfb1b9265f8fd4bf203facc68",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.HasReverse.Variantc844db94b8c0b9f0dca0ef3a8e689ec417f265c3e0f1ce802104107e65b5d3e2.Prefunctor.symmetrify",
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
  "slug": "root-grwtsk-combinatoricsanddiscretemathematics-graphtheory-hasreverse-v--20eab312a50804d82e972359",
  "source": {
    "blob": "daeb9d7620254683e9028c563cfc79d3dd07f1d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 208,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Symmetric/Variantd6b4950db462d40039f09b2d4088b9fd74368491a18f32f85c7feb807c63a150.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:20eab312a50804d82e9723596ad35e6578857bd93af62d219423d22a0968f055",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Symmetric/Variantd6b4950db462d40039f09b2d4088b9fd74368491a18f32f85c7feb807c63a150.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:89360682f56a478005780a97d798227c1e33725cfb1b9265f8fd4bf203facc68`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.HasReverse.Variantc844db94b8c0b9f0dca0ef3a8e689ec417f265c3e0f1ce802104107e65b5d3e2.Prefunctor.symmetrify (φ : U ⥤q V) : Symmetrify U ⥤q Symmetrify V where
  obj := φ.obj
  map := Sum.map φ.map φ.map

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Symmetric/Variantd6b4950db462d40039f09b2d4088b9fd74368491a18f32f85c7feb807c63a150.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Symmetric/Variantd6b4950db462d40039f09b2d4088b9fd74368491a18f32f85c7feb807c63a150.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `daeb9d7620254683e9028c563cfc79d3dd07f1d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
