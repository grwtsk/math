# currentMoveReceipt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cb9ca5ddc06dbcd3709a857fc41add31c91b339b7da718658242b17e44a4e164",
  "kind": "def",
  "lexical_name": "currentMoveReceipt",
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
  "slug": "currentmovereceipt--57320a5dad00cff83b057cba",
  "source": {
    "blob": "d99bac9d6327b9dd9ec69d5ffeb273d8b9f3f228",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 36,
    "line": 25,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FrobeniusToyWriteback/Variant1d1be91b51ac2b2b9dac05e84cd2faf066449775a97d78e35e52c3c6ab745108.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:57320a5dad00cff83b057cba688a094b21ed5c4047eacbca0db17ca51ad98360",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FrobeniusToyWriteback/Variant1d1be91b51ac2b2b9dac05e84cd2faf066449775a97d78e35e52c3c6ab745108.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cb9ca5ddc06dbcd3709a857fc41add31c91b339b7da718658242b17e44a4e164`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–36.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def currentMoveReceipt : RustToyFrobeniusReceipt := {
  toyId := "f2-dual-number",
  toyDigest := "a3c3afbe9562e2dd8274874a1ab2104e0d4ec1cf562069599c2330a384de4803",
  carrierSize := 4,
  baseModulus := 2,
  ringAlgebraSatisfied := true,
  frobeniusDualitySatisfied := true,
  pairingDigest := "6e359c17caee0d37690b20e8bcf5885931176b4ec91ef0439beaa760b4f6e0b7",
  rustReceiptDigest := "d838e3fb738eadb97d4f6ce0bcb0fc291bb18161c67799b4884773b4b4ed6cef",
  unresolvedResidueCount := 0
}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FrobeniusToyWriteback/Variant1d1be91b51ac2b2b9dac05e84cd2faf066449775a97d78e35e52c3c6ab745108.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FrobeniusToyWriteback/Variant1d1be91b51ac2b2b9dac05e84cd2faf066449775a97d78e35e52c3c6ab745108.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d99bac9d6327b9dd9ec69d5ffeb273d8b9f3f228` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
