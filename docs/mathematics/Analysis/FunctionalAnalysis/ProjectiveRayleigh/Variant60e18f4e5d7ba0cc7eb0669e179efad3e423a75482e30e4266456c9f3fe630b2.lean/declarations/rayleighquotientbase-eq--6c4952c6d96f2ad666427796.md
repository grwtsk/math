# rayleighQuotientBase_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6c5d0ce5-b389-62fd-41ea-cc5f1104eb88",
  "kind": "theorem",
  "lexical_name": "rayleighQuotientBase_eq",
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
  "slug": "rayleighquotientbase-eq--6c4952c6d96f2ad666427796",
  "source": {
    "blob": "651a664aafbfbec4e240080b81a232f6ea036323",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 65,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/ProjectiveRayleigh/Variant60e18f4e5d7ba0cc7eb0669e179efad3e423a75482e30e4266456c9f3fe630b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c4952c6d96f2ad66642779621760e38043addc274672e755e200819cc248d1c",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/ProjectiveRayleigh/Variant60e18f4e5d7ba0cc7eb0669e179efad3e423a75482e30e4266456c9f3fe630b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c5d0ce5-b389-62fd-41ea-cc5f1104eb88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rayleighQuotientBase_eq (A : H →L[ℂ] H) (v : H) :
    rayleighQuotientBase A v = RCLike.re (inner ℂ v (A v)) / ‖v‖ ^ 2 :=
  rfl

/-- The manuscript formula is exactly mathlib's bundled Rayleigh quotient. -/
@[surface_adapter, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/ProjectiveRayleigh/Variant60e18f4e5d7ba0cc7eb0669e179efad3e423a75482e30e4266456c9f3fe630b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/ProjectiveRayleigh/Variant60e18f4e5d7ba0cc7eb0669e179efad3e423a75482e30e4266456c9f3fe630b2.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `651a664aafbfbec4e240080b81a232f6ea036323` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
