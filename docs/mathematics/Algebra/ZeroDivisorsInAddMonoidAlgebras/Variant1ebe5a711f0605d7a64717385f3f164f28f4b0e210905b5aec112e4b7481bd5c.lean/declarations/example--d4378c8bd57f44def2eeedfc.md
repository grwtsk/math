# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:99531880f3b45dab7234cd791dda29a87309ac9a7b3020e8d919125482928033",
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
  "slug": "example--d4378c8bd57f44def2eeedfc",
  "source": {
    "blob": "d978b771294b83e7dabf4163f2fedaac2ede85ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 247,
    "path": "GRWTSK/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant1ebe5a711f0605d7a64717385f3f164f28f4b0e210905b5aec112e4b7481bd5c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d4378c8bd57f44def2eeedfc62df3bf2c4925fbfe2f312369e81300ee3806444",
  "verification": {
    "reference": "docs/verification/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant1ebe5a711f0605d7a64717385f3f164f28f4b0e210905b5aec112e4b7481bd5c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:99531880f3b45dab7234cd791dda29a87309ac9a7b3020e8d919125482928033`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 247–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example : ¬UniqueProds ℕ := by
  rintro ⟨h⟩
  refine not_not.mpr (h (Finset.singleton_nonempty 0) (Finset.insert_nonempty 0 {1})) ?_
  simp [UniqueMul, not_or]

/-- Some Types that do not have `UniqueSums`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant1ebe5a711f0605d7a64717385f3f164f28f4b0e210905b5aec112e4b7481bd5c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/ZeroDivisorsInAddMonoidAlgebras/Variant1ebe5a711f0605d7a64717385f3f164f28f4b0e210905b5aec112e4b7481bd5c.lean#L247).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d978b771294b83e7dabf4163f2fedaac2ede85ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
