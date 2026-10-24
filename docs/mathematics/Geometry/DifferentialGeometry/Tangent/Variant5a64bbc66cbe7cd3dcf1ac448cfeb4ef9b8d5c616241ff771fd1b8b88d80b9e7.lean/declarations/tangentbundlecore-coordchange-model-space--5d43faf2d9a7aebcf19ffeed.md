# tangentBundleCore_coordChange_model_space

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "934fab2dbf638b2530ee925d6b60e4b199bd04f4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 388,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5a/5a64bbc66cbe7cd3dcf1ac448cfeb4ef9b8d5c616241ff771fd1b8b88d80b9e7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d894accd-0682-f9fc-0b52-69767e80781d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:102272e4-64fd-7743-7dce-d8d88f753c05",
  "kind": "theorem",
  "lexical_name": "tangentBundleCore_coordChange_model_space",
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
  "slug": "tangentbundlecore-coordchange-model-space--5d43faf2d9a7aebcf19ffeed",
  "source": {
    "blob": "934fab2dbf638b2530ee925d6b60e4b199bd04f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 396,
    "line": 388,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Tangent/Variant5a64bbc66cbe7cd3dcf1ac448cfeb4ef9b8d5c616241ff771fd1b8b88d80b9e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5d43faf2d9a7aebcf19ffeed52d760e070f34775a763f736ee6512a6b883a9b4",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Tangent/Variant5a64bbc66cbe7cd3dcf1ac448cfeb4ef9b8d5c616241ff771fd1b8b88d80b9e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:102272e4-64fd-7743-7dce-d8d88f753c05`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 388–396.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tangentBundleCore_coordChange_model_space (x x' z : H) :
    (tangentBundleCore I H).coordChange (achart H x) (achart H x') z =
    ContinuousLinearMap.id 𝕜 E := by
  ext v; exact (tangentBundleCore I H).coordChange_self (achart _ z) z (mem_univ _) v

set_option backward.isDefEq.respectTransparency false in
variable (I) in
/-- The canonical identification between the tangent bundle to the model space and the product,
as a homeomorphism. For the diffeomorphism version, see `tangentBundleModelSpaceDiffeomorph`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Tangent/Variant5a64bbc66cbe7cd3dcf1ac448cfeb4ef9b8d5c616241ff771fd1b8b88d80b9e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Tangent/Variant5a64bbc66cbe7cd3dcf1ac448cfeb4ef9b8d5c616241ff771fd1b8b88d80b9e7.lean#L388).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `934fab2dbf638b2530ee925d6b60e4b199bd04f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
