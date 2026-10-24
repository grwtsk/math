# closure_three_cycles_eq_alternating

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8b6fd44157ab58b460b68f932b360e762a10660d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 204,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/96/966cdfa322077493f52706544b38322e4c73297da2c426008181c615d98c3092.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:65e32699-e7dd-6cd7-787d-2e9b7196dee1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e81006ef-4ae9-c5f5-55ee-4b2ec46ac95c",
  "kind": "theorem",
  "lexical_name": "closure_three_cycles_eq_alternating",
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
  "slug": "closure-three-cycles-eq-alternating--e971e45b75771706cf9d59a2",
  "source": {
    "blob": "8b6fd44157ab58b460b68f932b360e762a10660d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 224,
    "line": 204,
    "path": "GRWTSK/Algebra/GroupTheory/Alternating/Variant966cdfa322077493f52706544b38322e4c73297da2c426008181c615d98c3092.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e971e45b75771706cf9d59a28ea98d88f7dd765514bb6df53b25148078a01952",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Alternating/Variant966cdfa322077493f52706544b38322e4c73297da2c426008181c615d98c3092.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e81006ef-4ae9-c5f5-55ee-4b2ec46ac95c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 204–224.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem closure_three_cycles_eq_alternating :
    closure { σ : Perm α | IsThreeCycle σ } = alternatingGroup α := by
  refine closure_eq_of_le _ (fun _ ↦ IsThreeCycle.mem_alternatingGroup) fun σ hσ ↦ ?_
  suffices hind :
    ∀ (n : ℕ) (l : List (Perm α)) (_ : ∀ g, g ∈ l → IsSwap g) (_ : l.length = 2 * n),
      l.prod ∈ closure { σ : Perm α | IsThreeCycle σ } by
    obtain ⟨l, rfl, hl⟩ := truncSwapFactors σ
    obtain ⟨n, hn⟩ := (prod_list_swap_mem_alternatingGroup_iff_even_length hl).1 hσ
    rw [← two_mul] at hn
    exact hind n l hl hn
  intro n
  induction n with intro l hl hn
  | zero => simp [List.length_eq_zero_iff.1 hn, one_mem]
  | succ n ih =>
    rw [Nat.mul_succ] at hn
    obtain ⟨a, l, rfl⟩ := l.exists_of_length_succ hn
    rw [List.length_cons, Nat.succ_inj] at hn
    obtain ⟨b, l, rfl⟩ := l.exists_of_length_succ hn
    rw [List.prod_cons, List.prod_cons, ← mul_assoc]
    apply mul_mem <;> grind [IsSwap.mul_mem_closure_three_cycles]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Alternating/Variant966cdfa322077493f52706544b38322e4c73297da2c426008181c615d98c3092.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Alternating/Variant966cdfa322077493f52706544b38322e4c73297da2c426008181c615d98c3092.lean#L204).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b6fd44157ab58b460b68f932b360e762a10660d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
