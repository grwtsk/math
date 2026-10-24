# two_constant_loops_balanced_but_no_euler

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7f3b8463-61fb-de22-fde4-3a941e734f65",
  "kind": "theorem",
  "lexical_name": "two_constant_loops_balanced_but_no_euler",
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
  "slug": "two-constant-loops-balanced-but-no-euler--5d967bfe748c7b735aeae832",
  "source": {
    "blob": "c114e1244ffa245dc5c133bee4f5cb5f3185c2e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 227,
    "path": "GRWTSK/Combinatorics/DirectedEulerActiveSupport.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5d967bfe748c7b735aeae832cab2451a0416b182a96e44c7434698e80d314b28",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/DirectedEulerActiveSupport.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f3b8463-61fb-de22-fde4-3a941e734f65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem two_constant_loops_balanced_but_no_euler :
    (Finset.univ : Finset Bool).Nonempty ∧
      (∀ x : Bool,
        ((Finset.univ : Finset Bool).val.map (id : Bool → Bool)).count x =
          ((Finset.univ : Finset Bool).val.map (id : Bool → Bool)).count x) ∧
      ¬ ∃ (a : Bool) (p : Walk (id : Bool → Bool) id a a), ∀ e : Bool, e ∈ p.edges := by
  refine ⟨⟨false, Finset.mem_univ _⟩, (fun _ => rfl), ?_⟩
  rintro ⟨a, p, hexhaustive⟩
  have hf := bool_loop_edges_eq_start p false (hexhaustive false)
  have ht := bool_loop_edges_eq_start p true (hexhaustive true)
  have hbad : (false : Bool) = true := hf.trans ht.symm
  cases hbad

end Walk
end GRWTSK.Combinatorics.DirectedEulerSplicing
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/CombinatoricsAndDiscreteMathematics/DirectedEulerActiveSupport.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Combinatorics/DirectedEulerActiveSupport.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c114e1244ffa245dc5c133bee4f5cb5f3185c2e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
