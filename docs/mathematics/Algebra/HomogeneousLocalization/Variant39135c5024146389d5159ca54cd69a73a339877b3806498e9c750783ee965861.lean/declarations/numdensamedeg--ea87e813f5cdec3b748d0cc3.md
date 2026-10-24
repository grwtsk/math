# NumDenSameDeg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1af3ff7bf8d56743901cea18fe29f7eee03d21bff33bc1fca0b102b1687f72c3",
  "kind": "structure",
  "lexical_name": "NumDenSameDeg",
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
  "slug": "numdensamedeg--ea87e813f5cdec3b748d0cc3",
  "source": {
    "blob": "1b4865fd3fbb95a915a4df658da55c75fbfdc158",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 100,
    "path": "GRWTSK/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ea87e813f5cdec3b748d0cc37d04ace5a0a1194da5ab36395f16f6153b7e2c43",
  "verification": {
    "reference": "docs/verification/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1af3ff7bf8d56743901cea18fe29f7eee03d21bff33bc1fca0b102b1687f72c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure NumDenSameDeg where
  deg : ι
  (num den : 𝒜 deg)
  den_mem : (den : A) ∈ x
#align homogeneous_localization.num_denom_same_deg HomogeneousLocalization.NumDenSameDeg

end

namespace NumDenSameDeg

open SetLike.GradedMonoid Submodule

variable {𝒜}

@[ext]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/HomogeneousLocalization/Variant39135c5024146389d5159ca54cd69a73a339877b3806498e9c750783ee965861.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b4865fd3fbb95a915a4df658da55c75fbfdc158` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
