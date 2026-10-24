# infty_equiv_isometry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0154922c-7cff-1871-fe0c-4d73bd8927be",
  "kind": "theorem",
  "lexical_name": "infty_equiv_isometry",
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
  "slug": "infty-equiv-isometry--7d476d6e3e1c36c0c571a578",
  "source": {
    "blob": "0c107415cf7cea70f9788cccb8e7a2f52584748a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 538,
    "line": 528,
    "path": "GRWTSK/Topology/MetricTopology/PiLp/Variant6daef438e8f3afdf812181cc0f2c7db96e9a5e1356e52bc6d6601629d8c040c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d476d6e3e1c36c0c571a5789050a930e9cb686ed1e51fa2a39f0be66d2986bf",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/PiLp/Variant6daef438e8f3afdf812181cc0f2c7db96e9a5e1356e52bc6d6601629d8c040c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0154922c-7cff-1871-fe0c-4d73bd8927be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 528–538.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem infty_equiv_isometry [∀ i, PseudoEMetricSpace (β i)] :
    Isometry (WithLp.equiv ∞ (∀ i, β i)) :=
  fun x y =>
  le_antisymm (by simpa only [ENNReal.coe_one, one_mul] using lipschitzWith_equiv ∞ β x y)
    (by
      simpa only [ENNReal.div_top, ENNReal.zero_toReal, NNReal.rpow_zero, ENNReal.coe_one,
        one_mul] using antilipschitzWith_equiv ∞ β x y)
#align pi_Lp.infty_equiv_isometry PiLp.infty_equiv_isometry

/-- seminormed group instance on the product of finitely many normed groups, using the `L^p`
norm. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/PiLp/Variant6daef438e8f3afdf812181cc0f2c7db96e9a5e1356e52bc6d6601629d8c040c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/PiLp/Variant6daef438e8f3afdf812181cc0f2c7db96e9a5e1356e52bc6d6601629d8c040c0.lean#L528).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c107415cf7cea70f9788cccb8e7a2f52584748a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
