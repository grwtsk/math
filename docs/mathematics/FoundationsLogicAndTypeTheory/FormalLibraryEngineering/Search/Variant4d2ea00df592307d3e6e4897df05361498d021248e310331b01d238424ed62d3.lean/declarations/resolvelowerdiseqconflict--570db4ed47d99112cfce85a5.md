# resolveLowerDiseqConflict

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0f986d8c7c5a477bff66ea86794b1714347bd09d81d3480f57fe8bc9e1f3535e",
  "kind": "def",
  "lexical_name": "resolveLowerDiseqConflict",
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
  "slug": "resolvelowerdiseqconflict--570db4ed47d99112cfce85a5",
  "source": {
    "blob": "ad49df7d19532274d87845c0db03d8affbb27562",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 155,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant4d2ea00df592307d3e6e4897df05361498d021248e310331b01d238424ed62d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:570db4ed47d99112cfce85a54e29021058f8d812260aaef38ba30f6b32febe28",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant4d2ea00df592307d3e6e4897df05361498d021248e310331b01d238424ed62d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0f986d8c7c5a477bff66ea86794b1714347bd09d81d3480f57fe8bc9e1f3535e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def resolveLowerDiseqConflict (c₁ : IneqCnstr) (c : DiseqCnstr) : SearchM Unit := do
  let c := if c.p.leadCoeff < 0 then
    /-
    Ensure leading coefficient of the disequality is positive.
    Thus, after the split, we have an upper bound that can be resolved with `c₁`
    -/
    { p := c.p.mul (-1), h := .neg c : DiseqCnstr }
  else
    c
  let c₂ ← c.split
  resolveLowerUpperConflict c₁ c₂

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant4d2ea00df592307d3e6e4897df05361498d021248e310331b01d238424ed62d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Search/Variant4d2ea00df592307d3e6e4897df05361498d021248e310331b01d238424ed62d3.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad49df7d19532274d87845c0db03d8affbb27562` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
