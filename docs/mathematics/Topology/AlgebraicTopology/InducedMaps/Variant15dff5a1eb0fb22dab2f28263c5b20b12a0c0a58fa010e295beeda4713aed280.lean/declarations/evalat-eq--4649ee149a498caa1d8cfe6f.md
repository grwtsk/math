# evalAt_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:56e92d83-25cc-6555-a051-310edb7501ca",
  "kind": "theorem",
  "lexical_name": "evalAt_eq",
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
  "slug": "evalat-eq--4649ee149a498caa1d8cfe6f",
  "source": {
    "blob": "f8f221fb4dc2dba0001fd7b22fce06af72d14316",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 258,
    "path": "GRWTSK/Topology/AlgebraicTopology/InducedMaps/Variant15dff5a1eb0fb22dab2f28263c5b20b12a0c0a58fa010e295beeda4713aed280.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4649ee149a498caa1d8cfe6fef51786fccdfb20a34e7f35c4b63fe2ed7e9ff86",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/InducedMaps/Variant15dff5a1eb0fb22dab2f28263c5b20b12a0c0a58fa010e295beeda4713aed280.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:56e92d83-25cc-6555-a051-310edb7501ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 258–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem evalAt_eq (x : X) : ⟦H.evalAt x⟧ = hcast (H.apply_zero x).symm ≫
    (πₘ (TopCat.ofHom H.uliftMap)).map (prodToProdTopI uhpath01 (𝟙 (fromTop x))) ≫
      hcast (H.apply_one x).symm.symm := by
  dsimp only [prodToProdTopI, uhpath01, hcast]
  refine (@conj_eqToHom_iff_heq (πₓ Y) _ _ _ _ _ _ _ _
    (FundamentalGroupoid.ext <| H.apply_one x).symm).mpr ?_
  simp only [map_eq]
  apply Path.Homotopic.hpath_hext; intro; rfl

set_option backward.isDefEq.respectTransparency false in
-- Finally, we show `d = f(p) ≫ H₁ = H₀ ≫ g(p)`
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/InducedMaps/Variant15dff5a1eb0fb22dab2f28263c5b20b12a0c0a58fa010e295beeda4713aed280.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/InducedMaps/Variant15dff5a1eb0fb22dab2f28263c5b20b12a0c0a58fa010e295beeda4713aed280.lean#L258).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8f221fb4dc2dba0001fd7b22fce06af72d14316` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
