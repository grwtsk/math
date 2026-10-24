# spectral_stability

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a826e78364e1cefc2fec2cc59d1f873901ed8e03",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 183,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/14/1434f0c89cfc4da9321a203a472c16899fcb178c0b4db2e2e68166eef974ba4b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:50108a69-30ae-0776-498a-8224c8b1633f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6a048b58-7919-31ad-c522-ab8e36c30915",
  "kind": "theorem",
  "lexical_name": "spectral_stability",
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
  "slug": "spectral-stability--ea8c9f08dc0cad53483b8dcd",
  "source": {
    "blob": "a826e78364e1cefc2fec2cc59d1f873901ed8e03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 183,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variant1434f0c89cfc4da9321a203a472c16899fcb178c0b4db2e2e68166eef974ba4b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea8c9f08dc0cad53483b8dcdcfe6137105819078bb29ebe6d9a286caad34627f",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variant1434f0c89cfc4da9321a203a472c16899fcb178c0b4db2e2e68166eef974ba4b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6a048b58-7919-31ad-c522-ab8e36c30915`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem spectral_stability
    (layer : AnalyticLayer A B algebra diffuser transport)
    (x y : B) :
    diffuser.graphNorm (layer.candidate x - layer.candidate y) ≤
      layer.stabilityFactor * diffuser.graphNorm (x - y) := by
  have hnonlinear :=
    layer.nonlinearity.lipschitz
      (diffuser.step layer.diffusionTime
        (transport.paired layer.kernel x))
      (diffuser.step layer.diffusionTime
        (transport.paired layer.kernel y))
  have hdiff :
      diffuser.step layer.diffusionTime
          (transport.paired layer.kernel x) -
        diffuser.step layer.diffusionTime
          (transport.paired layer.kernel y) =
      diffuser.step layer.diffusionTime
        (transport.paired layer.kernel (x - y)) := by
    simp
  rw [hdiff] at hnonlinear
  have hdiffuser :=
    diffuser.analytic_bound layer.diffusionTime
      layer.diffusionTime_nonnegative
      (transport.paired layer.kernel (x - y))
  have htransport :=
    transport.paired_graph_bound layer.kernel (x - y)
  calc
    diffuser.graphNorm (layer.candidate x - layer.candidate y)
        ≤ layer.nonlinearity.lipschitzConstant *
            diffuser.graphNorm
              (diffuser.step layer.diffusionTime
                (transport.paired layer.kernel (x - y))) := hnonlinear
    _ ≤ layer.nonlinearity.lipschitzConstant *
          (diffuser.factor layer.diffusionTime *
            diffuser.graphNorm (transport.paired layer.kernel (x - y))) := by
          exact mul_le_mul_of_nonneg_left hdiffuser
            layer.nonlinearity.lipschitzConstant_nonnegative
    _ ≤ layer.nonlinearity.lipschitzConstant *
          (diffuser.factor layer.diffusionTime *
            (transport.transportSize layer.kernel *
              diffuser.graphNorm (x - y))) := by
          exact mul_le_mul_of_nonneg_left
            (mul_le_mul_of_nonneg_left htransport
              (diffuser.factor_nonnegative layer.diffusionTime))
            layer.nonlinearity.lipschitzConstant_nonnegative
    _ = layer.stabilityFactor * diffuser.graphNorm (x - y) := by
          simp [LinearDiffuser.factor, stabilityFactor]
          ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variant1434f0c89cfc4da9321a203a472c16899fcb178c0b4db2e2e68166eef974ba4b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Transport/Variant1434f0c89cfc4da9321a203a472c16899fcb178c0b4db2e2e68166eef974ba4b.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a826e78364e1cefc2fec2cc59d1f873901ed8e03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
