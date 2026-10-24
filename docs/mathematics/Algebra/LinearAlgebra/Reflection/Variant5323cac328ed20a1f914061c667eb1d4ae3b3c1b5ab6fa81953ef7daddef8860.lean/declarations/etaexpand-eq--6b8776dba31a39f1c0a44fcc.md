# etaExpand_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9827b08a5d1ddc0e72cf2b491689fff80fd85478",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 214,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/53/5323cac328ed20a1f914061c667eb1d4ae3b3c1b5ab6fa81953ef7daddef8860.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:987fa3a0-ea15-8435-b17b-81a976770b4c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:99cbbb03-ed5b-afec-41f7-63a50b219535",
  "kind": "theorem",
  "lexical_name": "etaExpand_eq",
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
  "slug": "etaexpand-eq--6b8776dba31a39f1c0a44fcc",
  "source": {
    "blob": "9827b08a5d1ddc0e72cf2b491689fff80fd85478",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 214,
    "path": "GRWTSK/Algebra/LinearAlgebra/Reflection/Variant5323cac328ed20a1f914061c667eb1d4ae3b3c1b5ab6fa81953ef7daddef8860.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6b8776dba31a39f1c0a44fccfffc35a30e73a1aa715dcada65c280ad0652b943",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Reflection/Variant5323cac328ed20a1f914061c667eb1d4ae3b3c1b5ab6fa81953ef7daddef8860.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:99cbbb03-ed5b-afec-41f7-63a50b219535`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem etaExpand_eq {m n} (A : Matrix (Fin m) (Fin n) α) : etaExpand A = A := by
  simp_rw [etaExpand, FinVec.etaExpand_eq, Matrix.of]
  -- This to be in the above `simp_rw` before https://github.com/leanprover/lean4/pull/2644
  erw [Equiv.refl_apply]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Reflection/Variant5323cac328ed20a1f914061c667eb1d4ae3b3c1b5ab6fa81953ef7daddef8860.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Reflection/Variant5323cac328ed20a1f914061c667eb1d4ae3b3c1b5ab6fa81953ef7daddef8860.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9827b08a5d1ddc0e72cf2b491689fff80fd85478` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
