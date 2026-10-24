# convergent_eq_conts_a_div_conts_b

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4807bb19a64f59b70ed5880dc86fb3350a5f13ee",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 105,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cd/cdf6297118fccc7b0fd4e52b0410b4454443898fa887e998a14c4b5ec35b8b53.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5979c999-b9b7-dcd1-5527-34cc6ccc94ad",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0cc662a2-dabe-b275-2767-eeeb7c2b35a8",
  "kind": "theorem",
  "lexical_name": "convergent_eq_conts_a_div_conts_b",
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
  "slug": "convergent-eq-conts-a-div-conts-b--ef7a77fadf6321f8c5dde9b5",
  "source": {
    "blob": "4807bb19a64f59b70ed5880dc86fb3350a5f13ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 105,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Translations/Variantcdf6297118fccc7b0fd4e52b0410b4454443898fa887e998a14c4b5ec35b8b53.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef7a77fadf6321f8c5dde9b5c940e720a41692a521b439a8cf9ad56621d4248c",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Translations/Variantcdf6297118fccc7b0fd4e52b0410b4454443898fa887e998a14c4b5ec35b8b53.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0cc662a2-dabe-b275-2767-eeeb7c2b35a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem convergent_eq_conts_a_div_conts_b :
    g.convergents n = (g.continuants n).a / (g.continuants n).b :=
  rfl
#align generalized_continued_fraction.convergent_eq_conts_a_div_conts_b GeneralizedContinuedFraction.convergent_eq_conts_a_div_conts_b

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Translations/Variantcdf6297118fccc7b0fd4e52b0410b4454443898fa887e998a14c4b5ec35b8b53.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Translations/Variantcdf6297118fccc7b0fd4e52b0410b4454443898fa887e998a14c4b5ec35b8b53.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4807bb19a64f59b70ed5880dc86fb3350a5f13ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
