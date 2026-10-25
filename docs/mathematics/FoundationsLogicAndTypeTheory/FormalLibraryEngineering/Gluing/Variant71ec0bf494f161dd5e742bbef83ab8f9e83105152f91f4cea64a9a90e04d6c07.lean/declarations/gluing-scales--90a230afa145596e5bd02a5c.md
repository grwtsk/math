# gluing_scales

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e29aa4eef729608cb6fe1b0ee64bda49a19a9a71",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 15,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/71/71ec0bf494f161dd5e742bbef83ab8f9e83105152f91f4cea64a9a90e04d6c07.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6626a4b9-cc06-7877-134e-334709da589d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:df9edf3b-92a7-6d04-d840-f1cbe6622905",
  "kind": "theorem",
  "lexical_name": "gluing_scales",
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
  "slug": "gluing-scales--90a230afa145596e5bd02a5c",
  "source": {
    "blob": "e29aa4eef729608cb6fe1b0ee64bda49a19a9a71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 25,
    "line": 15,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gluing/Variant71ec0bf494f161dd5e742bbef83ab8f9e83105152f91f4cea64a9a90e04d6c07.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90a230afa145596e5bd02a5ceceb45daa78d22f714363aa9cdfe42eaddb2337e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gluing/Variant71ec0bf494f161dd5e742bbef83ab8f9e83105152f91f4cea64a9a90e04d6c07.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df9edf3b-92a7-6d04-d840-f1cbe6622905`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 15–25.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gluing_scales
    {C : Think.Knowledge.Sheaf.FinCat} {V : C.Obj}
    (F : Think.Knowledge.Sheaf.Presheaf C)
    (c : Think.Knowledge.Sheaf.Cover C V)
    (s : (i : c.I) → F.Sec (c.U i))
    (cert : Think.Knowledge.Sheaf.GluingCertificate F c s) :
    ∀ n : Nat, ScaledGluing F c s n :=
by
  exact atScale_of_base (Think.Knowledge.Sheaf.gluing_sound F c s cert)

end Think.Epistemology.Induction
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gluing/Variant71ec0bf494f161dd5e742bbef83ab8f9e83105152f91f4cea64a9a90e04d6c07.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gluing/Variant71ec0bf494f161dd5e742bbef83ab8f9e83105152f91f4cea64a9a90e04d6c07.lean#L15).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e29aa4eef729608cb6fe1b0ee64bda49a19a9a71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
