# actualXiSevenReturn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:64dd87c05c0e30641990c2a7a1d497f5af7058c1d58987e2a38533e3ed6b691b",
  "kind": "def",
  "lexical_name": "actualXiSevenReturn",
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
  "slug": "actualxisevenreturn--c9a0299192e949e919158860",
  "source": {
    "blob": "a7da48439e505516d7089c69e59edb2f6480adb4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 40,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Attempt06/Variante1d6330e29e7d51d7cd99367ff8d837e30bc5deeca2d6e1b40cc4c8691f5b6c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c9a0299192e949e9191588606b4a19832ceff8a7bbb2952957bc38000b7cc0e5",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Attempt06/Variante1d6330e29e7d51d7cd99367ff8d837e30bc5deeca2d6e1b40cc4c8691f5b6c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:64dd87c05c0e30641990c2a7a1d497f5af7058c1d58987e2a38533e3ed6b691b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def actualXiSevenReturn (s : ℂ) : ℂ :=
  -deriv riemannZeta s / riemannZeta s - actualClosedMangoldtMellinHeadSeven s +
    ((Chebyshev.psi 7 + 2 * (Real.eulerMascheroniConstant + 1 - Real.log 2) : ℝ) : ℂ) *
      (7 : ℂ) ^ (-s) - s * (7 : ℂ) ^ (1 - s) / (s - 1)

/-- The same complete return is regularized at one using authentic source derivatives. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Attempt06/Variante1d6330e29e7d51d7cd99367ff8d837e30bc5deeca2d6e1b40cc4c8691f5b6c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Attempt06/Variante1d6330e29e7d51d7cd99367ff8d837e30bc5deeca2d6e1b40cc4c8691f5b6c0.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7da48439e505516d7089c69e59edb2f6480adb4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
