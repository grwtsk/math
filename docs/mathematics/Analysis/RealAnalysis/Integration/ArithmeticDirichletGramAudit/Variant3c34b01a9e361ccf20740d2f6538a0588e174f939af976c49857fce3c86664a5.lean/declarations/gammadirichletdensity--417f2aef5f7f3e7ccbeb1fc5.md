# gammaDirichletDensity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4d44ceff004477bbd86f30f039e233df3d840f83e0e1ad7bb2d5451d429480f2",
  "kind": "def",
  "lexical_name": "gammaDirichletDensity",
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
  "slug": "gammadirichletdensity--417f2aef5f7f3e7ccbeb1fc5",
  "source": {
    "blob": "5a8f813ecc1afdf2e171c9d1d9506c2f3ebda69b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 139,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ArithmeticDirichletGramAudit/Variant3c34b01a9e361ccf20740d2f6538a0588e174f939af976c49857fce3c86664a5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:417f2aef5f7f3e7ccbeb1fc57b6bf6e95ec3ab005e5f9ff844f888d346a3bb36",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ArithmeticDirichletGramAudit/Variant3c34b01a9e361ccf20740d2f6538a0588e174f939af976c49857fce3c86664a5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4d44ceff004477bbd86f30f039e233df3d840f83e0e1ad7bb2d5451d429480f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def gammaDirichletDensity (t : ℝ) : ℝ :=
  Real.exp (-t / 4) / (1 - Real.exp (-t))

/-- The exact Gamma difference-square integrand using the existing phase character. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ArithmeticDirichletGramAudit/Variant3c34b01a9e361ccf20740d2f6538a0588e174f939af976c49857fce3c86664a5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ArithmeticDirichletGramAudit/Variant3c34b01a9e361ccf20740d2f6538a0588e174f939af976c49857fce3c86664a5.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a8f813ecc1afdf2e171c9d1d9506c2f3ebda69b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
