# binaryLogicAtom_countable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3ab2dacfb5ee07b9e98098fed50c085494088dd16b4a960a229b0b89bda30413",
  "kind": "def",
  "lexical_name": "binaryLogicAtom_countable",
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
  "slug": "binarylogicatom-countable--84c97df28c2a0ed2fa419eee",
  "source": {
    "blob": "5bc280f10378ec0866456bc76842aabebf1ce6e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 56,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Counting/Variant36c0a8fdb0d51671429bdafa62bb22c7633d16dee0821769a3f7cb8d4299d4ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:84c97df28c2a0ed2fa419eee44f97a8f32a112ae922961951834d3fd96a86c4d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Counting/Variant36c0a8fdb0d51671429bdafa62bb22c7633d16dee0821769a3f7cb8d4299d4ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3ab2dacfb5ee07b9e98098fed50c085494088dd16b4a960a229b0b89bda30413`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def binaryLogicAtom_countable
    (P : PairingCodec)
    (matrixEncoding : CountableEncoding SomeBinaryLogicMatrix)
    (stringEncoding : CountableEncoding String) :
    CountableEncoding BinaryLogicAtom where
  encode := fun
    | BinaryLogicAtom.matrix M => tagEncode P 0 (matrixEncoding.encode M)
    | BinaryLogicAtom.token s => tagEncode P 1 (stringEncoding.encode s)
    | BinaryLogicAtom.modularity s => tagEncode P 2 (stringEncoding.encode s)
  decode := fun n =>
    match P.unpair n with
    | (0, payload) =>
        match matrixEncoding.decode payload with
        | some M => some (BinaryLogicAtom.matrix M)
        | none => none
    | (1, payload) =>
        match stringEncoding.decode payload with
        | some s => some (BinaryLogicAtom.token s)
        | none => none
    | (2, payload) =>
        match stringEncoding.decode payload with
        | some s => some (BinaryLogicAtom.modularity s)
        | none => none
    | _ => none
  roundTrip := by
    intro x
    cases x with
    | matrix M =>
        simp [tagEncode, P.roundTrip, matrixEncoding.roundTrip]
    | token s =>
        simp [tagEncode, P.roundTrip, stringEncoding.roundTrip]
    | modularity s =>
        simp [tagEncode, P.roundTrip, stringEncoding.roundTrip]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Counting/Variant36c0a8fdb0d51671429bdafa62bb22c7633d16dee0821769a3f7cb8d4299d4ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Counting/Variant36c0a8fdb0d51671429bdafa62bb22c7633d16dee0821769a3f7cb8d4299d4ae.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5bc280f10378ec0866456bc76842aabebf1ce6e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
