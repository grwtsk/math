# getBitVecValue?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8dfaf7a25c116f0769ee19e55dd0400d5ec061fb3edcf4f240e755a0999c22da",
  "kind": "def",
  "lexical_name": "getBitVecValue?",
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
  "slug": "getbitvecvalue--288fdd59cf35f33691d35b22",
  "source": {
    "blob": "edca4aed4a807f04705ab3beacdb108ddd008d5a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 37,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LitValues/Variant5f19f08704dc4db3bb7aefe1c53c2db6aaf9abe70651e9b18b6f02c4ac914e5a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:288fdd59cf35f33691d35b22336438e120940205d07b00c5222594ab710039ac",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LitValues/Variant5f19f08704dc4db3bb7aefe1c53c2db6aaf9abe70651e9b18b6f02c4ac914e5a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8dfaf7a25c116f0769ee19e55dd0400d5ec061fb3edcf4f240e755a0999c22da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getBitVecValue? (e : Expr) : OptionT Id BitVecValue :=
  match_expr e with
  | BitVec.ofNat nExpr vExpr => do
    let n ← getNatValue? nExpr
    let v ← getNatValue? vExpr
    return ⟨n, BitVec.ofNat n v⟩
  | BitVec.ofNatLT nExpr vExpr _ => do
    let n ← getNatValue? nExpr
    let v ← getNatValue? vExpr
    return ⟨n, BitVec.ofNat n v⟩
  | OfNat.ofNat α v _ => do
    let_expr BitVec n := α | failure
    let n ← getNatValue? n
    let .lit (.natVal v) := v | failure
    return ⟨n, BitVec.ofNat n v⟩
  | _ => failure

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LitValues/Variant5f19f08704dc4db3bb7aefe1c53c2db6aaf9abe70651e9b18b6f02c4ac914e5a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LitValues/Variant5f19f08704dc4db3bb7aefe1c53c2db6aaf9abe70651e9b18b6f02c4ac914e5a.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `edca4aed4a807f04705ab3beacdb108ddd008d5a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
