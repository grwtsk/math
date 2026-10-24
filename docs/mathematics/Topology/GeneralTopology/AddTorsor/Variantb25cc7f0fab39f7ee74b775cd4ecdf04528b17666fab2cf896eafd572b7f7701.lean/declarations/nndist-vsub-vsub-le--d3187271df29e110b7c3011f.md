# nndist_vsub_vsub_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3ec77ae2-8222-3457-4d6c-ffc419608419",
  "kind": "theorem",
  "lexical_name": "nndist_vsub_vsub_le",
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
  "slug": "nndist-vsub-vsub-le--d3187271df29e110b7c3011f",
  "source": {
    "blob": "61c50c3373e7a00ad220da4766eb6143b6509407",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 194,
    "path": "GRWTSK/Topology/GeneralTopology/AddTorsor/Variantb25cc7f0fab39f7ee74b775cd4ecdf04528b17666fab2cf896eafd572b7f7701.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d3187271df29e110b7c3011f9f4742eb937dcc66e89ca4c918d4206f77b9f29f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/AddTorsor/Variantb25cc7f0fab39f7ee74b775cd4ecdf04528b17666fab2cf896eafd572b7f7701.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ec77ae2-8222-3457-4d6c-ffc419608419`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nndist_vsub_vsub_le (p₁ p₂ p₃ p₄ : P) :
    nndist (p₁ -ᵥ p₂) (p₃ -ᵥ p₄) ≤ nndist p₁ p₃ + nndist p₂ p₄ := by
  -- porting note: added `()` to help simp find a `@[simp]` lemma
  simp only [← NNReal.coe_le_coe, NNReal.coe_add, ← dist_nndist, (dist_vsub_vsub_le)]
#align nndist_vsub_vsub_le nndist_vsub_vsub_le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/AddTorsor/Variantb25cc7f0fab39f7ee74b775cd4ecdf04528b17666fab2cf896eafd572b7f7701.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/AddTorsor/Variantb25cc7f0fab39f7ee74b775cd4ecdf04528b17666fab2cf896eafd572b7f7701.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61c50c3373e7a00ad220da4766eb6143b6509407` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
