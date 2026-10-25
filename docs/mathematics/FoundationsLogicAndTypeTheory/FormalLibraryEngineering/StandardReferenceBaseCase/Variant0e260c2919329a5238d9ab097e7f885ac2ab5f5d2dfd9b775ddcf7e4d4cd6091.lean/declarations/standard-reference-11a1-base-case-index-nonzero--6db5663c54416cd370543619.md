# standard_reference_11a1_base_case_index_nonzero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5d73f80e-eb00-ea82-d866-e9cb3e2860ca",
  "kind": "theorem",
  "lexical_name": "standard_reference_11a1_base_case_index_nonzero",
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
  "slug": "standard-reference-11a1-base-case-index-nonzero--6db5663c54416cd370543619",
  "source": {
    "blob": "abd8dba8d43ed848f797ffe6e588f038a0991da3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 43,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StandardReferenceBaseCase/Variant0e260c2919329a5238d9ab097e7f885ac2ab5f5d2dfd9b775ddcf7e4d4cd6091.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6db5663c54416cd370543619f05bf88a6e42f48b91620caf9217dfc19476d245",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StandardReferenceBaseCase/Variant0e260c2919329a5238d9ab097e7f885ac2ab5f5d2dfd9b775ddcf7e4d4cd6091.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5d73f80e-eb00-ea82-d866-e9cb3e2860ca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem standard_reference_11a1_base_case_index_nonzero :
    Folder.DerivedSheaf.standardReference11a1BaseCase.kIndex.indexClass.Nonzero :=
  Folder.DerivedSheaf.standard_reference_11a1_base_case_index_nonzero

end DerivedSheaf
end Theorem
end Folder
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StandardReferenceBaseCase/Variant0e260c2919329a5238d9ab097e7f885ac2ab5f5d2dfd9b775ddcf7e4d4cd6091.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StandardReferenceBaseCase/Variant0e260c2919329a5238d9ab097e7f885ac2ab5f5d2dfd9b775ddcf7e4d4cd6091.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `abd8dba8d43ed848f797ffe6e588f038a0991da3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
