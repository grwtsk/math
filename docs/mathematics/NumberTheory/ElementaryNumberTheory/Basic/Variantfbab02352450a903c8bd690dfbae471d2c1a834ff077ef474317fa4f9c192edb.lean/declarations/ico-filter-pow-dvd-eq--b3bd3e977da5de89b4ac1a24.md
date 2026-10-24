# Ico_filter_pow_dvd_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "33ebfe9b25f9b23edaea0893f627d77efb54f86a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 417,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fb/fbab02352450a903c8bd690dfbae471d2c1a834ff077ef474317fa4f9c192edb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:593d12d4-1e50-5366-509a-93c3420e7277",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:86f71d6b-07f2-b99d-ca01-a4d11a2673fd",
  "kind": "theorem",
  "lexical_name": "Ico_filter_pow_dvd_eq",
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
  "slug": "ico-filter-pow-dvd-eq--b3bd3e977da5de89b4ac1a24",
  "source": {
    "blob": "33ebfe9b25f9b23edaea0893f627d77efb54f86a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 424,
    "line": 417,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variantfbab02352450a903c8bd690dfbae471d2c1a834ff077ef474317fa4f9c192edb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b3bd3e977da5de89b4ac1a24f16739ad4d27812cc20aa8bf7538e276abc44302",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Basic/Variantfbab02352450a903c8bd690dfbae471d2c1a834ff077ef474317fa4f9c192edb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:86f71d6b-07f2-b99d-ca01-a4d11a2673fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 417–424.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Ico_filter_pow_dvd_eq {n p b : ℕ} (pp : p.Prime) (hn : n ≠ 0) (hb : n ≤ p ^ b) :
    {i ∈ Ico 1 n | p ^ i ∣ n} = {i ∈ Icc 1 b | p ^ i ∣ n} := by
  ext x
  simp only [Finset.mem_filter, mem_Ico, mem_Icc, and_congr_left_iff, and_congr_right_iff]
  rintro h1 -
  exact iff_of_true (lt_of_pow_dvd_right hn pp.two_le h1) <|
    (Nat.pow_le_pow_iff_right pp.one_lt).1 <| (le_of_dvd hn.bot_lt h1).trans hb

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Basic/Variantfbab02352450a903c8bd690dfbae471d2c1a834ff077ef474317fa4f9c192edb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Basic/Variantfbab02352450a903c8bd690dfbae471d2c1a834ff077ef474317fa4f9c192edb.lean#L417).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `33ebfe9b25f9b23edaea0893f627d77efb54f86a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
