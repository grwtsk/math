# riemannZetaZeros_codiscreteWithin_compl_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:70f930d2-1fc7-a90c-21b7-123e8c27825f",
  "kind": "lemma",
  "lexical_name": "riemannZetaZeros_codiscreteWithin_compl_one",
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
  "slug": "riemannzetazeros-codiscretewithin-compl-one--2b9eb87d27c5f57787fb018b",
  "source": {
    "blob": "7216460a440a2398b75ad7edb9ebff33593db489",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 50,
    "path": "GRWTSK/NumberTheory/ZetaZeros/Variant8550d60d0cb3d4be48b0f46ae2b41e9d7d6bffd0d54622f50fbc861e1073ffed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b9eb87d27c5f57787fb018b2afa7ca544d196ac4b2e6f67def709659099f094",
  "verification": {
    "reference": "docs/verification/NumberTheory/ZetaZeros/Variant8550d60d0cb3d4be48b0f46ae2b41e9d7d6bffd0d54622f50fbc861e1073ffed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:70f930d2-1fc7-a90c-21b7-123e8c27825f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma riemannZetaZeros_codiscreteWithin_compl_one :
    riemannZetaZerosᶜ ∈ Filter.codiscreteWithin {1}ᶜ := by
  refine analyticOn_riemannZeta.preimage_zero_mem_codiscreteWithin (x := 2) ?_ (by simp) ?_
  · exact riemannZeta_ne_zero_of_one_le_re Nat.one_le_ofNat
  · exact isConnected_compl_singleton_of_one_lt_rank (by simp) 1

/-- The complement of the zero set of `riemannZeta` is codiscrete. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/ZetaZeros/Variant8550d60d0cb3d4be48b0f46ae2b41e9d7d6bffd0d54622f50fbc861e1073ffed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ZetaZeros/Variant8550d60d0cb3d4be48b0f46ae2b41e9d7d6bffd0d54622f50fbc861e1073ffed.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7216460a440a2398b75ad7edb9ebff33593db489` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
