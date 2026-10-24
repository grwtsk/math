# prime_p

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ba8e87ace530fe7820b45a776152d53aa47ceb11",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 601,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/88/8850939c43ad5fe9b58d3e19235eca49e0805d1b26772611a5806aa3959c6535.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:373e00b7-89f2-dff9-2c5d-a100ead4ded2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:759da602-3444-8486-f1bd-6483da52b549",
  "kind": "theorem",
  "lexical_name": "prime_p",
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
  "slug": "prime-p--f37f2e9aed506cadc55d87f1",
  "source": {
    "blob": "ba8e87ace530fe7820b45a776152d53aa47ceb11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 606,
    "line": 601,
    "path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicIntegers/Variant8850939c43ad5fe9b58d3e19235eca49e0805d1b26772611a5806aa3959c6535.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f37f2e9aed506cadc55d87f1c08726a1b70fbe677f484b6342ff8159157a3dfe",
  "verification": {
    "reference": "docs/verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicIntegers/Variant8850939c43ad5fe9b58d3e19235eca49e0805d1b26772611a5806aa3959c6535.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:759da602-3444-8486-f1bd-6483da52b549`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 601–606.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem prime_p : Prime (p : ℤ_[p]) := by
  rw [← Ideal.span_singleton_prime, ← maximalIdeal_eq_span_p]
  · infer_instance
  · exact_mod_cast hp.1.ne_zero
#align padic_int.prime_p PadicInt.prime_p

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicIntegers/Variant8850939c43ad5fe9b58d3e19235eca49e0805d1b26772611a5806aa3959c6535.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/PadicIntegers/Variant8850939c43ad5fe9b58d3e19235eca49e0805d1b26772611a5806aa3959c6535.lean#L601).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba8e87ace530fe7820b45a776152d53aa47ceb11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
