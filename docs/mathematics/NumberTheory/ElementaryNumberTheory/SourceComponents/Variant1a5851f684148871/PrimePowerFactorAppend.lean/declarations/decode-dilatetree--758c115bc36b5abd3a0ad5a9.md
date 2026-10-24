# decode_dilateTree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ad317660-8b6b-0967-b096-24e184a72ba9",
  "kind": "theorem",
  "lexical_name": "decode_dilateTree",
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
  "slug": "decode-dilatetree--758c115bc36b5abd3a0ad5a9",
  "source": {
    "blob": "f18ffe99d4c404c1c475d69073fe35a7975a8805",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 42,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/SourceComponents/Variant1a5851f684148871/PrimePowerFactorAppend.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:758c115bc36b5abd3a0ad5a974b0316f6ec7dec41fc58ab06d4308ef2c4833d2",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/SourceComponents/Variant1a5851f684148871/PrimePowerFactorAppend.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad317660-8b6b-0967-b096-24e184a72ba9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem decode_dilateTree
    (T : CellularArithmeticTree)
    (P : NumberTheory.PrimePower) :
    (dilateTree T P).decode = T.decode * P.value := by
  unfold dilateTree CellularArithmeticTree.decode
  induction T.factors with
  | nil =>
      simp
  | cons Q qs ih =>
      simp [ih, Nat.mul_assoc]

end CellularArithmetic
end Folder
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/SourceComponents/Variant1a5851f684148871/PrimePowerFactorAppend.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/SourceComponents/Variant1a5851f684148871/PrimePowerFactorAppend.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f18ffe99d4c404c1c475d69073fe35a7975a8805` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
