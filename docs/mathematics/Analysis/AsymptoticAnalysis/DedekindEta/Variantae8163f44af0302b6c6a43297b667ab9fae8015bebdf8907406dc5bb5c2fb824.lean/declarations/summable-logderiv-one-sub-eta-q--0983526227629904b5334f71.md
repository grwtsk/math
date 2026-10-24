# summable_logDeriv_one_sub_eta_q

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:31c642e9-705b-af76-c452-25cfe99964c6",
  "kind": "lemma",
  "lexical_name": "summable_logDeriv_one_sub_eta_q",
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
  "slug": "summable-logderiv-one-sub-eta-q--0983526227629904b5334f71",
  "source": {
    "blob": "4752cbb504378c5b719939f5eaab0007e09dfb93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 170,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/DedekindEta/Variantae8163f44af0302b6c6a43297b667ab9fae8015bebdf8907406dc5bb5c2fb824.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0983526227629904b5334f714371059c99da27119042d5371024bbb54b221198",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/DedekindEta/Variantae8163f44af0302b6c6a43297b667ab9fae8015bebdf8907406dc5bb5c2fb824.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:31c642e9-705b-af76-c452-25cfe99964c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma summable_logDeriv_one_sub_eta_q {z : ℂ} (hz : z ∈ ℍₒ) :
    Summable fun i ↦ logDeriv (1 - eta_q i ·) z := by
  have := summable_norm_pow_mul_geometric_div_one_sub 1 (norm_qParam_lt_one 1 ⟨z, hz⟩)
  convert! ((summable_nat_add_iff 1).mpr this).mul_left (-2 * π * I) using 1 with n
  grind [one_sub_eta_logDeriv_eq]

open EisensteinSeries in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/DedekindEta/Variantae8163f44af0302b6c6a43297b667ab9fae8015bebdf8907406dc5bb5c2fb824.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/DedekindEta/Variantae8163f44af0302b6c6a43297b667ab9fae8015bebdf8907406dc5bb5c2fb824.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4752cbb504378c5b719939f5eaab0007e09dfb93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
