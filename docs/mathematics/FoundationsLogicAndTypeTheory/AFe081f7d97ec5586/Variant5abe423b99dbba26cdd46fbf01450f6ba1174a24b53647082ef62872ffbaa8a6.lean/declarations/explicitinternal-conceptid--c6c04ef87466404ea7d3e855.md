# explicitInternal_conceptId?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:73e7845c-a3df-35e1-0399-b26e92cc27f5",
  "kind": "theorem",
  "lexical_name": "explicitInternal_conceptId?",
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
  "slug": "explicitinternal-conceptid--c6c04ef87466404ea7d3e855",
  "source": {
    "blob": "58e42fe9c971c9d5c1edf9cf3de54a6d9e4c1ce3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 26,
    "line": 20,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/AFe081f7d97ec5586/Variant5abe423b99dbba26cdd46fbf01450f6ba1174a24b53647082ef62872ffbaa8a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6c04ef87466404ea7d3e8556bcb97faf7ce137d052b64658a0b0d7538f13c99",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/AFe081f7d97ec5586/Variant5abe423b99dbba26cdd46fbf01450f6ba1174a24b53647082ef62872ffbaa8a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:73e7845c-a3df-35e1-0399-b26e92cc27f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–26.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem explicitInternal_conceptId?
    (rationaleId : RationaleId) :
    (PrimaryDisposition.explicitInternal rationaleId).conceptId? = none := rfl

end PrimaryDisposition

end MathDiscovery.Concept
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/AFe081f7d97ec5586/Variant5abe423b99dbba26cdd46fbf01450f6ba1174a24b53647082ef62872ffbaa8a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/AFe081f7d97ec5586/Variant5abe423b99dbba26cdd46fbf01450f6ba1174a24b53647082ef62872ffbaa8a6.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58e42fe9c971c9d5c1edf9cf3de54a6d9e4c1ce3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
