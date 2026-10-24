# thetaPhiDerivativeModeWeight

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e154e6e60270e7ce97a259795e33394011808035a62d504ff61e1e3466b9db03",
  "kind": "def",
  "lexical_name": "thetaPhiDerivativeModeWeight",
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
  "slug": "thetaphiderivativemodeweight--f35534547a832c9b5a69985c",
  "source": {
    "blob": "520bd44ad1867a6a9fce65fc325d6f919dcac3b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 29,
    "path": "GRWTSK/Topology/GeneralTopology/ThetaPositiveLift/Variant983ce1a1f5b7eb7f553e8a4c892d386678ffe429b53cea80de92fa3f8b614e06.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f35534547a832c9b5a69985c290da2d84b47b246e42de43db57e9f4e2445e0b5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ThetaPositiveLift/Variant983ce1a1f5b7eb7f553e8a4c892d386678ffe429b53cea80de92fa3f8b614e06.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e154e6e60270e7ce97a259795e33394011808035a62d504ff61e1e3466b9db03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def thetaPhiDerivativeModeWeight (m : ℕ) (t : ℝ) : ℝ :=
  Real.pi * ((m : ℝ) + 1) ^ 2 *
    Real.exp (5 * t) * Real.exp (-thetaModeY m t)

/-- Every literal mode weight is strictly positive on the whole real line. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ThetaPositiveLift/Variant983ce1a1f5b7eb7f553e8a4c892d386678ffe429b53cea80de92fa3f8b614e06.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ThetaPositiveLift/Variant983ce1a1f5b7eb7f553e8a4c892d386678ffe429b53cea80de92fa3f8b614e06.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `520bd44ad1867a6a9fce65fc325d6f919dcac3b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
