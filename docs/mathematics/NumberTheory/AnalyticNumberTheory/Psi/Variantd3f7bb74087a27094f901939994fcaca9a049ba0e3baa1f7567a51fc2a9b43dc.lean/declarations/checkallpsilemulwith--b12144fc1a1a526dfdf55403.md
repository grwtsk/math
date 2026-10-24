# checkAllPsiLeMulWith

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7d7f10a4ed10e55f355cb8cab22934aa402606256723251ad193fae13b7dac8c",
  "kind": "def",
  "lexical_name": "checkAllPsiLeMulWith",
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
  "slug": "checkallpsilemulwith--b12144fc1a1a526dfdf55403",
  "source": {
    "blob": "3b5e73eccb695d7ba489001e0676bcd56fb94a97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 152,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Psi/Variantd3f7bb74087a27094f901939994fcaca9a049ba0e3baa1f7567a51fc2a9b43dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b12144fc1a1a526dfdf554038e203c41e3a28392c061334846d36cf190af2082",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Psi/Variantd3f7bb74087a27094f901939994fcaca9a049ba0e3baa1f7567a51fc2a9b43dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7d7f10a4ed10e55f355cb8cab22934aa402606256723251ad193fae13b7dac8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def checkAllPsiLeMulWith (bound : Nat) (slope : Rat) (depth : Nat := 20) : Bool :=
  go bound slope depth 1 0
where
  go (bound : Nat) (slope : Rat) (depth n : Nat) (acc : Rat) : Bool :=
    if n > bound then true
    else
      let acc' := acc + vonMangoldtUB n depth
      if decide (acc' <= slope * (n : Rat)) then go bound slope depth (n + 1) acc'
      else false
  termination_by bound + 1 - n

/-- Legacy O(N) checker for `slope = 111/100`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Psi/Variantd3f7bb74087a27094f901939994fcaca9a049ba0e3baa1f7567a51fc2a9b43dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Psi/Variantd3f7bb74087a27094f901939994fcaca9a049ba0e3baa1f7567a51fc2a9b43dc.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b5e73eccb695d7ba489001e0676bcd56fb94a97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
