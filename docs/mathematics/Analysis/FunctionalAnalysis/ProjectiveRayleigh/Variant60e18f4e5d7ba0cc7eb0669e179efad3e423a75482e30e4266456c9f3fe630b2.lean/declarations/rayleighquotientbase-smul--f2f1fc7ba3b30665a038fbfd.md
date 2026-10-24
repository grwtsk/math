# rayleighQuotientBase_smul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0ac3d315-e126-a437-247a-95b7c1ffe88d",
  "kind": "theorem",
  "lexical_name": "rayleighQuotientBase_smul",
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
  "slug": "rayleighquotientbase-smul--f2f1fc7ba3b30665a038fbfd",
  "source": {
    "blob": "651a664aafbfbec4e240080b81a232f6ea036323",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 78,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/ProjectiveRayleigh/Variant60e18f4e5d7ba0cc7eb0669e179efad3e423a75482e30e4266456c9f3fe630b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2f1fc7ba3b30665a038fbfd62c407e4845b6047764b3978bdefbb2900f11213",
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

Occurrence: `result:0ac3d315-e126-a437-247a-95b7c1ffe88d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rayleighQuotientBase_smul (A : H →L[ℂ] H) (v : H) {c : ℂ}
    (hc : c ≠ 0) :
    rayleighQuotientBase A (c • v) = rayleighQuotientBase A v :=
  by
    simpa only [rayleighQuotientBase_eq_mathlib] using A.rayleigh_smul v hc

/--
The Rayleigh quotient on complex projective space.  The use of
`Projectivization.lift` makes scale independence part of the definition's
kernel-checked well-definedness obligation.
-/
@[expose, surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/ProjectiveRayleigh/Variant60e18f4e5d7ba0cc7eb0669e179efad3e423a75482e30e4266456c9f3fe630b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/ProjectiveRayleigh/Variant60e18f4e5d7ba0cc7eb0669e179efad3e423a75482e30e4266456c9f3fe630b2.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `651a664aafbfbec4e240080b81a232f6ea036323` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
