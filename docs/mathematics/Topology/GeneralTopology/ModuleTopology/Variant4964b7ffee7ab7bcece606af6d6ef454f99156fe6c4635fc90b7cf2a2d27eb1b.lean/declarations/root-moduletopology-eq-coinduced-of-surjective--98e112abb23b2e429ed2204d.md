# _root_.ModuleTopology.eq_coinduced_of_surjectiveₛₗ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b52807b13a5e31d0b16b74c1fea3fa29137fdcc4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 496,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/49/4964b7ffee7ab7bcece606af6d6ef454f99156fe6c4635fc90b7cf2a2d27eb1b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:12ae9b25-d730-34af-4995-ba78639ca256",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6c8767c4-8406-9f39-a84e-4bad7b04f935",
  "kind": "lemma",
  "lexical_name": "_root_.ModuleTopology.eq_coinduced_of_surjectiveₛₗ",
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
  "slug": "root-moduletopology-eq-coinduced-of-surjective--98e112abb23b2e429ed2204d",
  "source": {
    "blob": "b52807b13a5e31d0b16b74c1fea3fa29137fdcc4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 502,
    "line": 496,
    "path": "GRWTSK/Topology/GeneralTopology/ModuleTopology/Variant4964b7ffee7ab7bcece606af6d6ef454f99156fe6c4635fc90b7cf2a2d27eb1b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:98e112abb23b2e429ed2204d5c3bd9034ddec6d269b29af7301032596f663934",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ModuleTopology/Variant4964b7ffee7ab7bcece606af6d6ef454f99156fe6c4635fc90b7cf2a2d27eb1b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6c8767c4-8406-9f39-a84e-4bad7b04f935`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 496–502.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.ModuleTopology.eq_coinduced_of_surjectiveₛₗ
    {σ : R →+* S} (hσ : IsOpenQuotientMap σ) (φ : A →ₛₗ[σ] B') (hφ : Function.Surjective φ) :
    moduleTopology S B' = TopologicalSpace.coinduced φ inferInstance := by
  let : TopologicalSpace B' := moduleTopology S B'
  have : IsModuleTopology S B' := ⟨rfl⟩
  exact (isQuotientMap_of_surjectiveₛₗ hσ φ hφ).eq_coinduced

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ModuleTopology/Variant4964b7ffee7ab7bcece606af6d6ef454f99156fe6c4635fc90b7cf2a2d27eb1b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ModuleTopology/Variant4964b7ffee7ab7bcece606af6d6ef454f99156fe6c4635fc90b7cf2a2d27eb1b.lean#L496).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b52807b13a5e31d0b16b74c1fea3fa29137fdcc4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
