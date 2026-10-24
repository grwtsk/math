# finiteDimensional_direction_affineSpan_image_of_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:517fed74d2112b1a34fb448de36d659a90dc59532f0398dc7108f39b32e0b5d7",
  "kind": "instance",
  "lexical_name": "finiteDimensional_direction_affineSpan_image_of_finite",
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
  "slug": "finitedimensional-direction-affinespan-image-of-finite--acb5554ce292c86892243428",
  "source": {
    "blob": "a39e7887d57f2c1ce6678a6f63ce7405b2854bb5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 101,
    "line": 96,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteDimensional/Variant5bbe6a7f314a2cd50d30acade04d58508e5996ec442b6105bd63602809d5df65.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:acb5554ce292c8689224342814f0acff840a277e14999616faef67dbd8f4245a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FiniteDimensional/Variant5bbe6a7f314a2cd50d30acade04d58508e5996ec442b6105bd63602809d5df65.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:517fed74d2112b1a34fb448de36d659a90dc59532f0398dc7108f39b32e0b5d7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–101.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance finiteDimensional_direction_affineSpan_image_of_finite [Finite ι] (p : ι → P) (s : Set ι) :
    FiniteDimensional k (affineSpan k (p '' s)).direction :=
  finiteDimensional_direction_affineSpan_of_finite k (Set.toFinite _)

/-- An affine-independent family of points `p` generates a finite-dimensional subspace iff `p` is
finite. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FiniteDimensional/Variant5bbe6a7f314a2cd50d30acade04d58508e5996ec442b6105bd63602809d5df65.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteDimensional/Variant5bbe6a7f314a2cd50d30acade04d58508e5996ec442b6105bd63602809d5df65.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a39e7887d57f2c1ce6678a6f63ce7405b2854bb5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
