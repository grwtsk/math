# closureCommGroupOfComm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:84b2095b1f89accb2637d0114bcdcf5372ba2af468ef7af238a8bf5af8e8316d",
  "kind": "def",
  "lexical_name": "closureCommGroupOfComm",
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
  "slug": "closurecommgroupofcomm--04e23cc797db2e5703125d1b",
  "source": {
    "blob": "f469b22d27bfa6ed9d1ad66f8ae918334433da91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1208,
    "line": 1187,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant8fdabc56f8895828a688c92ffc55590280ade030188d92a03cd9b4785349f40c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:04e23cc797db2e5703125d1b28135e9e23b02bfedf9b839f40a4d70218967a1f",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant8fdabc56f8895828a688c92ffc55590280ade030188d92a03cd9b4785349f40c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:84b2095b1f89accb2637d0114bcdcf5372ba2af468ef7af238a8bf5af8e8316d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1187–1208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def closureCommGroupOfComm {k : Set G} (hcomm : ∀ x ∈ k, ∀ y ∈ k, x * y = y * x) :
    CommGroup (closure k) :=
  { (closure k).toGroup with
    mul_comm := fun x y => by
      ext
      simp only [Subgroup.coe_mul]
      refine'
        closure_induction₂ x.prop y.prop hcomm (fun x => by simp only [mul_one, one_mul])
          (fun x => by simp only [mul_one, one_mul])
          (fun x y z h₁ h₂ => by rw [mul_assoc, h₂, ← mul_assoc, h₁, mul_assoc])
          (fun x y z h₁ h₂ => by rw [← mul_assoc, h₁, mul_assoc, h₂, ← mul_assoc])
          (fun x y h => by
            rw [inv_mul_eq_iff_eq_mul, ← mul_assoc, h, mul_assoc, mul_inv_self, mul_one])
          fun x y h => by
          rw [mul_inv_eq_iff_eq_mul, mul_assoc, h, ← mul_assoc, inv_mul_self, one_mul] }
#align subgroup.closure_comm_group_of_comm Subgroup.closureCommGroupOfComm
#align add_subgroup.closure_add_comm_group_of_comm AddSubgroup.closureAddCommGroupOfComm

variable (G)

/-- `closure` forms a Galois insertion with the coercion to set. -/
@[to_additive "`closure` forms a Galois insertion with the coercion to set."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant8fdabc56f8895828a688c92ffc55590280ade030188d92a03cd9b4785349f40c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant8fdabc56f8895828a688c92ffc55590280ade030188d92a03cd9b4785349f40c.lean#L1187).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f469b22d27bfa6ed9d1ad66f8ae918334433da91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
