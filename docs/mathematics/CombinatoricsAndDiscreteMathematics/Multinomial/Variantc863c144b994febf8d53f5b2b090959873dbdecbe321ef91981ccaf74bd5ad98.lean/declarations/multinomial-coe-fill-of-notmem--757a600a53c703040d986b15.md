# multinomial_coe_fill_of_notMem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "02695baa287368c727e8dcb6f32530f4864cba4d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 329,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c8/c863c144b994febf8d53f5b2b090959873dbdecbe321ef91981ccaf74bd5ad98.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2ba4ae62-2458-cd0a-20b2-0ce30ec25df8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:01dc4b33-2a99-f2c6-d9c2-21093751c77d",
  "kind": "theorem",
  "lexical_name": "multinomial_coe_fill_of_notMem",
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
  "slug": "multinomial-coe-fill-of-notmem--757a600a53c703040d986b15",
  "source": {
    "blob": "02695baa287368c727e8dcb6f32530f4864cba4d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 346,
    "line": 329,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Multinomial/Variantc863c144b994febf8d53f5b2b090959873dbdecbe321ef91981ccaf74bd5ad98.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:757a600a53c703040d986b15e8424caf8c5edf90eeaa8ea52e97c30f3dc0b53c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Multinomial/Variantc863c144b994febf8d53f5b2b090959873dbdecbe321ef91981ccaf74bd5ad98.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:01dc4b33-2a99-f2c6-d9c2-21093751c77d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 329–346.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem multinomial_coe_fill_of_notMem {m : Fin (n + 1)} {s : Sym α (n - m)} {x : α} (hx : x ∉ s) :
    (fill x m s : Multiset α).multinomial = n.choose m * (s : Multiset α).multinomial := by
  rw [Multiset.multinomial_filter_ne x]
  rw [← mem_coe] at hx
  refine congrArg₂ _ ?_ ?_
  · rw [card_coe, count_coe_fill_self_of_notMem hx]
  · refine congrArg _ ?_
    rw [coe_fill, coe_replicate, Multiset.filter_add]
    rw [Multiset.filter_eq_self.mpr]
    · rw [add_eq_left]
      rw [Multiset.filter_eq_nil]
      exact fun j hj ↦ by simp [Multiset.mem_replicate.mp hj]
    · exact fun j hj h ↦ hx <| by simpa [h] using hj

@[deprecated (since := "2025-05-23")]
alias multinomial_coe_fill_of_not_mem := multinomial_coe_fill_of_notMem

end Sym
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Multinomial/Variantc863c144b994febf8d53f5b2b090959873dbdecbe321ef91981ccaf74bd5ad98.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Multinomial/Variantc863c144b994febf8d53f5b2b090959873dbdecbe321ef91981ccaf74bd5ad98.lean#L329).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `02695baa287368c727e8dcb6f32530f4864cba4d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
