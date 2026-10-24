# succ_dvd_or_succ_dvd_of_succ_sum_dvd_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0ab7447cdc0407a0cd7c1856d1c0ca4fa9d34c44",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 23,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/00/0096c0b5d55f9518ab4af0234308fb872044f05487a5bcacbf4be9cb4b3119a7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ac699765-8794-cf1f-4c3f-df03224ac634",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4ea9d1cb-1c49-a82b-1c05-dfda57b5b43a",
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
  "slug": "succ-dvd-or-succ-dvd-of-succ-sum-dvd-mul--94abd7162a9f2215e0f2a2f9",
  "source": {
    "blob": "0ab7447cdc0407a0cd7c1856d1c0ca4fa9d34c44",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 23,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/NatPrime/Variant0096c0b5d55f9518ab4af0234308fb872044f05487a5bcacbf4be9cb4b3119a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:94abd7162a9f2215e0f2a2f9b00f1532cdbfe4cfc161ab0ba3f902ac8e9604e2",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/NatPrime/Variant0096c0b5d55f9518ab4af0234308fb872044f05487a5bcacbf4be9cb4b3119a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4ea9d1cb-1c49-a82b-1c05-dfda57b5b43a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem succ_dvd_or_succ_dvd_of_succ_sum_dvd_mul {p : ℕ} (p_prime : Nat.Prime p) {m n : ℤ}
    {k l : ℕ} (hpm : ↑(p ^ k) ∣ m) (hpn : ↑(p ^ l) ∣ n) (hpmn : ↑(p ^ (k + l + 1)) ∣ m * n) :
    ↑(p ^ (k + 1)) ∣ m ∨ ↑(p ^ (l + 1)) ∣ n :=
  have hpm' : p ^ k ∣ m.natAbs := Int.natCast_dvd_natCast.1 <| Int.dvd_natAbs.2 hpm
  have hpn' : p ^ l ∣ n.natAbs := Int.natCast_dvd_natCast.1 <| Int.dvd_natAbs.2 hpn
  have hpmn' : p ^ (k + l + 1) ∣ m.natAbs * n.natAbs := by
    rw [← Int.natAbs_mul]; apply Int.natCast_dvd_natCast.1 <| Int.dvd_natAbs.2 hpmn
  let hsd := Nat.succ_dvd_or_succ_dvd_of_succ_sum_dvd_mul p_prime hpm' hpn' hpmn'
  hsd.elim (fun hsd1 => Or.inl (by apply Int.dvd_natAbs.1; apply Int.natCast_dvd_natCast.2 hsd1))
    fun hsd2 => Or.inr (by apply Int.dvd_natAbs.1; apply Int.natCast_dvd_natCast.2 hsd2)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/NatPrime/Variant0096c0b5d55f9518ab4af0234308fb872044f05487a5bcacbf4be9cb4b3119a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/NatPrime/Variant0096c0b5d55f9518ab4af0234308fb872044f05487a5bcacbf4be9cb4b3119a7.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ab7447cdc0407a0cd7c1856d1c0ca4fa9d34c44` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
