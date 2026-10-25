# IsMin.not_isMax'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ac9524aa-104d-15fb-3907-cfa552e8b10d",
  "kind": "theorem",
  "lexical_name": "IsMin.not_isMax'",
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
  "slug": "ismin-not-ismax--3ba96c7a943c6dbeeb0160bb",
  "source": {
    "blob": "8182293cdbc78e1d69c91279f5f2f146f11bd835",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 332,
    "line": 323,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Directed/Variant2e774a3eb127904a7b9e64bf52a74eb48528b11d2c74b78760cb604a5375470c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ba96c7a943c6dbeeb0160bb3fecc6f109bfde92adf9ce362afd8cda0b726792",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Directed/Variant2e774a3eb127904a7b9e64bf52a74eb48528b11d2c74b78760cb604a5375470c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ac9524aa-104d-15fb-3907-cfa552e8b10d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 323–332.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem IsMin.not_isMax' [IsDirectedOrder β] {b : β} (hb : IsMin b) : ¬ IsMax b :=
  fun hb' ↦ hb'.toDual.not_isMax hb.toDual

end Nontrivial

variable [Preorder α] {f : α → β} {s : Set α}

-- TODO: Generalise the following two lemmas to connected orders

/-- If `f` is monotone and antitone on a directed order, then `f` is constant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Directed/Variant2e774a3eb127904a7b9e64bf52a74eb48528b11d2c74b78760cb604a5375470c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Directed/Variant2e774a3eb127904a7b9e64bf52a74eb48528b11d2c74b78760cb604a5375470c.lean#L323).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8182293cdbc78e1d69c91279f5f2f146f11bd835` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
