# imaginary_interval_of_location

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:031cb6b5-3909-031a-caa7-04c7d8f7e7e4",
  "kind": "theorem",
  "lexical_name": "imaginary_interval_of_location",
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
  "slug": "imaginary-interval-of-location--f516ffa318ddd3fe3acf0d1b",
  "source": {
    "blob": "f269992d7586cbe05ee0a6018e1a3685f3f706bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 100,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonCriticalLine.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f516ffa318ddd3fe3acf0d1b5ef2f1817f6bc21fc0322f680cfb8b9f88361804",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/ConcreteNewtonCriticalLine.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:031cb6b5-3909-031a-caa7-04c7d8f7e7e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem imaginary_interval_of_location (s : ℂ)
    (located : ‖s - QComplex.embed ConcreteNewtonPacket.center‖ ≤
      (ConcreteNewtonPacket.newtonRadius : ℝ)) :
    (7067357571 / 500000000 : ℝ) ≤ s.im ∧
      s.im ≤ (7067367571 / 500000000 : ℝ) := by
  have vertical : |s.im - (QComplex.embed ConcreteNewtonPacket.center).im| ≤
      (ConcreteNewtonPacket.newtonRadius : ℝ) := by
    simpa only [Complex.sub_im] using
      (Complex.abs_im_le_norm (s - QComplex.embed ConcreteNewtonPacket.center)).trans located
  have bounds := abs_le.mp vertical
  norm_num [QComplex.embed, ConcreteNewtonPacket.center, ConcreteNewtonPacket.newtonRadius]
    at bounds
  constructor <;> linarith [bounds.1, bounds.2]

/-- The conditional witness has exact line coordinate, the original location and uniqueness,
and a rational height enclosure. No claim of being the first positive zero is made. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/ConcreteNewtonCriticalLine.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonCriticalLine.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f269992d7586cbe05ee0a6018e1a3685f3f706bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
