# ReflectedRegionalZeroBound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a8f40cab5b891ac8c0ea9db0b44733b6a2fb20150276d259072a7c3dd1bfb22d",
  "kind": "structure",
  "lexical_name": "ReflectedRegionalZeroBound",
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
  "slug": "reflectedregionalzerobound--fa2cf47c33b2852d08e39510",
  "source": {
    "blob": "dfba6ca8f82e1b12ab4248e8c6b4541e86955f5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 512,
    "line": 506,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/SevenEighthsMechanismQuarticBridge.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fa2cf47c33b2852d08e3951010b4a5ff65ee5d299162f66485a32d9edac77006",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/SevenEighthsMechanismQuarticBridge.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a8f40cab5b891ac8c0ea9db0b44733b6a2fb20150276d259072a7c3dd1bfb22d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 506–512.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ReflectedRegionalZeroBound (σ : ℝ) where
  zeroFree : RiemannZetaZeroFreeRightHalfPlane σ
  reflectedLower :
    ∀ s : ℂ, NontrivialZetaZero s → 1 - σ ≤ s.re

/-- At seven eighths, reflection-symmetric regional control confines the
centered horizontal coordinate to `|re(s)-1/2| ≤ 3/8`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/SevenEighthsMechanismQuarticBridge.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/SevenEighthsMechanismQuarticBridge.lean#L506).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dfba6ca8f82e1b12ab4248e8c6b4541e86955f5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
