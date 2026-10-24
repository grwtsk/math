# interiorInventory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7489a7d626a17d0d43ee92dfd40f2bf8612474bb5400f711ad6e24598b51a2d5",
  "kind": "def",
  "lexical_name": "interiorInventory",
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
  "slug": "interiorinventory--88a19c8bfa0edffa94700dd5",
  "source": {
    "blob": "8a7c3ae55ff1bb89e9100564337f170edd412908",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 62,
    "path": "GRWTSK/NumberTheory/BranchUnmatchedKnot/Variant5b087b7349f491dcd51fd26200e55570928a90df2654ad5653b64130f94b6aa0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:88a19c8bfa0edffa94700dd559ed03db3e018d04428b383faecd47cd8f44edad",
  "verification": {
    "reference": "docs/verification/NumberTheory/BranchUnmatchedKnot/Variant5b087b7349f491dcd51fd26200e55570928a90df2654ad5653b64130f94b6aa0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7489a7d626a17d0d43ee92dfd40f2bf8612474bb5400f711ad6e24598b51a2d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def interiorInventory (X : ℝ) : Set ℕ :=
  {n | 2 ≤ n ∧ (n : ℝ) < X ∧ 0 < ArithmeticFunction.vonMangoldt n}

/-- Positive von Mangoldt weight is exactly prime-power membership here. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/BranchUnmatchedKnot/Variant5b087b7349f491dcd51fd26200e55570928a90df2654ad5653b64130f94b6aa0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/BranchUnmatchedKnot/Variant5b087b7349f491dcd51fd26200e55570928a90df2654ad5653b64130f94b6aa0.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a7c3ae55ff1bb89e9100564337f170edd412908` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
