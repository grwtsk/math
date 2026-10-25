# InjectiveSemanticTensorEncodingCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:09bba3cf52a3fad9313ae81e8454b2e8b6e9412d64272b749fe22d1cf694f0e2",
  "kind": "structure",
  "lexical_name": "InjectiveSemanticTensorEncodingCertificate",
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
  "slug": "injectivesemantictensorencodingcertificate--d5f91535932bef07c499d3aa",
  "source": {
    "blob": "82b8b85373e16c69b49d5ac0f60adb56260653bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 67,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/State/Variant2e9906de79bac7309976e821359b23adbfca94b9f4dc15d684f91c549779f9f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d5f91535932bef07c499d3aa79544c63eedb498c3dd8d9c7434d2d61cec8c19c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/State/Variant2e9906de79bac7309976e821359b23adbfca94b9f4dc15d684f91c549779f9f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:09bba3cf52a3fad9313ae81e8454b2e8b6e9412d64272b749fe22d1cf694f0e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure InjectiveSemanticTensorEncodingCertificate
    (SemanticState : Type u)
    (SemanticContext : Type v)
    (HilbertState : Type w)
    (Observation : Type x) where
  base :
    SemanticTensorEncodingCertificate
      SemanticState SemanticContext HilbertState Observation
  encodeInjective : Function.Injective base.encode

end Mathematics.TensorNetwork
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/State/Variant2e9906de79bac7309976e821359b23adbfca94b9f4dc15d684f91c549779f9f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/State/Variant2e9906de79bac7309976e821359b23adbfca94b9f4dc15d684f91c549779f9f8.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82b8b85373e16c69b49d5ac0f60adb56260653bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
