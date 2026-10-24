# num_dvd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ff3a70d2a3b1c62ae9ad250768735f02faa6b5b7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 19,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/90/9080ee6ba1e77c4870be14909e5ca84de1a5c09c946282919f3622ffdc314692.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7dbbea9e-fa5d-e3da-d348-d2145c993e14",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:de064284-08b8-d90c-3d14-dc473db670dd",
  "kind": "theorem",
  "lexical_name": "num_dvd",
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
  "slug": "num-dvd--d44550c6ff2acada7f5f5252",
  "source": {
    "blob": "ff3a70d2a3b1c62ae9ad250768735f02faa6b5b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 26,
    "line": 19,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Lemmas/Variant9080ee6ba1e77c4870be14909e5ca84de1a5c09c946282919f3622ffdc314692.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d44550c6ff2acada7f5f5252e79ff59826d13ec6fb3f186d13465f627a704c03",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Lemmas/Variant9080ee6ba1e77c4870be14909e5ca84de1a5c09c946282919f3622ffdc314692.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:de064284-08b8-d90c-3d14-dc473db670dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–26.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem num_dvd (a) {b : ℤ} (b0 : b ≠ 0) : (a /. b).num ∣ a := by
  rcases e : a /. b with ⟨n, d, h, c⟩
  rw [Rat.mk'_eq_divInt, divInt_eq_iff b0 (mod_cast h)] at e
  refine Int.natAbs_dvd.1 <| Int.dvd_natAbs.1 <| Int.natCast_dvd_natCast.2 <|
    c.dvd_of_dvd_mul_right ?_
  have := congr_arg Int.natAbs e
  simp only [Int.natAbs_mul, Int.natAbs_natCast] at this; simp [this]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Lemmas/Variant9080ee6ba1e77c4870be14909e5ca84de1a5c09c946282919f3622ffdc314692.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Lemmas/Variant9080ee6ba1e77c4870be14909e5ca84de1a5c09c946282919f3622ffdc314692.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff3a70d2a3b1c62ae9ad250768735f02faa6b5b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
