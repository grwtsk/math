# gaussSum_mulShift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9f4d86b1ec4214cd32489b59eb870d1fc0a0bf04",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 76,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/62/62b727d1b20c76bc6725f245e8022dcacef3f4082d779d58c9027520d4f0ad8e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dc62a873-87a6-24d2-4bb2-226d06f26b5d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6dbd5ecd-7a1f-d785-b015-a4ce1123ec1a",
  "kind": "theorem",
  "lexical_name": "gaussSum_mulShift",
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
  "slug": "gausssum-mulshift--7f15685b26fd6433e0de7a56",
  "source": {
    "blob": "9f4d86b1ec4214cd32489b59eb870d1fc0a0bf04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 76,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GaussSum/Variant62b727d1b20c76bc6725f245e8022dcacef3f4082d779d58c9027520d4f0ad8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7f15685b26fd6433e0de7a5639ab5e6351f6928b30ccc8077c1a3bbc82c8573e",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GaussSum/Variant62b727d1b20c76bc6725f245e8022dcacef3f4082d779d58c9027520d4f0ad8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6dbd5ecd-7a1f-d785-b015-a4ce1123ec1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gaussSum_mulShift (χ : MulChar R R') (ψ : AddChar R R') (a : Rˣ) :
    χ a * gaussSum χ (mulShift ψ a) = gaussSum χ ψ := by
  simp only [gaussSum, mulShift_apply, Finset.mul_sum]
  simp_rw [← mul_assoc, ← map_mul]
  exact Fintype.sum_bijective _ a.mulLeft_bijective _ _ fun x => rfl
#align gauss_sum_mul_shift gaussSum_mulShift

end GaussSumDef

/-!
### The product of two Gauss sums
-/


section GaussSumProd

-- In the following, we need `R` to be a finite field and `R'` to be a domain.
variable {R : Type u} [Field R] [Fintype R] {R' : Type v} [CommRing R'] [IsDomain R']

-- A helper lemma for `gaussSum_mul_gaussSum_eq_card` below
-- Is this useful enough in other contexts to be public?
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/GaussSum/Variant62b727d1b20c76bc6725f245e8022dcacef3f4082d779d58c9027520d4f0ad8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GaussSum/Variant62b727d1b20c76bc6725f245e8022dcacef3f4082d779d58c9027520d4f0ad8e.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9f4d86b1ec4214cd32489b59eb870d1fc0a0bf04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
