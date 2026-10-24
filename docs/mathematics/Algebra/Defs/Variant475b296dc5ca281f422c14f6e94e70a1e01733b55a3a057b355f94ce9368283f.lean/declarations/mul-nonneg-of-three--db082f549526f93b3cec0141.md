# mul_nonneg_of_three

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:419552cf-0aa3-de01-e85d-bece8e0b6476",
  "kind": "theorem",
  "lexical_name": "mul_nonneg_of_three",
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
  "slug": "mul-nonneg-of-three--db082f549526f93b3cec0141",
  "source": {
    "blob": "34d6b032e2a00c89628e46019a0a8ce6c7a7f5c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1095,
    "line": 1071,
    "path": "GRWTSK/Algebra/Defs/Variant475b296dc5ca281f422c14f6e94e70a1e01733b55a3a057b355f94ce9368283f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:db082f549526f93b3cec0141f6182e863463b30d884cae23a13cf507af9178c5",
  "verification": {
    "reference": "docs/verification/Algebra/Defs/Variant475b296dc5ca281f422c14f6e94e70a1e01733b55a3a057b355f94ce9368283f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:419552cf-0aa3-de01-e85d-bece8e0b6476`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1071–1095.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_nonneg_of_three (a b c : α) : 0 ≤ a * b ∨ 0 ≤ b * c ∨ 0 ≤ c * a := by
  iterate 3 rw [mul_nonneg_iff]
  have or_a := le_total 0 a
  have or_b := le_total 0 b
  have or_c := le_total 0 c
  -- Porting note used to be by `itauto` from here
  exact Or.elim or_c
    (fun (h0 : 0 ≤ c) =>
      Or.elim or_b
        (fun (h1 : 0 ≤ b) =>
            Or.elim or_a (fun (h2 : 0 ≤ a) => Or.inl (Or.inl ⟨h2, h1⟩))
              (fun (_ : a ≤ 0) => Or.inr (Or.inl (Or.inl ⟨h1, h0⟩))))
        (fun (h1 : b ≤ 0) =>
            Or.elim or_a (fun (h3 : 0 ≤ a) => Or.inr (Or.inr (Or.inl ⟨h0, h3⟩)))
              (fun (h3 : a ≤ 0) => Or.inl (Or.inr ⟨h3, h1⟩))))
    (fun (h0 : c ≤ 0) =>
      Or.elim or_b
        (fun (h4 : 0 ≤ b) =>
            Or.elim or_a (fun (h5 : 0 ≤ a) => Or.inl (Or.inl ⟨h5, h4⟩))
              (fun (h5 : a ≤ 0) => Or.inr (Or.inr (Or.inr ⟨h0, h5⟩))))
        (fun (h4 : b ≤ 0) =>
            Or.elim or_a (fun (_ : 0 ≤ a) => Or.inr (Or.inl (Or.inr ⟨h4, h0⟩)))
              (fun (h6 : a ≤ 0) => Or.inl (Or.inr ⟨h6, h4⟩))))
#align mul_nonneg_of_three mul_nonneg_of_three

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Defs/Variant475b296dc5ca281f422c14f6e94e70a1e01733b55a3a057b355f94ce9368283f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Defs/Variant475b296dc5ca281f422c14f6e94e70a1e01733b55a3a057b355f94ce9368283f.lean#L1071).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34d6b032e2a00c89628e46019a0a8ce6c7a7f5c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
