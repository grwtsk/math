# mulSalemSpencer_mul_right_iff₀

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f6021f353e791fb4e22acf9bb44cc3deff732250",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 257,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0c/0c5b14a586c9ada57a7f4033eca21fe6a29bab801fcdf2738a063bb4c4174f6f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e5002a38-37db-8cc7-c313-16a82209dd95",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:75fe882c-83da-665b-bde8-e53b1527bddb",
  "kind": "theorem",
  "lexical_name": "mulSalemSpencer_mul_right_iff₀",
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
  "slug": "mulsalemspencer-mul-right-iff--2d7dc74a361eecd3cfc1e9ee",
  "source": {
    "blob": "f6021f353e791fb4e22acf9bb44cc3deff732250",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 269,
    "line": 257,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SalemSpencer/Variant0c5b14a586c9ada57a7f4033eca21fe6a29bab801fcdf2738a063bb4c4174f6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d7dc74a361eecd3cfc1e9ee0058419e3f1b10e6b681fda47e1b1ff041c51dd2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/SalemSpencer/Variant0c5b14a586c9ada57a7f4033eca21fe6a29bab801fcdf2738a063bb4c4174f6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:75fe882c-83da-665b-bde8-e53b1527bddb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mulSalemSpencer_mul_right_iff₀ (ha : a ≠ 0) :
    MulSalemSpencer ((· * a) '' s) ↔ MulSalemSpencer s :=
  ⟨fun hs b c d hb hc hd h =>
    mul_right_cancel₀ ha
      (hs (Set.mem_image_of_mem _ hb) (Set.mem_image_of_mem _ hc) (Set.mem_image_of_mem _ hd) <| by
        rw [mul_mul_mul_comm, h, mul_mul_mul_comm]),
    fun hs => hs.mul_right₀ ha⟩
#align mul_salem_spencer_mul_right_iff₀ mulSalemSpencer_mul_right_iff₀

end CancelCommMonoidWithZero

section Nat

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/SalemSpencer/Variant0c5b14a586c9ada57a7f4033eca21fe6a29bab801fcdf2738a063bb4c4174f6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/SalemSpencer/Variant0c5b14a586c9ada57a7f4033eca21fe6a29bab801fcdf2738a063bb4c4174f6f.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f6021f353e791fb4e22acf9bb44cc3deff732250` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
