# partialOddGF_prop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c81cae35-e397-9f1d-580e-625433edb384",
  "kind": "theorem",
  "lexical_name": "partialOddGF_prop",
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
  "slug": "partialoddgf-prop--05f226df6dea4ef35d764c6e",
  "source": {
    "blob": "9e498a5d44f6ee8fe8f50756715a6387fd4b3250",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 284,
    "line": 262,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Partition/Variant403cfe6af9f6f046bbcede3efba1bd2d01079335f85070c91d22dd494f323781.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:05f226df6dea4ef35d764c6e02329dee1b483f02bd82817ecd54fb44fe727ef8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Partition/Variant403cfe6af9f6f046bbcede3efba1bd2d01079335f85070c91d22dd494f323781.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c81cae35-e397-9f1d-580e-625433edb384`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 262–284.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem partialOddGF_prop [Field α] (n m : ℕ) :
    #{p : n.Partition | ∀ j ∈ p.parts, j ∈ (range m).map mkOdd} = coeff α n (partialOddGF m) := by
  rw [partialOddGF]
  convert partialGF_prop α n
    ((range m).map mkOdd) _ (fun _ => Set.univ) (fun _ _ => trivial) using 2
  · congr
    simp only [true_and, forall_const, Set.mem_univ]
  · rw [Finset.prod_map]
    simp_rw [num_series']
    congr! 2 with x
    ext k
    constructor
    · rintro ⟨p, rfl⟩
      refine ⟨p, ⟨⟩, ?_⟩
      apply mul_comm
    rintro ⟨a_w, -, rfl⟩
    apply Dvd.intro_left a_w rfl
  · intro i
    rw [mem_map]
    rintro ⟨a, -, rfl⟩
    exact Nat.succ_pos _

/-- If m is big enough, the partial product's coefficient counts the number of odd partitions -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Partition/Variant403cfe6af9f6f046bbcede3efba1bd2d01079335f85070c91d22dd494f323781.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Partition/Variant403cfe6af9f6f046bbcede3efba1bd2d01079335f85070c91d22dd494f323781.lean#L262).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e498a5d44f6ee8fe8f50756715a6387fd4b3250` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
