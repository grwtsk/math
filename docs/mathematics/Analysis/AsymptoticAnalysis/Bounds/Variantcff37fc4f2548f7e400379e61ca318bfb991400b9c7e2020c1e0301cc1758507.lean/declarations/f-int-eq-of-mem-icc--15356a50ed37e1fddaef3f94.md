# F_int_eq_of_mem_Icc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c129ec1b-1894-0539-445c-8c65310a93d6",
  "kind": "lemma",
  "lexical_name": "F_int_eq_of_mem_Icc",
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
  "slug": "f-int-eq-of-mem-icc--15356a50ed37e1fddaef3f94",
  "source": {
    "blob": "1fccd6ce38c5a3fa54d9987f1d899a126fc157fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 246,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Bounds/Variantcff37fc4f2548f7e400379e61ca318bfb991400b9c7e2020c1e0301cc1758507.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:15356a50ed37e1fddaef3f94bd2bfe1c20c478a7b4b59fcff3ef665202899a27",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Bounds/Variantcff37fc4f2548f7e400379e61ca318bfb991400b9c7e2020c1e0301cc1758507.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c129ec1b-1894-0539-445c-8c65310a93d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 246–254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma F_int_eq_of_mem_Icc (k : ℕ) {a : ℝ} (ha : a ∈ Icc 0 1) {t : ℝ} (ht : 0 < t) :
    F_int k a t = (F_nat k a t) + (F_nat k (1 - a) t) := by
  simp only [F_int, F_nat, Function.Periodic.lift_coe]
  convert ((summable_f_nat k a ht).hasSum.int_rec (summable_f_nat k (1 - a) ht).hasSum).tsum_eq
    using 3 with n
  cases n
  · rw [f_int_ofNat _ ha.1]
  · rw [f_int_negSucc _ ha.2]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Bounds/Variantcff37fc4f2548f7e400379e61ca318bfb991400b9c7e2020c1e0301cc1758507.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Bounds/Variantcff37fc4f2548f7e400379e61ca318bfb991400b9c7e2020c1e0301cc1758507.lean#L246).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1fccd6ce38c5a3fa54d9987f1d899a126fc157fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
