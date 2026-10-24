# sum_range_by_parts'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3b9894a5efa3e1768d463d2e24232f2e0eaefcff",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 68,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/00/007d70e511e7364edc9a74e791d106155f0ec7379b5d12a69beeec869e59d39e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ddf7321b-8a86-4130-26b1-9463dfba7045",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5e650819-3657-d46e-cc4d-8b71cd76ccef",
  "kind": "theorem",
  "lexical_name": "sum_range_by_parts'",
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
  "slug": "sum-range-by-parts--fe388eca5525046318ca919b",
  "source": {
    "blob": "3b9894a5efa3e1768d463d2e24232f2e0eaefcff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 68,
    "path": "GRWTSK/Algebra/Module/Variant007d70e511e7364edc9a74e791d106155f0ec7379b5d12a69beeec869e59d39e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe388eca5525046318ca919bcf4db5f4c4fb6c7db351b9b38c2ac9da03a2b221",
  "verification": {
    "reference": "docs/verification/Algebra/ModuleTheory/Variant007d70e511e7364edc9a74e791d106155f0ec7379b5d12a69beeec869e59d39e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5e650819-3657-d46e-cc4d-8b71cd76ccef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_range_by_parts' :
    ∑ i ∈ range n, f i • g i =
      (∑ i ∈ range n, f i) • g (n - 1) -
        ∑ i ∈ range (n - 1), (∑ j ∈ range (i + 1), f j) • (g (i + 1) - g i) := by
  cases n with
  | zero => simp
  | succ n =>
    simp only [Nat.add_sub_cancel]
    induction n with
    | zero => simp
    | succ n ih =>
      rw [sum_range_succ (f := fun i ↦ f i • g i), ih]
      simp only [sum_range_succ, smul_sub, add_smul]
      abel

end Finset
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/ModuleTheory/Variant007d70e511e7364edc9a74e791d106155f0ec7379b5d12a69beeec869e59d39e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Module/Variant007d70e511e7364edc9a74e791d106155f0ec7379b5d12a69beeec869e59d39e.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b9894a5efa3e1768d463d2e24232f2e0eaefcff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
