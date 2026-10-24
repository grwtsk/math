# edist_equiv_symm_snd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b0b9d55d-8e2f-de5e-9e66-a8ca808fefc7",
  "kind": "theorem",
  "lexical_name": "edist_equiv_symm_snd",
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
  "slug": "edist-equiv-symm-snd--4c94c6e91841021e9ef5871c",
  "source": {
    "blob": "cf4720acd0f4b17bcca0c3e4789876dab1594314",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 836,
    "line": 827,
    "path": "GRWTSK/Topology/MetricTopology/ProdLp/Variant15e00dbde866952369ef76bf2f3d6f85f76f68fcf5f8fdc96b63a24fc57b8bc2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c94c6e91841021e9ef5871cba9a3707a4f24d2305ddfcd3558e8b046cc21e6c",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/ProdLp/Variant15e00dbde866952369ef76bf2f3d6f85f76f68fcf5f8fdc96b63a24fc57b8bc2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b0b9d55d-8e2f-de5e-9e66-a8ca808fefc7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 827–836.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem edist_equiv_symm_snd (y₁ y₂ : β) :
    edist ((WithLp.equiv p (α × β)).symm (0, y₁)) ((WithLp.equiv p (α × β)).symm (0, y₂)) =
      edist y₁ y₂ := by
  simp only [edist_nndist, nndist_equiv_symm_snd p α β y₁ y₂]

end Single

section IsBoundedSMul
variable [SeminormedRing 𝕜] [Module 𝕜 α] [Module 𝕜 β] [IsBoundedSMul 𝕜 α] [IsBoundedSMul 𝕜 β]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/ProdLp/Variant15e00dbde866952369ef76bf2f3d6f85f76f68fcf5f8fdc96b63a24fc57b8bc2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/ProdLp/Variant15e00dbde866952369ef76bf2f3d6f85f76f68fcf5f8fdc96b63a24fc57b8bc2.lean#L827).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf4720acd0f4b17bcca0c3e4789876dab1594314` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
