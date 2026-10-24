# _root_.GRWTSK.Algebra.UniversalAlgebra.NNReal.Variant3b496e594aab1e1eaf0fece91032e04ee0def254b9a9b38030c6fd21a140d5a4.Real.toNNReal_div'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9c808225-a439-5fa4-6bc5-c6bfc880c0ac",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.UniversalAlgebra.NNReal.Variant3b496e594aab1e1eaf0fece91032e04ee0def254b9a9b38030c6fd21a140d5a4.Real.toNNReal_div'",
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
  "slug": "root-grwtsk-algebra-universalalgebra-nnreal-variant3b496e594aab1e1eaf0fe--6b3e8090ca6c89ddbddbbf93",
  "source": {
    "blob": "7acbad55337a121b30a6450e8cb15e8fc47fc96f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 794,
    "line": 791,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Defs/Variant6b3cd58031369be4b15750dc7263ca63e37c25c43f6f46ae7d6a39585ede46b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b3e8090ca6c89ddbddbbf934c7600014cc87656873e4406ac55133b429e53c2",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Defs/Variant6b3cd58031369be4b15750dc7263ca63e37c25c43f6f46ae7d6a39585ede46b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9c808225-a439-5fa4-6bc5-c6bfc880c0ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 791–794.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.UniversalAlgebra.NNReal.Variant3b496e594aab1e1eaf0fece91032e04ee0def254b9a9b38030c6fd21a140d5a4.Real.toNNReal_div' {x y : ℝ} (hy : 0 ≤ y) :
    Real.toNNReal (x / y) = Real.toNNReal x / Real.toNNReal y := by
  rw [div_eq_inv_mul, div_eq_inv_mul, Real.toNNReal_mul (inv_nonneg.2 hy), Real.toNNReal_inv]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Defs/Variant6b3cd58031369be4b15750dc7263ca63e37c25c43f6f46ae7d6a39585ede46b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Defs/Variant6b3cd58031369be4b15750dc7263ca63e37c25c43f6f46ae7d6a39585ede46b8.lean#L791).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7acbad55337a121b30a6450e8cb15e8fc47fc96f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
