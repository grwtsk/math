# LimitIndexCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ae65d9484ed36a2fcf4ac13638b9ab1d606847ab88b8961587e0327c6131a839",
  "kind": "structure",
  "lexical_name": "LimitIndexCertificate",
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
  "slug": "limitindexcertificate--e3e623e01a783e3544a87175",
  "source": {
    "blob": "856d672e75e3abcf963881f794603d4f991b70d2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 21,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Limit/Variantc72fb9351be360466536f69e600d22df95ab9fb5663efdd104cedfc3fbfd2851.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e3e623e01a783e3544a871756c83ac23004f81604729cda7cc7f0dfa01c6f6a1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Limit/Variantc72fb9351be360466536f69e600d22df95ab9fb5663efdd104cedfc3fbfd2851.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ae65d9484ed36a2fcf4ac13638b9ab1d606847ab88b8961587e0327c6131a839`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure LimitIndexCertificate
    (registered : RegisteredCountableLimit) where
  stageIndex :
    Nat → ExecutableNormalForm
  stageMatchesFundamentalSequence :
    ∀ stage,
      (stageIndex stage).value =
        (registered.approximation stage).value
  monotone :
    Monotone
      (fun stage => (stageIndex stage).value)
  cofinal :
    ∀ {candidate},
      candidate < registered.target →
      ∃ stage,
        candidate ≤ (stageIndex stage).value

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Limit/Variantc72fb9351be360466536f69e600d22df95ab9fb5663efdd104cedfc3fbfd2851.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Limit/Variantc72fb9351be360466536f69e600d22df95ab9fb5663efdd104cedfc3fbfd2851.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `856d672e75e3abcf963881f794603d4f991b70d2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
