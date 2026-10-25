# phaseOneStaticComposite_valid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9d01a34e-6025-ded2-1faf-1a77d5d0ba47",
  "kind": "theorem",
  "lexical_name": "phaseOneStaticComposite_valid",
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
  "slug": "phaseonestaticcomposite-valid--38c6913e489e2c9860834bd1",
  "source": {
    "blob": "a429b1eb31f4c01006c41129f9fb86a624b75274",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 83,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant08bb43f2d14c5994d71000fe871ea6c37885a33a4c4d200bae425d2b1ea81c51.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:38c6913e489e2c9860834bd146fef2ad559a0a7372d9f82b3185928cac9bcf1c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant08bb43f2d14c5994d71000fe871ea6c37885a33a4c4d200bae425d2b1ea81c51.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9d01a34e-6025-ded2-1faf-1a77d5d0ba47`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem phaseOneStaticComposite_valid :
    PackageImportAcyclic ∧
      Function.Injective
        (fun index ↦
          (phaseOneStaticComposite.projects index).projectId) ∧
      (∀ i j,
        exactBridgeBits i j = true →
          transportBits i j = true ∧
          transportBits j i = true) ∧
      (∀ i j k,
        transportBits i j = true →
          transportBits j k = true →
          transportBits i k = true) := by
  exact
    ⟨packageImportAcyclic,
      phaseOneStaticComposite.projectIdsUnique,
      exactBridge_implies_transport,
      transport_composes⟩

/-- Operational observations and formal proofs remain disjoint constructors. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant08bb43f2d14c5994d71000fe871ea6c37885a33a4c4d200bae425d2b1ea81c51.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Invariants/Variant08bb43f2d14c5994d71000fe871ea6c37885a33a4c4d200bae425d2b1ea81c51.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a429b1eb31f4c01006c41129f9fb86a624b75274` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
