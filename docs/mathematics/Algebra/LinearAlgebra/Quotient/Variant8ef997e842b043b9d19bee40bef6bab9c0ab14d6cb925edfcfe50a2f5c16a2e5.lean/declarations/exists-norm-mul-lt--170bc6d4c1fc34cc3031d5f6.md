# exists_norm_mul_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4ecefb73a94c58895a5f894998e4e521b7ee834d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 203,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8e/8ef997e842b043b9d19bee40bef6bab9c0ab14d6cb925edfcfe50a2f5c16a2e5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6a070baf-34ec-d73e-ef91-865554241659",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:25c4ef91-4297-c737-2bdb-e1bd49696515",
  "kind": "lemma",
  "lexical_name": "exists_norm_mul_lt",
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
  "slug": "exists-norm-mul-lt--170bc6d4c1fc34cc3031d5f6",
  "source": {
    "blob": "4ecefb73a94c58895a5f894998e4e521b7ee834d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 203,
    "path": "GRWTSK/Algebra/LinearAlgebra/Quotient/Variant8ef997e842b043b9d19bee40bef6bab9c0ab14d6cb925edfcfe50a2f5c16a2e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:170bc6d4c1fc34cc3031d5f657ac92788a19ca5ba1978d8a20e240ef89f35525",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Quotient/Variant8ef997e842b043b9d19bee40bef6bab9c0ab14d6cb925edfcfe50a2f5c16a2e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:25c4ef91-4297-c737-2bdb-e1bd49696515`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–210.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_norm_mul_lt (S : Subgroup M) (m : M) {ε : ℝ} (hε : 0 < ε) :
    ∃ s ∈ S, ‖m * s‖ < ‖mk' S m‖ + ε := by
  obtain ⟨n : M, hn, hn'⟩ := exists_norm_mk_lt (QuotientGroup.mk' S m) hε
  exact ⟨m⁻¹ * n, by simpa [eq_comm, QuotientGroup.eq] using hn, by simpa⟩

variable (S) in
/-- The seminormed group structure on the quotient by a subgroup. -/
@[to_additive /-- The seminormed group structure on the quotient by an additive subgroup. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Quotient/Variant8ef997e842b043b9d19bee40bef6bab9c0ab14d6cb925edfcfe50a2f5c16a2e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Quotient/Variant8ef997e842b043b9d19bee40bef6bab9c0ab14d6cb925edfcfe50a2f5c16a2e5.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ecefb73a94c58895a5f894998e4e521b7ee834d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
