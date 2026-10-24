# succ_nth_fib_le_of_nth_den

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fa429d05bf1b905526c9bece910b9fc673a589dc",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 246,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/05/057023d4beb75b8a5fad95d8873f76d0758517dcb6287e1421bd8872ab0d9663.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b0f708d6-a0cd-3203-6e19-0e92dd575d3e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8201c5b3-2317-7eaf-a2e5-109374b0a289",
  "kind": "theorem",
  "lexical_name": "succ_nth_fib_le_of_nth_den",
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
  "slug": "succ-nth-fib-le-of-nth-den--b6ea27f095729797d3cc9bcd",
  "source": {
    "blob": "fa429d05bf1b905526c9bece910b9fc673a589dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 257,
    "line": 246,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Approximations/Variant057023d4beb75b8a5fad95d8873f76d0758517dcb6287e1421bd8872ab0d9663.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b6ea27f095729797d3cc9bcdb3d7d13af9913553d40d3826c91d73268813aa1c",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Approximations/Variant057023d4beb75b8a5fad95d8873f76d0758517dcb6287e1421bd8872ab0d9663.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8201c5b3-2317-7eaf-a2e5-109374b0a289`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 246–257.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem succ_nth_fib_le_of_nth_den (hyp : n = 0 ∨ ¬(of v).TerminatedAt (n - 1)) :
    (fib (n + 1) : K) ≤ (of v).dens n := by
  rw [den_eq_conts_b, nth_cont_eq_succ_nth_contAux]
  have : n + 1 ≤ 1 ∨ ¬(of v).TerminatedAt (n - 1) := by
    cases n with
    | zero => exact Or.inl <| le_refl 1
    | succ n => exact Or.inr (Or.resolve_left hyp n.succ_ne_zero)
  exact fib_le_of_contsAux_b this

/-! As a simple consequence, we can now derive that all denominators are nonnegative. -/


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Approximations/Variant057023d4beb75b8a5fad95d8873f76d0758517dcb6287e1421bd8872ab0d9663.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Approximations/Variant057023d4beb75b8a5fad95d8873f76d0758517dcb6287e1421bd8872ab0d9663.lean#L246).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fa429d05bf1b905526c9bece910b9fc673a589dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
