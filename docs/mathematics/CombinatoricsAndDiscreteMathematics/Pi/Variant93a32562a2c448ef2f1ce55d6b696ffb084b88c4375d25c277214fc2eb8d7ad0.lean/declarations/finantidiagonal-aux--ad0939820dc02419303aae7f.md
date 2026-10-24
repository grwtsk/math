# finAntidiagonal.aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ffdc9fb2efa34ee0580258a580acb888da88a9d63ba6e624e574e214b4000669",
  "kind": "def",
  "lexical_name": "finAntidiagonal.aux",
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
  "slug": "finantidiagonal-aux--ad0939820dc02419303aae7f",
  "source": {
    "blob": "ce9367c3bcc95cc3090e7832f0747413be644c25",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 73,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Variant93a32562a2c448ef2f1ce55d6b696ffb084b88c4375d25c277214fc2eb8d7ad0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ad0939820dc02419303aae7fdca4df37a5000df3be8e18d5dab65d6736c27d8e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Pi/Variant93a32562a2c448ef2f1ce55d6b696ffb084b88c4375d25c277214fc2eb8d7ad0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ffdc9fb2efa34ee0580258a580acb888da88a9d63ba6e624e574e214b4000669`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def finAntidiagonal.aux (d : ℕ) (n : μ) : {s : Finset (Fin d → μ) // ∀ f, f ∈ s ↔ ∑ i, f i = n} :=
  match d with
  | 0 =>
    if h : n = 0 then
      ⟨{0}, by simp [h, Subsingleton.elim _ ![]]⟩
    else
      ⟨∅, by simp [Ne.symm h]⟩
  | d + 1 =>
    { val := (antidiagonal n).disjiUnion
        (fun ab => (aux d ab.2).1.map {
            toFun := Fin.cons (ab.1)
            inj' := Fin.cons_right_injective _ }) <| by
        intro i _ j _ hij
        simp only [Finset.disjoint_left, Finset.mem_map, Embedding.coeFn_mk]
        grind [Fin.cons_inj]
      property := fun f => by
        simp_rw [mem_disjiUnion, mem_antidiagonal, mem_map, Embedding.coeFn_mk, Prod.exists,
          (aux d _).prop, Fin.sum_univ_succ]
        constructor
        · rintro ⟨a, b, rfl, g, rfl, rfl⟩
          simp only [Fin.cons_zero, Fin.cons_succ]
        · intro hf
          exact ⟨_, _, hf, _, rfl, Fin.cons_self_tail f⟩ }

/-- `finAntidiagonal d n` is the type of `d`-tuples with sum `n`.

TODO: deduplicate with the less general `Finset.Nat.antidiagonalTuple`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Pi/Variant93a32562a2c448ef2f1ce55d6b696ffb084b88c4375d25c277214fc2eb8d7ad0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Variant93a32562a2c448ef2f1ce55d6b696ffb084b88c4375d25c277214fc2eb8d7ad0.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce9367c3bcc95cc3090e7832f0747413be644c25` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
