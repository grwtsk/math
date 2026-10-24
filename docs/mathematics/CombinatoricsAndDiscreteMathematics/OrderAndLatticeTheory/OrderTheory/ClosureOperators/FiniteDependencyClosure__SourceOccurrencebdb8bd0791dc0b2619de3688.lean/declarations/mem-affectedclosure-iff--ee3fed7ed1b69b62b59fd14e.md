# mem_affectedClosure_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e7b6f3a3-91b5-6d77-2acc-43e9c2ad5d85",
  "kind": "theorem",
  "lexical_name": "mem_affectedClosure_iff",
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
  "slug": "mem-affectedclosure-iff--ee3fed7ed1b69b62b59fd14e",
  "source": {
    "blob": "f17dc71a6fee9e75fbf3e217e86b94f6b1a0c867",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 160,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Order/Closure/FiniteDependencyClosure.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee3fed7ed1b69b62b59fd14edabb4a2058496e25ad107c912255d9a4cd35ee04",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/ClosureOperators/FiniteDependencyClosure__SourceOccurrencebdb8bd0791dc0b2619de3688.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7b6f3a3-91b5-6d77-2acc-43e9c2ad5d85`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_affectedClosure_iff (dependencies : Node → Finset Node)
    (seeds : Finset Node) (consumer : Node) :
    consumer ∈ affectedClosure dependencies seeds ↔
      ∃ seed ∈ seeds, DependencyPath dependencies consumer seed := by
  classical
  constructor
  · intro hc
    let reachable := Finset.univ.filter (fun node =>
      ∃ seed ∈ seeds, DependencyPath dependencies node seed)
    have hseeds : seeds ⊆ reachable := by
      intro seed hs
      simp only [reachable, Finset.mem_filter, Finset.mem_univ, true_and]
      exact ⟨seed, hs, .refl seed⟩
    have hclosed : DependencyClosed dependencies reachable := by
      intro node prerequisite hp hprerequisite
      simp only [reachable, Finset.mem_filter, Finset.mem_univ, true_and] at hprerequisite ⊢
      rcases hprerequisite with ⟨seed, hs, hpath⟩
      exact ⟨seed, hs, .step hp hpath⟩
    have hr := affectedClosure_least dependencies seeds hseeds hclosed hc
    simpa only [reachable, Finset.mem_filter, Finset.mem_univ, true_and] using hr
  · rintro ⟨seed, hs, hpath⟩
    exact dependencyPath_mem_affectedClosure dependencies seeds hpath
      (seeds_subset_affectedClosure dependencies seeds hs)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/ClosureOperators/FiniteDependencyClosure__SourceOccurrencebdb8bd0791dc0b2619de3688.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Order/Closure/FiniteDependencyClosure.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f17dc71a6fee9e75fbf3e217e86b94f6b1a0c867` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
