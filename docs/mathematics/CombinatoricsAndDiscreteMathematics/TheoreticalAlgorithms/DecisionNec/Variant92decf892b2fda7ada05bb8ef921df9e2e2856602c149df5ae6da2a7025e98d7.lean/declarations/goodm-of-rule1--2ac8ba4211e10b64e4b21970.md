# goodm_of_rule1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e01f2ebb-c748-128a-6a0c-3d81d69a3c8c",
  "kind": "theorem",
  "lexical_name": "goodm_of_rule1",
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
  "slug": "goodm-of-rule1--2ac8ba4211e10b64e4b21970",
  "source": {
    "blob": "ba6c63ab23cc23299a5c2881e486686fb520bcfa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 140,
    "line": 131,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecisionNec/Variant92decf892b2fda7ada05bb8ef921df9e2e2856602c149df5ae6da2a7025e98d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ac8ba4211e10b64e4b2197069581cc49b2065593a424bc8af4b92b2ca6b4341",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecisionNec/Variant92decf892b2fda7ada05bb8ef921df9e2e2856602c149df5ae6da2a7025e98d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e01f2ebb-c748-128a-6a0c-3d81d69a3c8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem goodm_of_rule1 (xs : Miustr) (h₁ : Derivable (xs ++ [I])) (h₂ : Goodm (xs ++ [I])) :
    Goodm (xs ++ [I, U]) := by
  obtain ⟨mhead, nmtail⟩ := h₂
  constructor
  · cases xs <;> simp_all
  · change M ∉ tail (xs ++ ([I] ++ [U]))
    rw [← append_assoc, tail_append_singleton_of_ne_nil]
    · simp_rw [mem_append, mem_singleton, reduceCtorEq, or_false]; exact nmtail
    · simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecisionNec/Variant92decf892b2fda7ada05bb8ef921df9e2e2856602c149df5ae6da2a7025e98d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DecisionNec/Variant92decf892b2fda7ada05bb8ef921df9e2e2856602c149df5ae6da2a7025e98d7.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba6c63ab23cc23299a5c2881e486686fb520bcfa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
