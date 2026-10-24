# normalizedResidueCircleIntegral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:01b4f77405e302f0abfb8465615e01b5f601140ddb44bb59079ab007ae2fdbcc",
  "kind": "def",
  "lexical_name": "normalizedResidueCircleIntegral",
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
  "slug": "normalizedresiduecircleintegral--6b4522c24303eacc88226e62",
  "source": {
    "blob": "64409ba64c29a8143ac2572cc69651c0a170763b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 38,
    "path": "GRWTSK/Analysis/ComplexAnalysis/PrincipalPart/Variant7b24ef12380c3a11b2111b76fb9bf5642be10cc3e9ac8eccd7c2d06b2a2342bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6b4522c24303eacc88226e621e4743537454f34f0b8de3c634a2e4b8b8636239",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/PrincipalPart/Variant7b24ef12380c3a11b2111b76fb9bf5642be10cc3e9ac8eccd7c2d06b2a2342bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:01b4f77405e302f0abfb8465615e01b5f601140ddb44bb59079ab007ae2fdbcc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def normalizedResidueCircleIntegral
    (h : ℂ → ℂ) (z : ℂ) (r : ℝ) : ℂ :=
  (2 * Real.pi * Complex.I : ℂ)⁻¹ • circleIntegral h z r

namespace AnalyticAt

/-- Every sufficiently small positive circle around a finite-order analytic
zero integrates its logarithmic derivative to its multiplicity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/PrincipalPart/Variant7b24ef12380c3a11b2111b76fb9bf5642be10cc3e9ac8eccd7c2d06b2a2342bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/PrincipalPart/Variant7b24ef12380c3a11b2111b76fb9bf5642be10cc3e9ac8eccd7c2d06b2a2342bb.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64409ba64c29a8143ac2572cc69651c0a170763b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
