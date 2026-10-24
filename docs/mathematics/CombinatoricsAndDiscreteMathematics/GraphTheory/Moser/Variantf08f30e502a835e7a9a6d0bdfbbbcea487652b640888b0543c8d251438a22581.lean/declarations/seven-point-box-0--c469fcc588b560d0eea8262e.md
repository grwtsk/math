# seven_point_box_0

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ade552c8-e381-c120-f1c2-4220b0b63eaa",
  "kind": "lemma",
  "lexical_name": "seven_point_box_0",
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
  "slug": "seven-point-box-0--c469fcc588b560d0eea8262e",
  "source": {
    "blob": "def128a7751715bce6286ffd953d76a125845d9d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 312,
    "line": 304,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Moser/Variantf08f30e502a835e7a9a6d0bdfbbbcea487652b640888b0543c8d251438a22581.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c469fcc588b560d0eea8262e8183199ba4eff9e967f0fe1071a70294029db4e1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Moser/Variantf08f30e502a835e7a9a6d0bdfbbbcea487652b640888b0543c8d251438a22581.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ade552c8-e381-c120-f1c2-4220b0b63eaa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 304–312.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma seven_point_box_0 :
    |(placedMoser 0).re-certificateX 0|≤(0.00011 : ℝ) ∧
    |(placedMoser 0).im-certificateY 0|≤(0.00011 : ℝ) := by
  obtain ⟨ha,hb,hc,hd⟩ := radical_bounds
  obtain ⟨hp,hq⟩ := radical_product_bounds
  change |(placedMoser 0).re-(-1.2906)|≤0.00011 ∧ |(placedMoser 0).im-(0.1876)|≤0.00011
  norm_num [placedMoser,moserRotation,moserA,moserB,moserT,moserU,
    Complex.mul_re,Complex.mul_im,Complex.div_ofReal_re,Complex.div_ofReal_im,
    Complex.add_re,Complex.add_im,Complex.sub_re,Complex.sub_im]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Moser/Variantf08f30e502a835e7a9a6d0bdfbbbcea487652b640888b0543c8d251438a22581.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Moser/Variantf08f30e502a835e7a9a6d0bdfbbbcea487652b640888b0543c8d251438a22581.lean#L304).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `def128a7751715bce6286ffd953d76a125845d9d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
