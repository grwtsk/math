# isIntegralCurve_Ioo_eq_of_contMDiff_boundaryless

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f64a36ca-860e-c0e7-4e97-f6ba08f83af7",
  "kind": "theorem",
  "lexical_name": "isIntegralCurve_Ioo_eq_of_contMDiff_boundaryless",
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
  "slug": "isintegralcurve-ioo-eq-of-contmdiff-boundaryless--d0d91260206af50787716bdb",
  "source": {
    "blob": "f93ba6e2823290bf798f10c92117ce680fa161d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 258,
    "line": 252,
    "path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/ExistUnique/Variante08a315faae14ffc209d27a881b162baa21a77c90ba0e305affceeee3a1a89b0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d0d91260206af50787716bdb412513d783bc74f86e47f4122eee7d00c09a0db7",
  "verification": {
    "reference": "docs/verification/DifferentialEquationsAndDynamicalSystems/ExistUnique/Variante08a315faae14ffc209d27a881b162baa21a77c90ba0e305affceeee3a1a89b0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f64a36ca-860e-c0e7-4e97-f6ba08f83af7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 252–258.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isIntegralCurve_Ioo_eq_of_contMDiff_boundaryless [BoundarylessManifold I M]
    (hv : ContMDiff I I.tangent 1 (fun x ↦ (⟨x, v x⟩ : TangentBundle I M)))
    (hγ : IsIntegralCurve γ v) (hγ' : IsIntegralCurve γ' v) (h : γ t₀ = γ' t₀) : γ = γ' :=
  isIntegralCurve_eq_of_contMDiff (fun _ ↦ BoundarylessManifold.isInteriorPoint) hv hγ hγ' h

/-- For a global integral curve `γ`, if it crosses itself at `a b : ℝ`, then it is periodic with
period `a - b`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/DifferentialEquationsAndDynamicalSystems/ExistUnique/Variante08a315faae14ffc209d27a881b162baa21a77c90ba0e305affceeee3a1a89b0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/DifferentialEquationsAndDynamicalSystems/ExistUnique/Variante08a315faae14ffc209d27a881b162baa21a77c90ba0e305affceeee3a1a89b0.lean#L252).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f93ba6e2823290bf798f10c92117ce680fa161d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
