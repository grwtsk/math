# reciprocalZeta_hasDerivAt_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "32604f3eb2820bc41cce2afa998b148ab927a190",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 77,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f0/f0f01b75d774e0e8a9b08655366be0f83e8f174fdcde3453c8ccafc329383e72.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a556a7f1-d2ca-a6c5-47a5-9aef67ca9cf5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:68f25673-9c04-fb1e-0a05-587d29dbb897",
  "kind": "theorem",
  "lexical_name": "reciprocalZeta_hasDerivAt_zero",
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
  "slug": "reciprocalzeta-hasderivat-zero--b630dd9ac1fed0e0591dc78c",
  "source": {
    "blob": "32604f3eb2820bc41cce2afa998b148ab927a190",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 77,
    "path": "GRWTSK/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variantf0f01b75d774e0e8a9b08655366be0f83e8f174fdcde3453c8ccafc329383e72.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b630dd9ac1fed0e0591dc78c5a7024c5930651e0e12cfee5587cbc258468e58a",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variantf0f01b75d774e0e8a9b08655366be0f83e8f174fdcde3453c8ccafc329383e72.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:68f25673-9c04-fb1e-0a05-587d29dbb897`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reciprocalZeta_hasDerivAt_zero : HasDerivAt reciprocalZeta 1 0 := by
  have h := (hasDerivAt_id (0 : ℂ)).div zetaPoleFactor_analyticAt_zero.differentiableAt.hasDerivAt
    (by simp : zetaPoleFactor 0 ≠ 0)
  have hd : HasDerivAt (fun s : ℂ => s / zetaPoleFactor s) 1 0 := by
    simpa only [zetaPoleFactor_zero, mul_one, id_eq, zero_mul, sub_zero, one_pow,
      div_one, Pi.div_apply] using! h
  exact hd.congr_of_eventuallyEq (Filter.Eventually.of_forall reciprocalZeta_eq_div_factor)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variantf0f01b75d774e0e8a9b08655366be0f83e8f174fdcde3453c8ccafc329383e72.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/MobiusReciprocalPoleStatements/Variantf0f01b75d774e0e8a9b08655366be0f83e8f174fdcde3453c8ccafc329383e72.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32604f3eb2820bc41cce2afa998b148ab927a190` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
