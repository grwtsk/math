# dist_indicatorConstLp_eq_norm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b997b4e7-652b-baf3-2ec3-f821a78bd084",
  "kind": "theorem",
  "lexical_name": "dist_indicatorConstLp_eq_norm",
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
  "slug": "dist-indicatorconstlp-eq-norm--b15128f5993dff914b352190",
  "source": {
    "blob": "c769333ba587fd95c632459efecb1e1d55d74e3e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 176,
    "path": "GRWTSK/Topology/GeneralTopology/Indicator/Variantfa96ae5c1547abc489dd2e87c9a5560e08fdcddbe4eafa9fb5841dd398698b18.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b15128f5993dff914b352190adc6da728474d646a4cf0a3bd3f5486d0acc32c7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Indicator/Variantfa96ae5c1547abc489dd2e87c9a5560e08fdcddbe4eafa9fb5841dd398698b18.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b997b4e7-652b-baf3-2ec3-f821a78bd084`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dist_indicatorConstLp_eq_norm {t : Set α} {ht : MeasurableSet t} {hμt : μ t ≠ ∞} :
    dist (indicatorConstLp p hs hμs c) (indicatorConstLp p ht hμt c) =
      ‖indicatorConstLp p (hs.symmDiff ht) (measure_symmDiff_ne_top hμs hμt) c‖ := by
  -- Squeezed for performance reasons
  simp only [Lp.dist_edist, edist_indicatorConstLp_eq_enorm, enorm, ENNReal.coe_toReal,
    Lp.coe_nnnorm]

/-- A family of `indicatorConstLp` functions tends to an `indicatorConstLp`,
if the underlying sets tend to the set in the sense of the measure of the symmetric difference. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Indicator/Variantfa96ae5c1547abc489dd2e87c9a5560e08fdcddbe4eafa9fb5841dd398698b18.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Indicator/Variantfa96ae5c1547abc489dd2e87c9a5560e08fdcddbe4eafa9fb5841dd398698b18.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c769333ba587fd95c632459efecb1e1d55d74e3e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
