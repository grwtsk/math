# prototypeProofAuthorityRecord

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fb5ec7885b98e7988a0380ab8ccd8871aa58f7dc8b5edd7be8bad352c2743a19",
  "kind": "def",
  "lexical_name": "prototypeProofAuthorityRecord",
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
  "slug": "prototypeproofauthorityrecord--0ca4f5f1356040259c9601bd",
  "source": {
    "blob": "2384d786492bf0b262baf42b28eff7be13ad0358",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 222,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Models/Variant469b29a611a994998bebd50659cffcfa4c5914b3933da37717b2645f162ba01d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0ca4f5f1356040259c9601bd4b479d2fe177beee769ea26b9ab59718a5aabc2b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Models/Variant469b29a611a994998bebd50659cffcfa4c5914b3933da37717b2645f162ba01d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fb5ec7885b98e7988a0380ab8ccd8871aa58f7dc8b5edd7be8bad352c2743a19`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–233.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def prototypeProofAuthorityRecord
    (model : PrototypeModel) : ProofAuthorityRecord where
  identity := "proof-authority:" ++ (prototypeModelId model).value
  propositionId := prototypePropositionId model
  declarationId := prototypeDeclarationId model
  checker := ⟨"artifact:lean-kernel-4.32.0"⟩
  trustedBase := prototypeTrustedBase model
  authority := .declarativeArtifact
  evidenceClass := .proseOrMetadata
  sourceDigest := prototypeSourceDigest model

/-- Positive finite example metadata remains attached to its owning wrapper. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Models/Variant469b29a611a994998bebd50659cffcfa4c5914b3933da37717b2645f162ba01d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Models/Variant469b29a611a994998bebd50659cffcfa4c5914b3933da37717b2645f162ba01d.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2384d786492bf0b262baf42b28eff7be13ad0358` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
