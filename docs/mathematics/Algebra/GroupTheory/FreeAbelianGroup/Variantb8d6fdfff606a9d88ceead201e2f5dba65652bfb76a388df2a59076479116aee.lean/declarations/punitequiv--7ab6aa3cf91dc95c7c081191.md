# punitEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1fd7d7530db40deeda5e740b48aebff43086b56da0da3ea825052cb6af0f7b76",
  "kind": "def",
  "lexical_name": "punitEquiv",
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
  "slug": "punitequiv--7ab6aa3cf91dc95c7c081191",
  "source": {
    "blob": "fce1d8b4e28b7b62870cd21758f539da45d16726",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 568,
    "line": 554,
    "path": "GRWTSK/Algebra/GroupTheory/FreeAbelianGroup/Variantb8d6fdfff606a9d88ceead201e2f5dba65652bfb76a388df2a59076479116aee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7ab6aa3cf91dc95c7c081191ce8eea8db551c7a5d2671626d0d27df7b5d76728",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/FreeAbelianGroup/Variantb8d6fdfff606a9d88ceead201e2f5dba65652bfb76a388df2a59076479116aee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1fd7d7530db40deeda5e740b48aebff43086b56da0da3ea825052cb6af0f7b76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 554–568.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def punitEquiv (T : Type*) [Unique T] : FreeAbelianGroup T ≃+ ℤ where
  toFun := FreeAbelianGroup.lift fun _ ↦ (1 : ℤ)
  invFun n := n • of Inhabited.default
  left_inv z := FreeAbelianGroup.induction_on z
    (by simp only [zero_smul, AddMonoidHom.map_zero])
    (Unique.forall_iff.2 <| by simp only [one_smul, lift.of]) (Unique.forall_iff.2 <| by simp)
    fun x y hx hy ↦ by
      simp only [AddMonoidHom.map_add, add_smul] at *
      rw [hx, hy]
  right_inv n := by
    rw [AddMonoidHom.map_zsmul, lift.of]
    exact zsmul_int_one n
  map_add' := AddMonoidHom.map_add _

/-- Isomorphic types have isomorphic free abelian groups. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/FreeAbelianGroup/Variantb8d6fdfff606a9d88ceead201e2f5dba65652bfb76a388df2a59076479116aee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/FreeAbelianGroup/Variantb8d6fdfff606a9d88ceead201e2f5dba65652bfb76a388df2a59076479116aee.lean#L554).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fce1d8b4e28b7b62870cd21758f539da45d16726` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
