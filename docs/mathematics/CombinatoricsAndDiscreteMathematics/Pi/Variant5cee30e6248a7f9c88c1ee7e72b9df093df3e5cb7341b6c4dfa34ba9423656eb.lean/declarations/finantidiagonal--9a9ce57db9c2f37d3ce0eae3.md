# finAntidiagonal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aa9bcae45812b902c649246a7463d78d1a1d9e8f35a8df8651fb366834b175c9",
  "kind": "def",
  "lexical_name": "finAntidiagonal",
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
  "slug": "finantidiagonal--9a9ce57db9c2f37d3ce0eae3",
  "source": {
    "blob": "cf38f637d7a7ee10b75c44668d33a57b9423f5fc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 61,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Variant5cee30e6248a7f9c88c1ee7e72b9df093df3e5cb7341b6c4dfa34ba9423656eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9a9ce57db9c2f37d3ce0eae355de4edd13fa5584b335990185984df2b83d89f9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Pi/Variant5cee30e6248a7f9c88c1ee7e72b9df093df3e5cb7341b6c4dfa34ba9423656eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:aa9bcae45812b902c649246a7463d78d1a1d9e8f35a8df8651fb366834b175c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def finAntidiagonal (d : ℕ) (n : μ) : Finset (Fin d → μ) :=
  aux d n
where
  /-- Auxiliary construction for `finAntidiagonal` that bundles a proof of lawfulness
  (`mem_finAntidiagonal`), as this is needed to invoke `disjiUnion`. Using `Finset.disjiUnion` makes
  this computationally much more efficient than using `Finset.biUnion`. -/
  aux (d : ℕ) (n : μ) : {s : Finset (Fin d → μ) // ∀ f, f ∈ s ↔ ∑ i, f i = n} :=
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
              inj' := Fin.cons_right_injective _ })
          (fun i _hi j _hj hij => Finset.disjoint_left.2 fun t hti htj => hij <| by
            simp_rw [Finset.mem_map, Embedding.coeFn_mk] at hti htj
            obtain ⟨ai, hai, hij'⟩ := hti
            obtain ⟨aj, haj, rfl⟩ := htj
            rw [Fin.cons_inj] at hij'
            ext
            · exact hij'.1
            · obtain ⟨-, rfl⟩ := hij'
              rw [← (aux d i.2).prop ai |>.mp hai, ← (aux d j.2).prop ai |>.mp haj])
        property := fun f => by
          simp_rw [mem_disjiUnion, mem_antidiagonal, mem_map, Embedding.coeFn_mk, Prod.exists,
            (aux d _).prop, Fin.sum_univ_succ]
          constructor
          · rintro ⟨a, b, rfl, g, rfl, rfl⟩
            simp only [Fin.cons_zero, Fin.cons_succ]
          · intro hf
            exact ⟨_, _, hf, _, rfl, Fin.cons_self_tail f⟩ }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Pi/Variant5cee30e6248a7f9c88c1ee7e72b9df093df3e5cb7341b6c4dfa34ba9423656eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Pi/Variant5cee30e6248a7f9c88c1ee7e72b9df093df3e5cb7341b6c4dfa34ba9423656eb.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf38f637d7a7ee10b75c44668d33a57b9423f5fc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
