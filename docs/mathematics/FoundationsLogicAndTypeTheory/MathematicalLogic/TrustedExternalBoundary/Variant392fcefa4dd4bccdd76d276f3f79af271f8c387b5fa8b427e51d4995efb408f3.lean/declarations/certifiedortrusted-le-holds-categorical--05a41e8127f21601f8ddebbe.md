# certifiedOrTrusted_le_holds_categorical

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:127d4c79-d500-247a-1db3-5d6556412d47",
  "kind": "theorem",
  "lexical_name": "certifiedOrTrusted_le_holds_categorical",
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
  "slug": "certifiedortrusted-le-holds-categorical--05a41e8127f21601f8ddebbe",
  "source": {
    "blob": "71910e652726296de9255938e9521eb498e17bd4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 257,
    "line": 237,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TrustedExternalBoundary/Variant392fcefa4dd4bccdd76d276f3f79af271f8c387b5fa8b427e51d4995efb408f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:05a41e8127f21601f8ddebbe53f5152f2c55197c4c4e2735288ddb1047ebea48",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/TrustedExternalBoundary/Variant392fcefa4dd4bccdd76d276f3f79af271f8c387b5fa8b427e51d4995efb408f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:127d4c79-d500-247a-1db3-5d6556412d47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 237–257.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem certifiedOrTrusted_le_holds_categorical
    (T : TrustedExternalDTT) :
    Nonempty
      (BoundaryCalculus.CategoricalLogic.SubobjectLE
        (BoundaryCalculus.CategoricalLogic.predicateSubobject (CertifiedOrTrustedPred T))
        (BoundaryCalculus.CategoricalLogic.predicateSubobject (BoundaryCalculus.DTT.HoldsPred T.base))) := by
  apply BoundaryCalculus.CategoricalLogic.predicate_subobject_inclusion_equiv.mp
  intro i h
  cases i with
  | mk Γ rest =>
      cases rest with
      | mk b q =>
          exact certified_or_trusted_sound T h

/--
The categorical trusted-external boundary calculus.

The extended-ownership subobject factors through the certified-or-trusted
subobject, and the certified-or-trusted subobject factors through the claim
subobject.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/TrustedExternalBoundary/Variant392fcefa4dd4bccdd76d276f3f79af271f8c387b5fa8b427e51d4995efb408f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TrustedExternalBoundary/Variant392fcefa4dd4bccdd76d276f3f79af271f8c387b5fa8b427e51d4995efb408f3.lean#L237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71910e652726296de9255938e9521eb498e17bd4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
