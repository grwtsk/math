# poleRemoved_ne_zero_of_extension

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:adf005be-cdb1-6af2-3ab8-6b4bb75b9cd2",
  "kind": "theorem",
  "lexical_name": "poleRemoved_ne_zero_of_extension",
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
  "slug": "poleremoved-ne-zero-of-extension--1bcd1f11ecff24cf170b3194",
  "source": {
    "blob": "402bc84e485c2800cc0e487bc99d7e5a92fc11a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 60,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LogDerivativeZeroExclusion/Variant417ab94241fa94f97e673c275929e3c00d528b7501442633a375e0f228490936.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1bcd1f11ecff24cf170b3194efc0ade1c1a9dc55eb2bda3e975ffa61f69855b3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LogDerivativeZeroExclusion/Variant417ab94241fa94f97e673c275929e3c00d528b7501442633a375e0f228490936.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:adf005be-cdb1-6af2-3ab8-6b4bb75b9cd2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem poleRemoved_ne_zero_of_extension {F : ℂ → ℂ}
    (hhol : DifferentiableOn ℂ F halfPlane)
    (hEuler : ∀ s : ℂ, 1<s.re →
      F s=-(deriv riemannZeta s)/riemannZeta s-1/(s-1)) :
    ∀ s ∈ halfPlane, poleRemoved s ≠ 0 := by
  have hFa := hhol.analyticOnNhd halfPlane_open
  apply nonvanishing halfPlane_open halfPlane_preconnected poleRemoved_analyticOn
    (show AnalyticOnNhd ℂ (fun s => -F s) halfPlane from
      fun s hs => (hFa s hs).neg) one_mem_halfPlane
    (show poleRemoved 1 ≠ 0 by rw [poleRemoved_one]; exact one_ne_zero)
  exact ode_on_halfPlane hhol hEuler

/-- Explicit right-half-plane zero exclusion; 1 is excluded from zeta's reading. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LogDerivativeZeroExclusion/Variant417ab94241fa94f97e673c275929e3c00d528b7501442633a375e0f228490936.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LogDerivativeZeroExclusion/Variant417ab94241fa94f97e673c275929e3c00d528b7501442633a375e0f228490936.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `402bc84e485c2800cc0e487bc99d7e5a92fc11a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
