# boundary_increment_is_carry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:05bceb43-ae18-746d-41e4-e8b314a01753",
  "kind": "theorem",
  "lexical_name": "boundary_increment_is_carry",
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
  "slug": "boundary-increment-is-carry--c06b1496ed123b042c06d3c8",
  "source": {
    "blob": "5c678628ba0919f8548a7b1cc7b256f7c012445a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 156,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PrimeBoundedContinuation/Variantedd0ad1616eec2bbce8bb75accb9be5a3ccaadbec773edef8034e90d7e8d44f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c06b1496ed123b042c06d3c8ed3d40dc6b5d4ba2b85c8c10d92082baa9fff8e4",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/PrimeBoundedContinuation/Variantedd0ad1616eec2bbce8bb75accb9be5a3ccaadbec773edef8034e90d7e8d44f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05bceb43-ae18-746d-41e4-e8b314a01753`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundary_increment_is_carry {p : ℕ} (hp : 0 < p) (lapValue : ℕ) :
    absoluteExponent p lapValue (p - 1) + 1 =
      absoluteExponent p (lapValue + 1) 0 := by
  have hone : 1 ≤ p := hp
  calc
    absoluteExponent p lapValue (p - 1) + 1 =
        p * lapValue + ((p - 1) + 1) := by
          simp [absoluteExponent, Nat.add_assoc]
    _ = p * lapValue + p := by rw [Nat.sub_add_cancel hone]
    _ = absoluteExponent p (lapValue + 1) 0 := by
      simp [absoluteExponent, Nat.mul_add]

/-! ## A generic finite mixed-radix cell -/

/--
Heterogeneous bounded digits.  The head of the radix list is the least
significant coordinate, matching `S₀ = 1` in the protocol definition.
-/
@[surface_novel]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/PrimeBoundedContinuation/Variantedd0ad1616eec2bbce8bb75accb9be5a3ccaadbec773edef8034e90d7e8d44f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/PrimeBoundedContinuation/Variantedd0ad1616eec2bbce8bb75accb9be5a3ccaadbec773edef8034e90d7e8d44f3.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c678628ba0919f8548a7b1cc7b256f7c012445a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
