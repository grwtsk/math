# cast_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "064cc275209f146aa9600df25cfa63f10ce33dc8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 185,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/36/36a753563dce776c4e7ebfa8cb772090a3e2a7ddefa86c4865b14915a182ee2c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:941c10b3-e751-2d7f-eb61-255dea811628",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3becdb20-0e04-0bb7-a62d-7865423ce41e",
  "kind": "theorem",
  "lexical_name": "cast_two",
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
  "slug": "cast-two--91ddb296c3f94043adcbb86e",
  "source": {
    "blob": "064cc275209f146aa9600df25cfa63f10ce33dc8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 193,
    "line": 185,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variant36a753563dce776c4e7ebfa8cb772090a3e2a7ddefa86c4865b14915a182ee2c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:91ddb296c3f94043adcbb86ec53cf177b7f01d01609e01f93e195ba11b5ffd42",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variant36a753563dce776c4e7ebfa8cb772090a3e2a7ddefa86c4865b14915a182ee2c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3becdb20-0e04-0bb7-a62d-7865423ce41e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–193.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cast_two [AddMonoidWithOne R] : ((2 : ℕ) : R) = (2 : R) := rfl
#align nat.cast_two Nat.cast_two

attribute [simp, norm_cast] Int.natAbs_ofNat

end Nat

/-- `AddMonoidWithOne` implementation using unary recursion. -/
@[reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variant36a753563dce776c4e7ebfa8cb772090a3e2a7ddefa86c4865b14915a182ee2c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variant36a753563dce776c4e7ebfa8cb772090a3e2a7ddefa86c4865b14915a182ee2c.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `064cc275209f146aa9600df25cfa63f10ce33dc8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
