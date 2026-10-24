# finite_inner_padding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "756365e2bde6c65efbb92b2dc82f7a417ec2816f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 21,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/80/801e63ff4b24c4fb62349dc497e2e1db2d2235f48c35b102f9768d0e1d477a6f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3781ce06-aa48-0b7e-0d73-1fdd7ccccb49",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:79259129-c1cd-0e81-54e6-813e41d9418e",
  "kind": "theorem",
  "lexical_name": "finite_inner_padding",
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
  "slug": "finite-inner-padding--963284236eb747881a2e9225",
  "source": {
    "blob": "756365e2bde6c65efbb92b2dc82f7a417ec2816f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 35,
    "line": 21,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/UpperRowInversionAudit/Variant801e63ff4b24c4fb62349dc497e2e1db2d2235f48c35b102f9768d0e1d477a6f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:963284236eb747881a2e92254ac7925cb4d8b1c54b6f76a0c012b9d18dfe475c",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/UpperRowInversionAudit/Variant801e63ff4b24c4fb62349dc497e2e1db2d2235f48c35b102f9768d0e1d477a6f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:79259129-c1cd-0e81-54e6-813e41d9418e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–35.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finite_inner_padding (N B j : ℕ) (F : ℕ → ℝ) (hNB : N ≤ B) (hj : 1 ≤ j)
    (hF : ∀ n, N < n → F n = 0) :
    (∑ k ∈ Icc 1 B, F (j * k)) = ∑ k ∈ Icc 1 N, F (j * k) := by
  symm
  apply sum_subset
  · intro k hk
    exact mem_Icc.mpr ⟨(mem_Icc.mp hk).1, (mem_Icc.mp hk).2.trans hNB⟩
  · intro k hk hout
    have hkN : N < k := by
      by_contra h
      exact hout (mem_Icc.mpr ⟨(mem_Icc.mp hk).1, Nat.le_of_not_lt h⟩)
    apply hF
    exact hkN.trans_le (Nat.le_mul_of_pos_left k hj)

/-- Finite Möbius inversion of a complete upper product sum uses no sign estimate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/UpperRowInversionAudit/Variant801e63ff4b24c4fb62349dc497e2e1db2d2235f48c35b102f9768d0e1d477a6f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/UpperRowInversionAudit/Variant801e63ff4b24c4fb62349dc497e2e1db2d2235f48c35b102f9768d0e1d477a6f.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `756365e2bde6c65efbb92b2dc82f7a417ec2816f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
