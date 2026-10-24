# Finset.mem_enum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1421586941a7f039f746e22511dc3a46f9a12585",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 134,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7e/7ee68bae79b63b31b68727d0ebaf43f526c2955797c1fde21894757b6497add5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8d46356c-3c5d-e32f-89f4-7a85179f48f4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b020c579-8c70-3745-cbb6-3c8895541fc1",
  "kind": "theorem",
  "lexical_name": "Finset.mem_enum",
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
  "slug": "finset-mem-enum--7436827d1e0b06e86b547afe",
  "source": {
    "blob": "1421586941a7f039f746e22511dc3a46f9a12585",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 134,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FinEnum/Variant7ee68bae79b63b31b68727d0ebaf43f526c2955797c1fde21894757b6497add5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7436827d1e0b06e86b547afe058b957162a4d0f3112218fad3ba2554f98b6ddb",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FinEnum/Variant7ee68bae79b63b31b68727d0ebaf43f526c2955797c1fde21894757b6497add5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b020c579-8c70-3745-cbb6-3c8895541fc1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Finset.mem_enum [DecidableEq α] (s : Finset α) (xs : List α) :
    s ∈ Finset.enum xs ↔ ∀ x ∈ s, x ∈ xs := by
  induction xs generalizing s with
  | nil => simp [enum, eq_empty_iff_forall_notMem]
  | cons x xs ih =>
      simp only [enum, List.bind_eq_flatMap, List.mem_flatMap, List.mem_cons, List.mem_singleton,
        List.not_mem_nil, or_false, ih]
      refine ⟨by aesop, fun hs => ⟨s.erase x, ?_⟩⟩
      simp only [or_iff_not_imp_left] at hs
      simp +contextual [eq_comm (a := s), or_iff_not_imp_left, hs]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FinEnum/Variant7ee68bae79b63b31b68727d0ebaf43f526c2955797c1fde21894757b6497add5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FinEnum/Variant7ee68bae79b63b31b68727d0ebaf43f526c2955797c1fde21894757b6497add5.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1421586941a7f039f746e22511dc3a46f9a12585` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
