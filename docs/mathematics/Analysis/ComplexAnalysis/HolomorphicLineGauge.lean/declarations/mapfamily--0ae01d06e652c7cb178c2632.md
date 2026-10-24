# mapFamily

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0ab50cc3d027074c43b642ca39f35e9031710e834d8e44c2d5e0174ea9ee5a80",
  "kind": "def",
  "lexical_name": "mapFamily",
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
  "slug": "mapfamily--0ae01d06e652c7cb178c2632",
  "source": {
    "blob": "02bce81ab498f01b07b51b41e21eed45bcc2e742",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 126,
    "path": "GRWTSK/Analysis/Complex/HolomorphicLineGauge.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0ae01d06e652c7cb178c263255bd4542479a0c43859dd9e4977f06f6cf51d6d6",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/HolomorphicLineGauge.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0ab50cc3d027074c43b642ca39f35e9031710e834d8e44c2d5e0174ea9ee5a80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapFamily (G : Gauge C E) (s : TwistedFamily C) : TwistedFamily E where
  sectionAt i := (G.frame i : HolomorphicSection (D.U i)) * s.sectionAt i
  matching := by
    intro i j x hi hj
    change unitValue (G.frame j) ⟨x.1, hj⟩ *
        (s.sectionAt j : Section (D.U j)) ⟨x.1, hj⟩ =
      E.scalar i j x * (unitValue (G.frame i) ⟨x.1, hi⟩ *
        (s.sectionAt i : Section (D.U i)) ⟨x.1, hi⟩)
    rw [s.matching i j x hi hj, ← mul_assoc, G.compatible i j x hi hj, mul_assoc]

/-- Forward and inverse gauges give an equivalence, not an identification of the two cocycles. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/HolomorphicLineGauge.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/HolomorphicLineGauge.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02bce81ab498f01b07b51b41e21eed45bcc2e742` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
