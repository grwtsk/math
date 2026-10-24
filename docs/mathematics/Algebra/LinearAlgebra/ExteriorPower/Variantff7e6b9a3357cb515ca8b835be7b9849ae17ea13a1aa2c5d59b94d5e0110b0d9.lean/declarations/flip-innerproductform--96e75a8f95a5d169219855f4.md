# flip_innerProductForm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eed33239-a271-381f-f201-c888d8973d0e",
  "kind": "lemma",
  "lexical_name": "flip_innerProductForm",
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
  "slug": "flip-innerproductform--96e75a8f95a5d169219855f4",
  "source": {
    "blob": "7e6b8e8ef0a495b08c1227945cf158f6e4520c78",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 72,
    "path": "GRWTSK/Algebra/LinearAlgebra/ExteriorPower/Variantff7e6b9a3357cb515ca8b835be7b9849ae17ea13a1aa2c5d59b94d5e0110b0d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:96e75a8f95a5d169219855f4a40d49405a78b097dbb09af08f3640e4038101a0",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/ExteriorPower/Variantff7e6b9a3357cb515ca8b835be7b9849ae17ea13a1aa2c5d59b94d5e0110b0d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eed33239-a271-381f-f201-c888d8973d0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma flip_innerProductForm :
    (innerProductForm (E := E) (n := n)).flip = innerProductForm := by
  apply linearMap_ext
  ext
  simp only [LinearMap.compAlternatingMap_apply, LinearMap.flip_apply,
    innerProductForm_ιMulti_ιMulti]
  rw [← Matrix.det_transpose]
  congr 1
  ext
  exact real_inner_comm _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/ExteriorPower/Variantff7e6b9a3357cb515ca8b835be7b9849ae17ea13a1aa2c5d59b94d5e0110b0d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/ExteriorPower/Variantff7e6b9a3357cb515ca8b835be7b9849ae17ea13a1aa2c5d59b94d5e0110b0d9.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7e6b8e8ef0a495b08c1227945cf158f6e4520c78` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
