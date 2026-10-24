# injective_ringHomComp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b1946164d82bcbd41f15e053d24ac92b20fa6411",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 439,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/93/93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e0af5d59-e429-4473-2fcf-db461a27f3c4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e975d77e-33cc-49bc-94c8-ec3b905e9902",
  "kind": "lemma",
  "lexical_name": "injective_ringHomComp",
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
  "slug": "injective-ringhomcomp--b300599ccbea899a3be7e518",
  "source": {
    "blob": "b1946164d82bcbd41f15e053d24ac92b20fa6411",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 444,
    "line": 439,
    "path": "GRWTSK/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b300599ccbea899a3be7e518fcaf979360835b51a3a7682c49f5f066c12cb40f",
  "verification": {
    "reference": "docs/verification/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e975d77e-33cc-49bc-94c8-ec3b905e9902`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 439–444.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma injective_ringHomComp {f : R' →+* R''} (hf : Function.Injective f) :
    Function.Injective (ringHomComp (R := R) · f) := by
  simpa
    only [Function.Injective, MulChar.ext_iff, ringHomComp, coe_mk, MonoidHom.coe_mk, OneHom.coe_mk]
    using fun χ χ' h a ↦ hf (h a)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean#L439).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1946164d82bcbd41f15e053d24ac92b20fa6411` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
