# orderOf_cycleOf_dvd_orderOf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "79e19bebccba0021f3ad3f605a35c86d035fc50f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 187,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5b/5bce23147889d875765216cc8466c766bc03fc0357845757b348965b5e9ccb80.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4300c2ba-0718-c5cf-672d-15b535df3059",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4f8b7d34-4605-d373-b3f9-069a61d4060e",
  "kind": "theorem",
  "lexical_name": "orderOf_cycleOf_dvd_orderOf",
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
  "slug": "orderof-cycleof-dvd-orderof--29033719b1a0b538eab9c279",
  "source": {
    "blob": "79e19bebccba0021f3ad3f605a35c86d035fc50f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 196,
    "line": 187,
    "path": "GRWTSK/Algebra/GroupTheory/Type/Variant5bce23147889d875765216cc8466c766bc03fc0357845757b348965b5e9ccb80.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:29033719b1a0b538eab9c279a34534e2e987fa37ce7d903f2a797ca0c2e48665",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Type/Variant5bce23147889d875765216cc8466c766bc03fc0357845757b348965b5e9ccb80.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f8b7d34-4605-d373-b3f9-069a61d4060e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 187–196.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem orderOf_cycleOf_dvd_orderOf (f : Perm α) (x : α) : orderOf (cycleOf f x) ∣ orderOf f := by
  by_cases hx : f x = x
  · rw [← cycleOf_eq_one_iff] at hx
    simp [hx]
  · refine dvd_of_mem_cycleType ?_
    rw [cycleType, Multiset.mem_map]
    refine ⟨f.cycleOf x, ?_, ?_⟩
    · rwa [← Finset.mem_def, cycleOf_mem_cycleFactorsFinset_iff, mem_support]
    · simp [(isCycle_cycleOf _ hx).orderOf]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Type/Variant5bce23147889d875765216cc8466c766bc03fc0357845757b348965b5e9ccb80.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Type/Variant5bce23147889d875765216cc8466c766bc03fc0357845757b348965b5e9ccb80.lean#L187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79e19bebccba0021f3ad3f605a35c86d035fc50f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
