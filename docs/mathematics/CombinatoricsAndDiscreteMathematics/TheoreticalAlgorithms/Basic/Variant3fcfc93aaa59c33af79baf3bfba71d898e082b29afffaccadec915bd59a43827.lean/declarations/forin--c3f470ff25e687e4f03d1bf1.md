# forIn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a52cd93df69b3a77fe78960f79b5b583eb83a22e55065abb2c7a032baf608e89",
  "kind": "def",
  "lexical_name": "forIn",
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
  "slug": "forin--c3f470ff25e687e4f03d1bf1",
  "source": {
    "blob": "e319843ad1210998e75e03afc81cdd2231b2efd1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 147,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3fcfc93aaa59c33af79baf3bfba71d898e082b29afffaccadec915bd59a43827.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c3f470ff25e687e4f03d1bf1701040785bf06ba0a1a7d7a6938f521fb7a65350",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3fcfc93aaa59c33af79baf3bfba71d898e082b29afffaccadec915bd59a43827.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a52cd93df69b3a77fe78960f79b5b583eb83a22e55065abb2c7a032baf608e89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def forIn {m} [Monad m] {β} (s : Bitset) (init : β)
    (f : Nat → β → m (ForInStep β)) : m (ForInStep β) := do
  let mut n := s.toNat
  let mut acc := init
  while n != 0 do
    let cleared := n &&& (n - 1) -- clears the lowest set bit
    let i := (n ^^^ cleared).log2 -- index of the lowest set bit
    match ← f i acc with
    | d@(.done _) => return d
    | .yield b => acc := b
    n := cleared
  return .yield acc

/-- A `Bitset` with a `ForIn` instance that traverses the bitset's indices from the highest index
to the lowest. `Bitset.HighToLow` (`Bitset.highToLow`) is more efficient for large `Bitset`s. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3fcfc93aaa59c33af79baf3bfba71d898e082b29afffaccadec915bd59a43827.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3fcfc93aaa59c33af79baf3bfba71d898e082b29afffaccadec915bd59a43827.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e319843ad1210998e75e03afc81cdd2231b2efd1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
