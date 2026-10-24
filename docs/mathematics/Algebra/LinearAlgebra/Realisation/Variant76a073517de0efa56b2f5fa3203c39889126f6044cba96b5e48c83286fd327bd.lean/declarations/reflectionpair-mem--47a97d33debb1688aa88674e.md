# reflectionPair_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "61c5a78924657bcf15c3fa4c05b3c9967e7bcb1e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 396,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/76/76a073517de0efa56b2f5fa3203c39889126f6044cba96b5e48c83286fd327bd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f233ccfe-c1e0-67a1-c7a6-2a8b2b69acee",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4f47fd64-50ea-8480-fadb-0d7f7e25dc5a",
  "kind": "lemma",
  "lexical_name": "reflectionPair_mem",
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
  "slug": "reflectionpair-mem--47a97d33debb1688aa88674e",
  "source": {
    "blob": "61c5a78924657bcf15c3fa4c05b3c9967e7bcb1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 411,
    "line": 396,
    "path": "GRWTSK/Algebra/LinearAlgebra/Realisation/Variant76a073517de0efa56b2f5fa3203c39889126f6044cba96b5e48c83286fd327bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:47a97d33debb1688aa88674e334731e19c734679cee6cd5ceb645ba82227cb41",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Realisation/Variant76a073517de0efa56b2f5fa3203c39889126f6044cba96b5e48c83286fd327bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f47fd64-50ea-8480-fadb-0d7f7e25dc5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 396–411.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma reflectionPair_mem {p : M × N} (hp : p ∈ rl.idx) :
    rl.reflectionPair hp ∈ rl.weylGroup := by
  obtain ⟨w, hw, i, rfl⟩ := id hp
  suffices rl.reflectionPair hp = w * (rl.reflection i, rl.coreflection i) * w⁻¹ by
    rw [this]
    exact mul_mem (mul_mem hw <| rl.mem_weyl i) (inv_mem hw)
  have h₁ (x : M) : rl.pairing (w.1.symm x) (rl.sCoroot i) = rl.pairing x (w.2 (rl.sCoroot i)) := by
    simpa using (rl.pairing_apply_apply_of_mem_weyl hw (w.1.symm x) (rl.sCoroot i)).symm
  have h₂ (y : N) : rl.pairing (rl.sRoot i) (w.2.symm y) = rl.pairing (w.1 (rl.sRoot i)) y := by
    simpa using (rl.pairing_apply_apply_of_mem_weyl hw (rl.sRoot i) (w.2.symm y)).symm
  ext
  · simp [reflectionPair, Module.reflection_apply, rl.reflection_apply, h₁]
  · simp [reflectionPair, Module.reflection_apply, rl.coreflection_apply, h₂]

variable [CharZero R] [IsDomain R]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Realisation/Variant76a073517de0efa56b2f5fa3203c39889126f6044cba96b5e48c83286fd327bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Realisation/Variant76a073517de0efa56b2f5fa3203c39889126f6044cba96b5e48c83286fd327bd.lean#L396).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61c5a78924657bcf15c3fa4c05b3c9967e7bcb1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
