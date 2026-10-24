# threeLiteralRecurrence_to_twoLiteral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:52e17692-b382-48ca-a64c-1e9616f0df0a",
  "kind": "theorem",
  "lexical_name": "threeLiteralRecurrence_to_twoLiteral",
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
  "slug": "threeliteralrecurrence-to-twoliteral--7f093693a85a14d32b4a8cb7",
  "source": {
    "blob": "5838ae5600b90dc2fbe7e175ea5713b63f8f753e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 117,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/ClauseIndexedDyadicThreshold.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f093693a85a14d32b4a8cb7a961eacf7ef1eb6b8177e651ce6b555771f6fffa",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/ClauseIndexedDyadicThreshold.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52e17692-b382-48ca-a64c-1e9616f0df0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem threeLiteralRecurrence_to_twoLiteral
    (polarity3 : ClausePolarity 3)
    (polarity2 : ClausePolarity 2)
    (hrecurrence : ClauseIndexedThetaRecurrence polarity3)
    (htheta :
      AllDyadicThetaAtThreshold
        (countedSuccessFraction polarity3)) :
    AllDyadicThetaAtThreshold
      (countedSuccessFraction polarity2) := by
  apply clauseIndexedRecurrence_to_previous
    (k := 2) polarity3 polarity2
  · rw [threeLiteralClauseThreshold]
    norm_num
  · exact hrecurrence
  · exact htheta

/-- Concrete equality-only transport from the arity-two threshold to the
arity-one threshold. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/ClauseIndexedDyadicThreshold.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/ClauseIndexedDyadicThreshold.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5838ae5600b90dc2fbe7e175ea5713b63f8f753e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
