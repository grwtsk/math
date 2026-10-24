# succ_dvd_or_succ_dvd_of_succ_sum_dvd_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9e7da02c1f206dd8c9490b6aa470fb98e013c31d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 240,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2e/2e5f3c16a6e74b44fce13e1d73ef2d3a4c838548fdee3289cccb70d6e48bdf4a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:58ad080f-d391-695d-c031-737f62552ab2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d20a51b4-b11b-bf60-40ce-386d63b72574",
  "kind": "theorem",
  "lexical_name": "succ_dvd_or_succ_dvd_of_succ_sum_dvd_mul",
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
  "slug": "succ-dvd-or-succ-dvd-of-succ-sum-dvd-mul--38351df5520d1ddbbd91a93a",
  "source": {
    "blob": "9e7da02c1f206dd8c9490b6aa470fb98e013c31d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 255,
    "line": 240,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant2e5f3c16a6e74b44fce13e1d73ef2d3a4c838548fdee3289cccb70d6e48bdf4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:38351df5520d1ddbbd91a93ac43f739e3b000d679ca4c7dadcf6fe42a769dc0b",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Basic/Variant2e5f3c16a6e74b44fce13e1d73ef2d3a4c838548fdee3289cccb70d6e48bdf4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d20a51b4-b11b-bf60-40ce-386d63b72574`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 240–255.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem succ_dvd_or_succ_dvd_of_succ_sum_dvd_mul {p : ℕ} (p_prime : Prime p) {m n k l : ℕ}
    (hpm : p ^ k ∣ m) (hpn : p ^ l ∣ n) (hpmn : p ^ (k + l + 1) ∣ m * n) :
    p ^ (k + 1) ∣ m ∨ p ^ (l + 1) ∣ n := by
  have hpd : p ^ (k + l) * p ∣ m * n := by
      let hpmn' : p ^ (succ (k + l)) ∣ m * n := hpmn
      rwa [pow_succ'] at hpmn'
  have hpd2 : p ∣ m * n / p ^ (k + l) := dvd_div_of_mul_dvd hpd
  have hpd3 : p ∣ m * n / (p ^ k * p ^ l) := by simpa [pow_add] using hpd2
  have hpd4 : p ∣ m / p ^ k * (n / p ^ l) := by simpa [Nat.div_mul_div_comm hpm hpn] using hpd3
  have hpd5 : p ∣ m / p ^ k ∨ p ∣ n / p ^ l :=
    (Prime.dvd_mul p_prime).1 hpd4
  suffices p ^ k * p ∣ m ∨ p ^ l * p ∣ n by rwa [_root_.pow_succ, _root_.pow_succ]
  exact hpd5.elim (fun h : p ∣ m / p ^ k => Or.inl <| mul_dvd_of_dvd_div hpm h)
    fun h : p ∣ n / p ^ l => Or.inr <| mul_dvd_of_dvd_div hpn h

end Nat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Basic/Variant2e5f3c16a6e74b44fce13e1d73ef2d3a4c838548fdee3289cccb70d6e48bdf4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variant2e5f3c16a6e74b44fce13e1d73ef2d3a4c838548fdee3289cccb70d6e48bdf4a.lean#L240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e7da02c1f206dd8c9490b6aa470fb98e013c31d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
