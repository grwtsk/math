# span_gcd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f053ec7c39d5d746a94d16b7a64bcc79b0bb82db",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 353,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/34/34fe13418b83f781cde1f7f71d1a6307d79bdf2eb674a59836472efc794b21a8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a2593758-3e9e-a999-667f-f12302090edb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7b9842ca-66e5-a75f-9ceb-d67918c6533d",
  "kind": "theorem",
  "lexical_name": "span_gcd",
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
  "slug": "span-gcd--63bef153c14a7ab28a3d9d38",
  "source": {
    "blob": "f053ec7c39d5d746a94d16b7a64bcc79b0bb82db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 373,
    "line": 353,
    "path": "GRWTSK/Algebra/LinearAlgebra/PrincipalIdealDomain/Variant34fe13418b83f781cde1f7f71d1a6307d79bdf2eb674a59836472efc794b21a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:63bef153c14a7ab28a3d9d388303133edc7dd80863dd0ddb42a11a5b0429571e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/PrincipalIdealDomain/Variant34fe13418b83f781cde1f7f71d1a6307d79bdf2eb674a59836472efc794b21a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7b9842ca-66e5-a75f-9ceb-d67918c6533d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 353–373.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem span_gcd (x y : R) : span ({gcd x y} : Set R) = span ({x, y} : Set R) := by
  obtain ⟨d, hd⟩ := IsPrincipalIdealRing.principal (span ({x, y} : Set R))
  rw [submodule_span_eq] at hd
  rw [hd]
  suffices Associated d (gcd x y) by
    obtain ⟨D, HD⟩ := this
    rw [← HD]
    exact span_singleton_mul_right_unit D.isUnit _
  apply associated_of_dvd_dvd
  · rw [dvd_gcd_iff]
    constructor <;> rw [← Ideal.mem_span_singleton, ← hd, Ideal.mem_span_pair]
    · use 1, 0
      rw [one_mul, zero_mul, add_zero]
    · use 0, 1
      rw [one_mul, zero_mul, zero_add]
  · obtain ⟨r, s, rfl⟩ : ∃ r s, r * x + s * y = d := by
      rw [← Ideal.mem_span_pair, hd, Ideal.mem_span_singleton]
    apply dvd_add <;> apply dvd_mul_of_dvd_right
    exacts [gcd_dvd_left x y, gcd_dvd_right x y]
#align span_gcd span_gcd

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/PrincipalIdealDomain/Variant34fe13418b83f781cde1f7f71d1a6307d79bdf2eb674a59836472efc794b21a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/PrincipalIdealDomain/Variant34fe13418b83f781cde1f7f71d1a6307d79bdf2eb674a59836472efc794b21a8.lean#L353).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f053ec7c39d5d746a94d16b7a64bcc79b0bb82db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
