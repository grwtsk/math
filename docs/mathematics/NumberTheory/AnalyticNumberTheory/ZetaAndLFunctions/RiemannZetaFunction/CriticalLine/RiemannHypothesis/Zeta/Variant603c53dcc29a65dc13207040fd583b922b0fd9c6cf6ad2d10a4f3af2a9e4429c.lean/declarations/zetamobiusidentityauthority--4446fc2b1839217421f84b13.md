# ZetaMobiusIdentityAuthority

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:47920cab509a1f9b70d166c4f216da04b90c7fc93da4ed49833793b3b98456f9",
  "kind": "structure",
  "lexical_name": "ZetaMobiusIdentityAuthority",
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
  "slug": "zetamobiusidentityauthority--4446fc2b1839217421f84b13",
  "source": {
    "blob": "d1eb050ce334b7a3db20a98ce4904956bd319e95",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 32,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Zeta/Variant603c53dcc29a65dc13207040fd583b922b0fd9c6cf6ad2d10a4f3af2a9e4429c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4446fc2b1839217421f84b133342b68c6aa3009f6acec485a60844cb4ba92225",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Zeta/Variant603c53dcc29a65dc13207040fd583b922b0fd9c6cf6ad2d10a4f3af2a9e4429c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:47920cab509a1f9b70d166c4f216da04b90c7fc93da4ed49833793b3b98456f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ZetaMobiusIdentityAuthority where
  domain : HalfPlane
  zeta : ZetaSymbol
  mobiusSeries : DirichletSeries
  reGreaterThanOne : Prop
  reGreaterThanOneProof : reGreaterThanOne
  absoluteConvergence : Prop
  absoluteConvergenceProof : absoluteConvergence
  cauchyProductSound : Prop
  cauchyProductProof : cauchyProductSound
  zetaMobiusIdentitySound : Prop
  zetaMobiusIdentityProof : zetaMobiusIdentitySound

/-- Authority for meromorphic continuation and functional equation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Zeta/Variant603c53dcc29a65dc13207040fd583b922b0fd9c6cf6ad2d10a4f3af2a9e4429c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Zeta/Variant603c53dcc29a65dc13207040fd583b922b0fd9c6cf6ad2d10a4f3af2a9e4429c.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1eb050ce334b7a3db20a98ce4904956bd319e95` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
