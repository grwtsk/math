# coe_toRealLinearMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:102bf71f-7aaf-4176-a62a-2b1d842e4cb9",
  "kind": "theorem",
  "lexical_name": "coe_toRealLinearMap",
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
  "slug": "coe-toreallinearmap--f820647c20130fce919131d4",
  "source": {
    "blob": "291475058122b0b2ab0036ffb18ac8d05f76ce6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 47,
    "path": "GRWTSK/Topology/GeneralTopology/RealVectorSpace/Variant4ab0c065a0ff4764b299c8098b7fc4562f60a7348e2b47b2f6bde6c8b4d75160.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f820647c20130fce919131d4f00e196bcdec85a4697a97a656f9c67c4f4ba262",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/RealVectorSpace/Variant4ab0c065a0ff4764b299c8098b7fc4562f60a7348e2b47b2f6bde6c8b4d75160.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:102bf71f-7aaf-4176-a62a-2b1d842e4cb9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_toRealLinearMap (f : E →+ F) (hf : Continuous f) : ⇑(f.toRealLinearMap hf) = f :=
  rfl

end AddMonoidHom

/-- Reinterpret a continuous additive equivalence between two real vector spaces
as a continuous real-linear map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/RealVectorSpace/Variant4ab0c065a0ff4764b299c8098b7fc4562f60a7348e2b47b2f6bde6c8b4d75160.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/RealVectorSpace/Variant4ab0c065a0ff4764b299c8098b7fc4562f60a7348e2b47b2f6bde6c8b4d75160.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `291475058122b0b2ab0036ffb18ac8d05f76ce6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
