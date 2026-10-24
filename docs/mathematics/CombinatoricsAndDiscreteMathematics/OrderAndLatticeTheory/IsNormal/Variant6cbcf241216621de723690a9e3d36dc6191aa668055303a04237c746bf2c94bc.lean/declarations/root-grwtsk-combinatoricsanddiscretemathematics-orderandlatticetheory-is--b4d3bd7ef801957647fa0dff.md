# _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.IsNormal.Variant4b279a48c30e1dd1c2ec659fd882568a7b7946e593ce92e25b38424455fbbdb8.InitialSeg.isNormal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:136a4213-f020-dc3b-61f2-5d70ea155577",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.IsNormal.Variant4b279a48c30e1dd1c2ec659fd882568a7b7946e593ce92e25b38424455fbbdb8.InitialSeg.isNormal",
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
  "slug": "root-grwtsk-combinatoricsanddiscretemathematics-orderandlatticetheory-is--b4d3bd7ef801957647fa0dff",
  "source": {
    "blob": "dd4f98ba621877b50d94e57076e148815c4ab131",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 104,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IsNormal/Variant6cbcf241216621de723690a9e3d36dc6191aa668055303a04237c746bf2c94bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4d3bd7ef801957647fa0dffb7e771665c8bc587c8a50bcd00d77e30b82ffe49",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IsNormal/Variant6cbcf241216621de723690a9e3d36dc6191aa668055303a04237c746bf2c94bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:136a4213-f020-dc3b-61f2-5d70ea155577`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.IsNormal.Variant4b279a48c30e1dd1c2ec659fd882568a7b7946e593ce92e25b38424455fbbdb8.InitialSeg.isNormal (f : α ≤i β) : IsNormal f where
  strictMono := f.strictMono
  isLUB_image_Iio_of_isSuccLimit ha := by
    rw [f.image_Iio]
    exact (f.map_isSuccLimit ha).isLUB_Iio

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IsNormal/Variant6cbcf241216621de723690a9e3d36dc6191aa668055303a04237c746bf2c94bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IsNormal/Variant6cbcf241216621de723690a9e3d36dc6191aa668055303a04237c746bf2c94bc.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd4f98ba621877b50d94e57076e148815c4ab131` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
