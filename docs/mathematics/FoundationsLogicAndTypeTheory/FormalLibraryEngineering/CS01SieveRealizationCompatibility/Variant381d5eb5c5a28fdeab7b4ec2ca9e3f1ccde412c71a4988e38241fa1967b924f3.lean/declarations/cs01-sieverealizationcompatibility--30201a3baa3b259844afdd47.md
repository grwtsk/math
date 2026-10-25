# cs01_sieveRealizationCompatibility

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c975bbb8820a31682a9677c5f86dbe89eb0d7612",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 6,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/38/381d5eb5c5a28fdeab7b4ec2ca9e3f1ccde412c71a4988e38241fa1967b924f3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:efdd3524-5fb7-45f6-a6b8-8d98384f8926",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:021b854f-f277-417e-0ff8-36c499c08caa",
  "kind": "theorem",
  "lexical_name": "cs01_sieveRealizationCompatibility",
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
  "slug": "cs01-sieverealizationcompatibility--30201a3baa3b259844afdd47",
  "source": {
    "blob": "c975bbb8820a31682a9677c5f86dbe89eb0d7612",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 15,
    "line": 6,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CS01SieveRealizationCompatibility/Variant381d5eb5c5a28fdeab7b4ec2ca9e3f1ccde412c71a4988e38241fa1967b924f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:30201a3baa3b259844afdd4763ea121267de16206056e67fc4b0e00594c8a547",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CS01SieveRealizationCompatibility/Variant381d5eb5c5a28fdeab7b4ec2ca9e3f1ccde412c71a4988e38241fa1967b924f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:021b854f-f277-417e-0ff8-36c499c08caa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 6–15.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cs01_sieveRealizationCompatibility
    (S : RealizationSystem)
    (M : ControlledPlane.ControlledPlaneModel S)
    (SM : ControlledSphericalModel S M)
    (registry : ControlledSphericalResearchRegistry S M SM) :
    CS01Claim SM := by
  rcases registry.witnesses with ⟨W⟩
  exact W.sieveRealizationCompatible

end FCRS.ControlledSpherical.Theorems
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CS01SieveRealizationCompatibility/Variant381d5eb5c5a28fdeab7b4ec2ca9e3f1ccde412c71a4988e38241fa1967b924f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CS01SieveRealizationCompatibility/Variant381d5eb5c5a28fdeab7b4ec2ca9e3f1ccde412c71a4988e38241fa1967b924f3.lean#L6).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c975bbb8820a31682a9677c5f86dbe89eb0d7612` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
