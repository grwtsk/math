# toFun_unique'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9e9cdccb270bfa4a2f909181e931e40309c973e4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 155,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7e/7ebfb3362d5a8ae5e0a47cb525209acfb0786c4986385800e70d8e2d7e2146f8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3f4ec5df-d581-71ed-b39b-0bdc41c9bcac",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:456cdd7b-9a33-bc8f-6b2f-48d8a3009f5d",
  "kind": "theorem",
  "lexical_name": "toFun_unique'",
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
  "slug": "tofun-unique--61daab53df2d1fa8a7a625d8",
  "source": {
    "blob": "9e9cdccb270bfa4a2f909181e931e40309c973e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 155,
    "path": "GRWTSK/NumberTheory/CyclotomicCharacter/Variant7ebfb3362d5a8ae5e0a47cb525209acfb0786c4986385800e70d8e2d7e2146f8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:61daab53df2d1fa8a7a625d8625e22a7e88b21f78a30318c5536dfbc219fe829",
  "verification": {
    "reference": "docs/verification/NumberTheory/CyclotomicCharacter/Variant7ebfb3362d5a8ae5e0a47cb525209acfb0786c4986385800e70d8e2d7e2146f8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:456cdd7b-9a33-bc8f-6b2f-48d8a3009f5d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem toFun_unique' (g : L ≃+* L) (c : ZMod (Nat.card (rootsOfUnity n L)))
    (hc : ∀ t ∈ rootsOfUnity n L, g t = t ^ c.val) : c = χ₀ n g :=
  toFun_unique n g c (fun ⟨_, ht⟩ ↦ hc _ ht)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/CyclotomicCharacter/Variant7ebfb3362d5a8ae5e0a47cb525209acfb0786c4986385800e70d8e2d7e2146f8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/CyclotomicCharacter/Variant7ebfb3362d5a8ae5e0a47cb525209acfb0786c4986385800e70d8e2d7e2146f8.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e9cdccb270bfa4a2f909181e931e40309c973e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
