# adjacencyResolvent_separable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "da0ea2e2b9f979a3656b22a48c2d3a3a0d2523a0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 71,
      "path": "GRWTSK/Algebra/PolygonalQuarticSeparable.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:65592f6c-3090-5699-8f7f-6c6c9f773334",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:52434a0d-15ba-b0f9-a244-d26a51a9871e",
  "kind": "theorem",
  "lexical_name": "adjacencyResolvent_separable",
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
  "slug": "adjacencyresolvent-separable--99a38617631ec2c8cb0189fe",
  "source": {
    "blob": "da0ea2e2b9f979a3656b22a48c2d3a3a0d2523a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 71,
    "path": "GRWTSK/Algebra/PolygonalQuarticSeparable.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:99a38617631ec2c8cb0189fed93dd61edd483010929ab021e97484036a2f0660",
  "verification": {
    "reference": "docs/verification/Algebra/PolygonalQuarticSeparable.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52434a0d-15ba-b0f9-a244-d26a51a9871e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem adjacencyResolvent_separable (a b c d : F)
    (hab : a ≠ b) (hac : a ≠ c) (had : a ≠ d)
    (hbc : b ≠ c) (hbd : b ≠ d) (hcd : c ≠ d) :
    (adjacencyResolventFromRoots a b c d).Separable := by
  obtain ⟨h12, h13, h23⟩ :=
    adjacency_values_pairwise_distinct a b c d hab hac had hbc hbd hcd
  let v : Fin 3 → F :=
    ![adjacencyOne a b c d, adjacencyTwo a b c d,
      adjacencyThree a b c d]
  have hv : Function.Injective v := by
    intro i j hij
    fin_cases i <;> fin_cases j <;>
      simp [v] at hij ⊢
    all_goals first | exact h12 hij | exact h13 hij | exact h23 hij |
      exact (h12 hij.symm) | exact (h13 hij.symm) |
      exact (h23 hij.symm)
  have hsep := (Polynomial.separable_prod_X_sub_C_iff (f := v)).2 hv
  simpa [adjacencyResolventFromRoots, v, Fin.prod_univ_three] using hsep


/-- An actual separable quartic enumerated in a splitting extension has
a separable adjacency resolvent. The separability assumption enters only
through the injectivity of its four-root enumeration. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/Algebra/PolygonalQuarticSeparable.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PolygonalQuarticSeparable.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da0ea2e2b9f979a3656b22a48c2d3a3a0d2523a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
