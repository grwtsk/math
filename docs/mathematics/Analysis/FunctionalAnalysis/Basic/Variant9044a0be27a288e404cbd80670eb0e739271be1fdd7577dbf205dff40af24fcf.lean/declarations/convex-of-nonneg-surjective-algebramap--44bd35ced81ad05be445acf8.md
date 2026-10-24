# convex_of_nonneg_surjective_algebraMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "74588106f9753245de719836b31e43fdad4293ab",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 641,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/90/9044a0be27a288e404cbd80670eb0e739271be1fdd7577dbf205dff40af24fcf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:292adc17-1cf0-3362-17df-a3ed13f21a1e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a0a9135b-e47c-1648-55d8-2678490c690f",
  "kind": "lemma",
  "lexical_name": "convex_of_nonneg_surjective_algebraMap",
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
  "slug": "convex-of-nonneg-surjective-algebramap--44bd35ced81ad05be445acf8",
  "source": {
    "blob": "74588106f9753245de719836b31e43fdad4293ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 654,
    "line": 641,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Basic/Variant9044a0be27a288e404cbd80670eb0e739271be1fdd7577dbf205dff40af24fcf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:44bd35ced81ad05be445acf82f48972241250b4fb27411c4cf6ac50752dadd2a",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Basic/Variant9044a0be27a288e404cbd80670eb0e739271be1fdd7577dbf205dff40af24fcf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a0a9135b-e47c-1648-55d8-2678490c690f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 641–654.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma convex_of_nonneg_surjective_algebraMap [FaithfulSMul R A] {s : Set M}
    (halg : Set.Ici 0 ⊆ algebraMap R A '' Set.Ici 0) (hs : Convex R s) :
    Convex A s := by
  simp only [Convex, StarConvex] at hs ⊢
  intro u hu v hv a b ha hb hab
  obtain ⟨c, hc1, hc2⟩ := halg ha
  obtain ⟨d, hd1, hd2⟩ := halg hb
  convert hs hu hv hc1 hd1 _
  · rw [← hc2, algebraMap_smul]
  · rw [← hd2, algebraMap_smul]
  rw [← hc2, ← hd2, ← algebraMap.coe_add] at hab
  exact (FaithfulSMul.algebraMap_eq_one_iff R A).mp hab

end CommSemiring
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Basic/Variant9044a0be27a288e404cbd80670eb0e739271be1fdd7577dbf205dff40af24fcf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Basic/Variant9044a0be27a288e404cbd80670eb0e739271be1fdd7577dbf205dff40af24fcf.lean#L641).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74588106f9753245de719836b31e43fdad4293ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
