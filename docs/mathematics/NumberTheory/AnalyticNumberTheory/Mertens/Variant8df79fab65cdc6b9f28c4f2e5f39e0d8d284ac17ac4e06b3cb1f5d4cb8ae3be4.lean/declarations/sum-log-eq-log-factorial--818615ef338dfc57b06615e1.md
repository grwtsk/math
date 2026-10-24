# sum_log_eq_log_factorial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fa1774ae9ecb334b91d963bbfdadd6ead018e022",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 134,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8d/8df79fab65cdc6b9f28c4f2e5f39e0d8d284ac17ac4e06b3cb1f5d4cb8ae3be4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:14637e6d-832d-173d-a5f0-b0d806593f18",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f2d35e95-5c16-7671-211b-8fdb31a7cd98",
  "kind": "theorem",
  "lexical_name": "sum_log_eq_log_factorial",
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
  "slug": "sum-log-eq-log-factorial--818615ef338dfc57b06615e1",
  "source": {
    "blob": "fa1774ae9ecb334b91d963bbfdadd6ead018e022",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 134,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Mertens/Variant8df79fab65cdc6b9f28c4f2e5f39e0d8d284ac17ac4e06b3cb1f5d4cb8ae3be4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:818615ef338dfc57b06615e13707936b708d38bc110deb87ac7806c0e6ded72d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Mertens/Variant8df79fab65cdc6b9f28c4f2e5f39e0d8d284ac17ac4e06b3cb1f5d4cb8ae3be4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2d35e95-5c16-7671-211b-8fdb31a7cd98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_log_eq_log_factorial (x : ℝ) :
    ∑ n ∈ Ioc 0 ⌊ x ⌋₊, log n = log (Nat.floor x).factorial := by
    rw [←prod_Ico_id_eq_factorial, ←log_prod, prod_natCast]
    · congr
    intro x hx
    simp at hx ⊢; grind


/-- For any `x`, `∑ n ≤ x, log n = ∑ d ≤ x, Λ(d) ⌊x/d⌋`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Mertens/Variant8df79fab65cdc6b9f28c4f2e5f39e0d8d284ac17ac4e06b3cb1f5d4cb8ae3be4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Mertens/Variant8df79fab65cdc6b9f28c4f2e5f39e0d8d284ac17ac4e06b3cb1f5d4cb8ae3be4.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa1774ae9ecb334b91d963bbfdadd6ead018e022` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
