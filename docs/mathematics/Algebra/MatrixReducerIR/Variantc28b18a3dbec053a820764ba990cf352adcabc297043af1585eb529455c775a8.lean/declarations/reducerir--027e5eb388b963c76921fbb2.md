# ReducerIR

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c685d048eee983c30406d25518ce8cf884fdaea2508b38dd645ddffcf1a86be0",
  "kind": "inductive",
  "lexical_name": "ReducerIR",
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
  "slug": "reducerir--027e5eb388b963c76921fbb2",
  "source": {
    "blob": "f592eea0b22a2661b0479ee0f0b2bade57730d9c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 59,
    "path": "GRWTSK/Algebra/MatrixReducerIR/Variantc28b18a3dbec053a820764ba990cf352adcabc297043af1585eb529455c775a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:027e5eb388b963c76921fbb20cc11e57d688768d6f033d4787d5549c6f06478d",
  "verification": {
    "reference": "docs/verification/Algebra/MatrixReducerIR/Variantc28b18a3dbec053a820764ba990cf352adcabc297043af1585eb529455c775a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c685d048eee983c30406d25518ce8cf884fdaea2508b38dd645ddffcf1a86be0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive ReducerIR : Rep → Rep → Type 1
  | identity : ReducerIR A A
  | compose : ReducerIR A B → ReducerIR B C → ReducerIR A C
  | pair : ReducerIR A B → ReducerIR A C → ReducerIR A (.pair B C)
  | projectLeft : ReducerIR (.pair A B) A
  | projectRight : ReducerIR (.pair A B) B
  | booleanNot : ReducerIR .boolean .boolean
  | selectRows (select : Fin outRows → Fin rows) :
      ReducerIR (.matrix rows cols) (.matrix outRows cols)
  | selectColumns (select : Fin outCols → Fin cols) :
      ReducerIR (.matrix rows cols) (.matrix rows outCols)
  | xorFoldRows : ReducerIR (.matrix rows cols) (.bits cols)
  | xorFoldColumns : ReducerIR (.matrix rows cols) (.bits rows)
  | flatten : ReducerIR (.matrix rows cols) (.bits (rows * cols))
  | reshape : ReducerIR (.bits (rows * cols)) (.matrix rows cols)
  | fieldDecode
      {F : Type} [Field F] [Fintype F]
      [Algebra BinMatGalois.GF2 F]
      (E : RowFieldEncoding F width) :
      ReducerIR (.matrix 1 width) (.field F)
  | fieldEncode
      {F : Type} [Field F] [Fintype F]
      [Algebra BinMatGalois.GF2 F]
      (E : RowFieldEncoding F width) :
      ReducerIR (.field F) (.matrix 1 width)
  | mapFieldPermutation {F : Type} (P : Equiv.Perm F) :
      ReducerIR (.field F) (.field F)
  | packetMatrix : ReducerIR (.packet width) (.variableMatrix width)
  | payloadLength : ReducerIR (.packet width) .natural
  | sequenceModulo (modulus : Nat) : ReducerIR .natural .natural

namespace ReducerIR

/-- XOR-fold a finite family of Boolean values. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/MatrixReducerIR/Variantc28b18a3dbec053a820764ba990cf352adcabc297043af1585eb529455c775a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/MatrixReducerIR/Variantc28b18a3dbec053a820764ba990cf352adcabc297043af1585eb529455c775a8.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f592eea0b22a2661b0479ee0f0b2bade57730d9c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
