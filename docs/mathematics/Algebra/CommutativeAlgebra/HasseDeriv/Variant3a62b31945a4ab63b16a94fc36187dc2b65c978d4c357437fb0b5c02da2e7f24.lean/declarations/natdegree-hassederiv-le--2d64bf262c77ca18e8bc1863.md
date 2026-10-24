# natDegree_hasseDeriv_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3ff758e1c35717df510b59ffa25701ac7eaddeb4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 175,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3a/3a62b31945a4ab63b16a94fc36187dc2b65c978d4c357437fb0b5c02da2e7f24.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:60cc645e-af65-0871-a8c3-ec0ceab847aa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1c0e6eb6-cc21-7295-2c80-8fc715b9fb88",
  "kind": "theorem",
  "lexical_name": "natDegree_hasseDeriv_le",
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
  "slug": "natdegree-hassederiv-le--2d64bf262c77ca18e8bc1863",
  "source": {
    "blob": "3ff758e1c35717df510b59ffa25701ac7eaddeb4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 175,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/HasseDeriv/Variant3a62b31945a4ab63b16a94fc36187dc2b65c978d4c357437fb0b5c02da2e7f24.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2d64bf262c77ca18e8bc18636b4ba16df04125aa56a131a2edf6738bd246de2c",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/HasseDeriv/Variant3a62b31945a4ab63b16a94fc36187dc2b65c978d4c357437fb0b5c02da2e7f24.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1c0e6eb6-cc21-7295-2c80-8fc715b9fb88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem natDegree_hasseDeriv_le (p : R[X]) (n : ℕ) :
    natDegree (hasseDeriv n p) ≤ natDegree p - n := by
  classical
    rw [hasseDeriv_apply, sum_def]
    refine (natDegree_sum_le _ _).trans ?_
    simp_rw [Function.comp, natDegree_monomial]
    rw [Finset.fold_ite, Finset.fold_const]
    · simp only [ite_self, max_eq_right, zero_le', Finset.fold_max_le, true_and, and_imp,
        tsub_le_iff_right, mem_support_iff, Ne, Finset.mem_filter]
      intro x hx hx'
      have hxp : x ≤ p.natDegree := le_natDegree_of_ne_zero hx
      have hxn : n ≤ x := by
        contrapose! hx'
        simp [Nat.choose_eq_zero_of_lt hx']
      rwa [tsub_add_cancel_of_le (hxn.trans hxp)]
    · simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/HasseDeriv/Variant3a62b31945a4ab63b16a94fc36187dc2b65c978d4c357437fb0b5c02da2e7f24.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/HasseDeriv/Variant3a62b31945a4ab63b16a94fc36187dc2b65c978d4c357437fb0b5c02da2e7f24.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ff758e1c35717df510b59ffa25701ac7eaddeb4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
