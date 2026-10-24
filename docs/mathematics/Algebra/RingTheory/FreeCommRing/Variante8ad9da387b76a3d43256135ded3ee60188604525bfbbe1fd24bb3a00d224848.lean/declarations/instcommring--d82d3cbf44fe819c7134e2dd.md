# instCommRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6d4fdd6c84ac878aa255b51ec50f0edff3d11d1ffaf508683cc4b56727fa01d1",
  "kind": "instance",
  "lexical_name": "instCommRing",
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
  "slug": "instcommring--d82d3cbf44fe819c7134e2dd",
  "source": {
    "blob": "a18fe17a7041279ba22b49b088da11f0d277df40",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 382,
    "line": 368,
    "path": "GRWTSK/Algebra/RingTheory/FreeCommRing/Variante8ad9da387b76a3d43256135ded3ee60188604525bfbbe1fd24bb3a00d224848.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d82d3cbf44fe819c7134e2dd85aa9e1b4be223ffecce23972d40a6c6dc903981",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/FreeCommRing/Variante8ad9da387b76a3d43256135ded3ee60188604525bfbbe1fd24bb3a00d224848.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6d4fdd6c84ac878aa255b51ec50f0edff3d11d1ffaf508683cc4b56727fa01d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 368–382.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instCommRing [Subsingleton α] : CommRing (FreeRing α) where
  mul_comm a b := by
    induction a with
    | neg_one => simp
    | add x y ihx ihy => rw [add_mul, mul_add, ihx, ihy]
    | mul x y ihx ihy => rw [mul_assoc, ihy, ← mul_assoc, ihx, mul_assoc]
    | of u =>
      induction b with
      | neg_one => simp
      | add x y ihx ihy => rw [add_mul, mul_add, ihx, ihy]
      | mul x y ihx ihy => rw [← mul_assoc, ihx, mul_assoc, ihy, ← mul_assoc]
      | of v => rw [Subsingleton.elim u v]

/-- If α has size at most 1 then the natural map from the free ring on `α` to the
free commutative ring on `α` is an isomorphism of rings. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/FreeCommRing/Variante8ad9da387b76a3d43256135ded3ee60188604525bfbbe1fd24bb3a00d224848.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/FreeCommRing/Variante8ad9da387b76a3d43256135ded3ee60188604525bfbbe1fd24bb3a00d224848.lean#L368).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a18fe17a7041279ba22b49b088da11f0d277df40` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
