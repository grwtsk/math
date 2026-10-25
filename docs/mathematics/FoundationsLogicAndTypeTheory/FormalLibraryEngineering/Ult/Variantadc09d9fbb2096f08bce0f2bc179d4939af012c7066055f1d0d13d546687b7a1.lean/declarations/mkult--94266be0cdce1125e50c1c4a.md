# mkUlt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:543265577bb9f7974db5f4349b5ab069dee0697fd19c2613442880ff6a8cb8e8",
  "kind": "def",
  "lexical_name": "mkUlt",
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
  "slug": "mkult--94266be0cdce1125e50c1c4a",
  "source": {
    "blob": "422b6ef141d4d49cf3c12df8fe07294e4811623f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 35,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ult/Variantadc09d9fbb2096f08bce0f2bc179d4939af012c7066055f1d0d13d546687b7a1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:94266be0cdce1125e50c1c4a01feab503cc9db9f34ba088eb9fbce9e3eedb548",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ult/Variantadc09d9fbb2096f08bce0f2bc179d4939af012c7066055f1d0d13d546687b7a1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:543265577bb9f7974db5f4349b5ab069dee0697fd19c2613442880ff6a8cb8e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkUlt (aig : AIG α) (pair : AIG.BinaryRefVec aig w) : AIG.Entrypoint α :=
  let ⟨lhsRefs, rhsRefs⟩ := pair
  let res := BVExpr.bitblast.blastNot aig rhsRefs
  let aig := res.aig
  let rhsNotRefs := res.vec
  let trueRef := aig.mkConstCached true
  let aig := res.aig
  let lhsRefs := lhsRefs.cast <| by
    apply AIG.LawfulVecOperator.le_size (f := BVExpr.bitblast.blastNot)
  let res := BVExpr.bitblast.mkOverflowBit aig ⟨_, ⟨lhsRefs, rhsNotRefs⟩, trueRef⟩
  let aig := res.aig
  let overflowRef := res.ref
  aig.mkNotCached overflowRef

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ult/Variantadc09d9fbb2096f08bce0f2bc179d4939af012c7066055f1d0d13d546687b7a1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ult/Variantadc09d9fbb2096f08bce0f2bc179d4939af012c7066055f1d0d13d546687b7a1.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `422b6ef141d4d49cf3c12df8fe07294e4811623f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
