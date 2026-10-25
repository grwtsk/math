# inner_single_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7211173b-08ea-8933-465d-8d16b84f558e",
  "kind": "lemma",
  "lexical_name": "inner_single_right",
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
  "slug": "inner-single-right--54c39b33c75c8dcab92703e3",
  "source": {
    "blob": "04583e7b16719d500af3558c6e248eb74b6a61b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 263,
    "line": 257,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant9dd85c3bb24f1763e815884b07103753d9292255837bcbb84dc419626a4bd1ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:54c39b33c75c8dcab92703e30208a765830cef366a2718835c3cbb07d6256142",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant9dd85c3bb24f1763e815884b07103753d9292255837bcbb84dc419626a4bd1ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7211173b-08ea-8933-465d-8d16b84f558e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–263.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma inner_single_right [DecidableEq ι] (x : C⋆ᵐᵒᵈ(A, Π i, E i)) {i : ι} (y : E i) :
    ⟪x, equiv _ _ |>.symm <| Pi.single i y⟫_A = ⟪x i, y⟫_A := by
  simp only [pi_inner, equiv_symm_pi_apply]
  rw [Finset.sum_eq_single i]
  all_goals simp_all

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant9dd85c3bb24f1763e815884b07103753d9292255837bcbb84dc419626a4bd1ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant9dd85c3bb24f1763e815884b07103753d9292255837bcbb84dc419626a4bd1ec.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `04583e7b16719d500af3558c6e248eb74b6a61b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
