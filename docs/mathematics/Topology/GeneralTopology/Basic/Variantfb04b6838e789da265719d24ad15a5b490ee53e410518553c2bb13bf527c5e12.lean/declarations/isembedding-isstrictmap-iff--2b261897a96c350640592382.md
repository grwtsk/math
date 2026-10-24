# IsEmbedding.isStrictMap_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b7493077416edadeef4ca0924721e133776001f8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 137,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fb/fb04b6838e789da265719d24ad15a5b490ee53e410518553c2bb13bf527c5e12.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:668ec3f4-0fc7-3348-ad1b-f7df0fccb65f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:672022f5-08d2-9bdb-88ae-33ced2d37606",
  "kind": "lemma",
  "lexical_name": "IsEmbedding.isStrictMap_iff",
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
  "slug": "isembedding-isstrictmap-iff--2b261897a96c350640592382",
  "source": {
    "blob": "b7493077416edadeef4ca0924721e133776001f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 137,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantfb04b6838e789da265719d24ad15a5b490ee53e410518553c2bb13bf527c5e12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b261897a96c3506405923828c294696ef91bff4523a57d1edd80b26fec8ffd1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantfb04b6838e789da265719d24ad15a5b490ee53e410518553c2bb13bf527c5e12.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:672022f5-08d2-9bdb-88ae-33ced2d37606`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsEmbedding.isStrictMap_iff (g_emb : IsEmbedding g) :
    IsStrictMap f ↔ IsStrictMap (g ∘ f) := by
  set Φ : Quotient (Setoid.ker (g ∘ f)) ≃ₜ Quotient (Setoid.ker (f)) :=
    Homeomorph.Quotient.congrRight (fun _ _ ↦ by simp [g_emb.injective.eq_iff])
  have key : g ∘ kerLift f ∘ Φ = kerLift (g ∘ f) :=
    funext <| Quotient.ind fun _ ↦ rfl
  simp_rw [isStrictMap_iff_isEmbedding_kerLift, ← g_emb.of_comp_iff, ← key]
  exact ⟨fun H ↦ H.comp Φ.isEmbedding,
    fun H ↦ by simpa [comp_assoc] using H.comp Φ.symm.isEmbedding⟩

/-- An embedding is strict. See also `isEmbedding_iff_isStrictMap_injective`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantfb04b6838e789da265719d24ad15a5b490ee53e410518553c2bb13bf527c5e12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantfb04b6838e789da265719d24ad15a5b490ee53e410518553c2bb13bf527c5e12.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7493077416edadeef4ca0924721e133776001f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
