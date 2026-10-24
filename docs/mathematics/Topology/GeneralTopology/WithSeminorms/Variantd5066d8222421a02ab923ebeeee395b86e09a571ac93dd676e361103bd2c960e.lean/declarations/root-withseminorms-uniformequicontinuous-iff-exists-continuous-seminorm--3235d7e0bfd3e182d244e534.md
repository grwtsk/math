# _root_.WithSeminorms.uniformEquicontinuous_iff_exists_continuous_seminorm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "af3c6435eb55934a843ce57e4e04074dff7beb2f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 647,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d5066d8222421a02ab923ebeeee395b86e09a571ac93dd676e361103bd2c960e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c3ee6fe6-f935-8fc7-75a8-aca11afbc045",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6a36d2c2-f566-467c-d18d-724814f42a30",
  "kind": "theorem",
  "lexical_name": "_root_.WithSeminorms.uniformEquicontinuous_iff_exists_continuous_seminorm",
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
  "slug": "root-withseminorms-uniformequicontinuous-iff-exists-continuous-seminorm--3235d7e0bfd3e182d244e534",
  "source": {
    "blob": "af3c6435eb55934a843ce57e4e04074dff7beb2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 654,
    "line": 647,
    "path": "GRWTSK/Topology/GeneralTopology/WithSeminorms/Variantd5066d8222421a02ab923ebeeee395b86e09a571ac93dd676e361103bd2c960e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3235d7e0bfd3e182d244e534e33f58d66f177e3c582a80caafb5fe793e1a2983",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/WithSeminorms/Variantd5066d8222421a02ab923ebeeee395b86e09a571ac93dd676e361103bd2c960e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6a36d2c2-f566-467c-d18d-724814f42a30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 647–654.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.WithSeminorms.uniformEquicontinuous_iff_exists_continuous_seminorm {κ : Type*}
    {q : SeminormFamily 𝕜₂ F ι'} [UniformSpace E] [IsUniformAddGroup E] [u : UniformSpace F]
    [IsUniformAddGroup F] (hq : WithSeminorms q) [ContinuousSMul 𝕜 E]
    (f : κ → E →ₛₗ[σ₁₂] F) :
    UniformEquicontinuous ((↑) ∘ f) ↔
    ∀ i, ∃ p : Seminorm 𝕜 E, Continuous p ∧ ∀ k, (q i).comp (f k) ≤ p :=
  (hq.equicontinuous_TFAE f).out 2 3

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/WithSeminorms/Variantd5066d8222421a02ab923ebeeee395b86e09a571ac93dd676e361103bd2c960e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/WithSeminorms/Variantd5066d8222421a02ab923ebeeee395b86e09a571ac93dd676e361103bd2c960e.lean#L647).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af3c6435eb55934a843ce57e4e04074dff7beb2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
