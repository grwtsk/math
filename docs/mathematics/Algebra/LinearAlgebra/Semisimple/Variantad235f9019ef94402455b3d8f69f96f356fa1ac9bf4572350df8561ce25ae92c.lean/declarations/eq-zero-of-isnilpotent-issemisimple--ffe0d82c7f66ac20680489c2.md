# eq_zero_of_isNilpotent_isSemisimple

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b976c2a9dcadd47ca46fb0eafce81f837e391151",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 125,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ad/ad235f9019ef94402455b3d8f69f96f356fa1ac9bf4572350df8561ce25ae92c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1bcaf2dc-76fe-d7d4-cf8c-585c32a6e043",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:52494640-649a-3a73-6927-3fe681e6bc6d",
  "kind": "lemma",
  "lexical_name": "eq_zero_of_isNilpotent_isSemisimple",
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
  "slug": "eq-zero-of-isnilpotent-issemisimple--ffe0d82c7f66ac20680489c2",
  "source": {
    "blob": "b976c2a9dcadd47ca46fb0eafce81f837e391151",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 125,
    "path": "GRWTSK/Algebra/LinearAlgebra/Semisimple/Variantad235f9019ef94402455b3d8f69f96f356fa1ac9bf4572350df8561ce25ae92c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ffe0d82c7f66ac20680489c238b97307f5d1f0cc9a507163961911b065c92800",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Semisimple/Variantad235f9019ef94402455b3d8f69f96f356fa1ac9bf4572350df8561ce25ae92c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52494640-649a-3a73-6927-3fe681e6bc6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eq_zero_of_isNilpotent_isSemisimple (hn : IsNilpotent f) (hs : f.IsSemisimple) : f = 0 := by
  have ⟨n, h0⟩ := hn
  rw [← aeval_X (R := R) f]; rw [← aeval_X_pow (R := R) f] at h0
  rw [← RingHom.mem_ker, ← AEval.annihilator_eq_ker_aeval (M := M)] at h0 ⊢
  exact hs.annihilator_isRadical _ _ ⟨n, h0⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Semisimple/Variantad235f9019ef94402455b3d8f69f96f356fa1ac9bf4572350df8561ce25ae92c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Semisimple/Variantad235f9019ef94402455b3d8f69f96f356fa1ac9bf4572350df8561ce25ae92c.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b976c2a9dcadd47ca46fb0eafce81f837e391151` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
