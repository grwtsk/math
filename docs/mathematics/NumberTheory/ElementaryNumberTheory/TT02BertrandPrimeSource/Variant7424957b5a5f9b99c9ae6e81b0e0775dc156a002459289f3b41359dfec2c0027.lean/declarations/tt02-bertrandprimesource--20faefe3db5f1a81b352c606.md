# tt02_bertrandPrimeSource

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bbeb47acd62e1e6c3281dfb390ef412cfd58020e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 6,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/74/7424957b5a5f9b99c9ae6e81b0e0775dc156a002459289f3b41359dfec2c0027.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ba34ea68-9be9-305d-a6e8-d067e2700a85",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:919f8b5a-d8f5-50b8-2cb0-a4e1d4ffb657",
  "kind": "theorem",
  "lexical_name": "tt02_bertrandPrimeSource",
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
  "slug": "tt02-bertrandprimesource--20faefe3db5f1a81b352c606",
  "source": {
    "blob": "bbeb47acd62e1e6c3281dfb390ef412cfd58020e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 19,
    "line": 6,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/TT02BertrandPrimeSource/Variant7424957b5a5f9b99c9ae6e81b0e0775dc156a002459289f3b41359dfec2c0027.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:20faefe3db5f1a81b352c6066a8d5586e1fc053e02e305fca46ccd9ae9cfc49b",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/TT02BertrandPrimeSource/Variant7424957b5a5f9b99c9ae6e81b0e0775dc156a002459289f3b41359dfec2c0027.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:919f8b5a-d8f5-50b8-2cb0-a4e1d4ffb657`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 6–19.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tt02_bertrandPrimeSource :
    ∀ p : Nat, Nat.Prime p ∧ 1 < p →
      ∃ q : Nat, Nat.Prime q ∧ p < q ∧ q < 2 * p := by
  intro p hp
  have fullClaim : IntervalClaim bertrandProfile := by
    intro n hn
    obtain ⟨q, hPrime, hnq, hqUpper⟩ := tt01_bertrand n hn
    exact ⟨q, bertrandAdmissible hn hPrime hnq hqUpper⟩
  obtain ⟨q, hAdmissible⟩ :=
    bertrandPrimeSourceRefines.transportClaim fullClaim p hp
  exact ⟨q, hAdmissible.2.2, hAdmissible.2.1.1,
    hAdmissible.2.1.2⟩

end FCRS.Transport.Theorems
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/TT02BertrandPrimeSource/Variant7424957b5a5f9b99c9ae6e81b0e0775dc156a002459289f3b41359dfec2c0027.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/TT02BertrandPrimeSource/Variant7424957b5a5f9b99c9ae6e81b0e0775dc156a002459289f3b41359dfec2c0027.lean#L6).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbeb47acd62e1e6c3281dfb390ef412cfd58020e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
