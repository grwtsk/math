# global_section_iff_sat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9ec2824b58974ea424fe1ee1a29b15558daa8e03",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 214,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/28/2880acbf6f6f368657679a53837e403980ebd299eedc7c7a40256c0cc5c62412.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9202a096-a80d-1e9e-83c2-bb6d141b5ea5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7756621e-cba8-479f-f41c-48874dfa434c",
  "kind": "theorem",
  "lexical_name": "global_section_iff_sat",
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
  "slug": "global-section-iff-sat--a688abd6511c0f2330589f6f",
  "source": {
    "blob": "9ec2824b58974ea424fe1ee1a29b15558daa8e03",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 231,
    "line": 214,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteSheaf/Variant2880acbf6f6f368657679a53837e403980ebd299eedc7c7a40256c0cc5c62412.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a688abd6511c0f2330589f6ff7f92c32173db4a442dffda6dcf088da8804c7b3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FiniteSheaf/Variant2880acbf6f6f368657679a53837e403980ebd299eedc7c7a40256c0cc5c62412.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7756621e-cba8-479f-f41c-48874dfa434c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–231.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem global_section_iff_sat :
    Nonempty (sheaf.Section target) ↔
      Nonempty
        (CompatibleLocalSections
          sheaf.toPresheafData cover) := by
  constructor
  · rintro ⟨global⟩
    exact ⟨localModelsOfGlobal sheaf cover global⟩
  · rintro ⟨family⟩
    exact ⟨sheaf.glue cover family⟩

end SheafData

/--
A coefficient sheaf with an arithmetic Frobenius endomorphism natural under
restriction.  Ring operations live in the section type supplied by a concrete
realization; this contract records the operator law used by the transport.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FiniteSheaf/Variant2880acbf6f6f368657679a53837e403980ebd299eedc7c7a40256c0cc5c62412.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteSheaf/Variant2880acbf6f6f368657679a53837e403980ebd299eedc7c7a40256c0cc5c62412.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ec2824b58974ea424fe1ee1a29b15558daa8e03` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
