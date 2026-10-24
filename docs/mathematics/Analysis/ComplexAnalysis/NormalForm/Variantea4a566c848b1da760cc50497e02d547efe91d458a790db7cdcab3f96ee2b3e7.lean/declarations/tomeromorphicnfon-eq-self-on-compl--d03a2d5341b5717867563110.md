# toMeromorphicNFOn_eq_self_on_compl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2adb6c6b-9ba3-6891-da00-361b634cbe3f",
  "kind": "lemma",
  "lexical_name": "toMeromorphicNFOn_eq_self_on_compl",
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
  "slug": "tomeromorphicnfon-eq-self-on-compl--d03a2d5341b5717867563110",
  "source": {
    "blob": "72dabaddb6ccd3e9d8e79c13d979a5764648d550",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 565,
    "line": 557,
    "path": "GRWTSK/Analysis/ComplexAnalysis/NormalForm/Variantea4a566c848b1da760cc50497e02d547efe91d458a790db7cdcab3f96ee2b3e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d03a2d5341b5717867563110619c103855ee3234e6a57fc02647a4c4b03d9622",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/NormalForm/Variantea4a566c848b1da760cc50497e02d547efe91d458a790db7cdcab3f96ee2b3e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2adb6c6b-9ba3-6891-da00-361b634cbe3f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 557–565.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma toMeromorphicNFOn_eq_self_on_compl (hf : MeromorphicOn f U) :
    Set.EqOn (toMeromorphicNFOn f U) f Uᶜ := by
  intro x hx
  simp_all [toMeromorphicNFOn]

/--
Conversion to normal form on `U` changes the value only along a discrete subset
of `U`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/NormalForm/Variantea4a566c848b1da760cc50497e02d547efe91d458a790db7cdcab3f96ee2b3e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/NormalForm/Variantea4a566c848b1da760cc50497e02d547efe91d458a790db7cdcab3f96ee2b3e7.lean#L557).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72dabaddb6ccd3e9d8e79c13d979a5764648d550` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
