# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0e020b924647b1f24330949a0652a0fb34375bc8e80ff759752504fe13520e28",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--1e9b3bb7a457b91fc6435c74",
  "source": {
    "blob": "33b1c1c6fe3927212271f88c662bb605f9249eda",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 237,
    "path": "GRWTSK/NumberTheory/MobiusEndpointBudgetStatements/Variant860c7287fad737b90788fc08a21e45441821200067eb963d319ca30fcaca584c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1e9b3bb7a457b91fc6435c7493d6bb4ee755231c13f0de55c47e358dc8fb5577",
  "verification": {
    "reference": "docs/verification/NumberTheory/MobiusEndpointBudgetStatements/Variant860c7287fad737b90788fc08a21e45441821200067eb963d319ca30fcaca584c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0e020b924647b1f24330949a0652a0fb34375bc8e80ff759752504fe13520e28`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 237–241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example (X : ℕ) (ε : ℝ) (z : ℂ)
    (hX : 1 ≤ X) :
    (∑ d ∈ Finset.Icc 1 X, (dampedCoefficient X ε d : ℂ) *
      Complex.exp (-(1 / 2 + z) * (Real.log (d : ℝ) : ℂ))) =
      correctedNumerator X (z + (ε : ℂ)) := MobiusEndpointBudgetScratch.dampedCoefficient_sum_eq_correctedNumerator X ε z hX
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/MobiusEndpointBudgetStatements/Variant860c7287fad737b90788fc08a21e45441821200067eb963d319ca30fcaca584c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/MobiusEndpointBudgetStatements/Variant860c7287fad737b90788fc08a21e45441821200067eb963d319ca30fcaca584c.lean#L237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33b1c1c6fe3927212271f88c662bb605f9249eda` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
