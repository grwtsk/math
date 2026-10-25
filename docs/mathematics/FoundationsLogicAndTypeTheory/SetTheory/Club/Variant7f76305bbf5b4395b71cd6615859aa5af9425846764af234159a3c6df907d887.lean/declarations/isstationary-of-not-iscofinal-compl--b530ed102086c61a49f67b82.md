# IsStationary.of_not_isCofinal_compl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9f23adf3-4140-37cf-3ddd-df8a9e240c97",
  "kind": "theorem",
  "lexical_name": "IsStationary.of_not_isCofinal_compl",
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
  "slug": "isstationary-of-not-iscofinal-compl--b530ed102086c61a49f67b82",
  "source": {
    "blob": "8beb8503e489630de38c8b4dd468485aa02b2ddc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 266,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Club/Variant7f76305bbf5b4395b71cd6615859aa5af9425846764af234159a3c6df907d887.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b530ed102086c61a49f67b8235184400407f3927c937e918588833e6b30466b9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Club/Variant7f76305bbf5b4395b71cd6615859aa5af9425846764af234159a3c6df907d887.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9f23adf3-4140-37cf-3ddd-df8a9e240c97`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 266–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsStationary.of_not_isCofinal_compl (hs : ¬ IsCofinal sᶜ) : IsStationary s := by
  intro t ht
  obtain ⟨a, ha⟩ := not_isCofinal_iff.1 hs
  obtain ⟨b, hb, hb'⟩ := ht.isCofinal a
  refine ⟨b, ?_, hb⟩
  contrapose! ha
  exact ⟨b, ha, hb'⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Club/Variant7f76305bbf5b4395b71cd6615859aa5af9425846764af234159a3c6df907d887.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Club/Variant7f76305bbf5b4395b71cd6615859aa5af9425846764af234159a3c6df907d887.lean#L266).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8beb8503e489630de38c8b4dd468485aa02b2ddc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
