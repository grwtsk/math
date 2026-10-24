# fromFinite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ded79be5fe385f7462f7cf1f6f653ebf83653a89fa4447bad384aaf5cf65d0dc",
  "kind": "def",
  "lexical_name": "fromFinite",
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
  "slug": "fromfinite--88ff3a4e0da7251ac6962042",
  "source": {
    "blob": "64a511b0d114f6f7d8aa83cfba33256c23053d80",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 206,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CheckedPoleJet.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:88ff3a4e0da7251ac6962042fc49e1d7eafda5f4c41b28ffb58b5f1238f730d2",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CheckedPoleJet.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ded79be5fe385f7462f7cf1f6f653ebf83653a89fa4447bad384aaf5cf65d0dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def fromFinite (c : Coordinates) (R S : ℚ) (p : RationalPoleValue.Parameters)
    (f : Ball × Ball) : RationalJetStateFold.PatchState :=
  let v := RationalPoleNormalizedJet.sourceBall c p.cutoff p.extraCorrections f.1
  let d : Ball := ⟨f.2.mid, f.2.rad + RationalPoleJet.uniformError c S p / S⟩
  let slope := min (RationalPolePatch.slopeBound c R S)
    (magnitude d.mid + d.rad + RationalJetPolePatch.curvature c R S * R)
  let rad := v.rad + slope * R
  ⟨v, d, rad, decide (RationalPoleJet.check c S p = true ∧ 0 ≤ R ∧ R < S ∧
    0 ≤ v.rad ∧ rad < RationalPolePatch.sampleLower v.mid)⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CheckedPoleJet.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CheckedPoleJet.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64a511b0d114f6f7d8aa83cfba33256c23053d80` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
