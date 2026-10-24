# isIntegralCurve_Ioo_eq_of_contMDiff_boundaryless

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4a5ae428d670778e4c6ff4b6faea75fbfa5fd94c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 244,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8f/8f46f243a14584e33c533c884cddb2f2f34e31fa992555ccc7940194e97f9ee9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9855fd07-7eb3-ffbb-958f-512d41acff36",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1c786432-e7f5-7fe5-bb3b-80db81e0b884",
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
  "slug": "isintegralcurve-ioo-eq-of-contmdiff-boundaryless--07079305c78725264d110e86",
  "source": {
    "blob": "4a5ae428d670778e4c6ff4b6faea75fbfa5fd94c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 244,
    "path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/ExistUnique/Variant8f46f243a14584e33c533c884cddb2f2f34e31fa992555ccc7940194e97f9ee9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:07079305c78725264d110e865572e1f2d1ebfaa6c51a5582675372914b57ee59",
  "verification": {
    "reference": "docs/verification/DifferentialEquationsAndDynamicalSystems/ExistUnique/Variant8f46f243a14584e33c533c884cddb2f2f34e31fa992555ccc7940194e97f9ee9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c786432-e7f5-7fe5-bb3b-80db81e0b884`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 244–250.

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

[Verification target and public status](../../../../../verification/DifferentialEquationsAndDynamicalSystems/ExistUnique/Variant8f46f243a14584e33c533c884cddb2f2f34e31fa992555ccc7940194e97f9ee9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/DifferentialEquationsAndDynamicalSystems/ExistUnique/Variant8f46f243a14584e33c533c884cddb2f2f34e31fa992555ccc7940194e97f9ee9.lean#L244).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a5ae428d670778e4c6ff4b6faea75fbfa5fd94c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
