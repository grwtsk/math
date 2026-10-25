# cardinal_eq_two_pow_rank

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "307b1bf0c022c9bcab76476ab7dba82ada765f36",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 315,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/50/5087c65aca2876993dde7c10ab9206d16ecca6014cd3321bbbaaa840dc4295d4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a2b2a46e-8f31-30a5-b51f-042a48ab6aeb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fd05c26a-5265-e733-8eed-ce229eb4ff65",
  "kind": "theorem",
  "lexical_name": "cardinal_eq_two_pow_rank",
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
  "slug": "cardinal-eq-two-pow-rank--b19729228381a3e558549d06",
  "source": {
    "blob": "307b1bf0c022c9bcab76476ab7dba82ada765f36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 325,
    "line": 315,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant5087c65aca2876993dde7c10ab9206d16ecca6014cd3321bbbaaa840dc4295d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b19729228381a3e558549d06a707887abba58fbab423f298f8a8ef9226a86997",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant5087c65aca2876993dde7c10ab9206d16ecca6014cd3321bbbaaa840dc4295d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fd05c26a-5265-e733-8eed-ce229eb4ff65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 315–325.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cardinal_eq_two_pow_rank [Algebra.IsSeparable F E]
    (rank_inf : ℵ₀ ≤ Module.rank F E) : #(Field.Emb F E) = 2 ^ Module.rank F E := by
  haveI := Fact.mk rank_inf
  rw [Emb.Cardinal.embEquivPi.cardinal_eq, mk_pi]
  apply le_antisymm
  · rw [← power_eq_two_power rank_inf (nat_lt_aleph0 2).le rank_inf]
    conv_rhs => rw [← mk_ord_toType (Module.rank F E), ← prod_const']
    exact prod_le_prod _ _ fun i ↦ (Emb.Cardinal.deg_lt_aleph0 _).le
  · conv_lhs => rw [← mk_ord_toType (Module.rank F E), ← prod_const']
    exact prod_le_prod _ _ Emb.Cardinal.two_le_deg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant5087c65aca2876993dde7c10ab9206d16ecca6014cd3321bbbaaa840dc4295d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/CardinalEmb/Variant5087c65aca2876993dde7c10ab9206d16ecca6014cd3321bbbaaa840dc4295d4.lean#L315).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `307b1bf0c022c9bcab76476ab7dba82ada765f36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
