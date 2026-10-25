# CanonicalHomeValid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:378baf9b8671b9e6a7164f277250adee8083c9e78ba9f0517e293af7968e691b",
  "kind": "def",
  "lexical_name": "CanonicalHomeValid",
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
  "slug": "canonicalhomevalid--e0560d0a15f09b23f8fb5987",
  "source": {
    "blob": "3a31041f94769c815d51b91ba36c1548f5a176bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 23,
    "line": 14,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/CanonicalHomeValid/Variant185858c537f01cc16c989015e36cef3dcda5a11f866dc5164d7e5f1412afa239.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e0560d0a15f09b23f8fb5987cb469b790bd6f756757093d158228b81597edff4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/CanonicalHomeValid/Variant185858c537f01cc16c989015e36cef3dcda5a11f866dc5164d7e5f1412afa239.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:378baf9b8671b9e6a7164f277250adee8083c9e78ba9f0517e293af7968e691b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 14–23.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def CanonicalHomeValid
    (taxon : MathematicalTaxon)
    (evidence : DomainEvidence)
    (conceptEvidence : Finset StableId) : Prop :=
  evidence.domain = taxon.principalDomain ∧
  evidence.criteria.Nonempty ∧
  evidence.witnesses.Nonempty ∧
  conceptEvidence.Nonempty

end Mathematics.Taxonomy
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/CanonicalHomeValid/Variant185858c537f01cc16c989015e36cef3dcda5a11f866dc5164d7e5f1412afa239.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/CanonicalHomeValid/Variant185858c537f01cc16c989015e36cef3dcda5a11f866dc5164d7e5f1412afa239.lean#L14).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a31041f94769c815d51b91ba36c1548f5a176bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
