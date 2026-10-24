# instCommSemigroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6276d744d5f0a684b4354b1eda4932fd470e63b12b62af7c695a7f311a2f33da",
  "kind": "instance",
  "lexical_name": "instCommSemigroup",
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
  "slug": "instcommsemigroup--d3a72afca5a5d7dc2c76c5b2",
  "source": {
    "blob": "2d6c28f294cd647821970a1f1d3e812e693d0457",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 61,
    "path": "GRWTSK/Algebra/GroupTheory/FastInstance/Variantc16c9c7cdafda254536ee5b9f4cabd3060dc1a63c7c6d3e7cfec07b43c6bff32.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d3a72afca5a5d7dc2c76c5b2b8485d89e5e923b859e2de9b95299b08799b8033",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/FastInstance/Variantc16c9c7cdafda254536ee5b9f4cabd3060dc1a63c7c6d3e7cfec07b43c6bff32.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6276d744d5f0a684b4354b1eda4932fd470e63b12b62af7c695a7f311a2f33da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instCommSemigroup [CommSemigroup α] : CommSemigroup (Wrapped α) :=
  fast_instance% Function.Injective.commSemigroup _ val_injective (fun _ _ => rfl)

/--
info: def testing.instSemigroup.{u_1} : {α : Type u_1} → [Semigroup α] → Semigroup (Wrapped α) :=
fun {α} [inst : Semigroup α] => @Semigroup.mk (Wrapped α) (@instMulWrapped α (@Semigroup.toMul α inst)) ⋯
-/
#guard_msgs in
set_option pp.explicit true in
#print instSemigroup
/--
info: def testing.instCommSemigroup.{u_1} : {α : Type u_1} → [CommSemigroup α] → CommSemigroup (Wrapped α) :=
fun {α} [inst : CommSemigroup α] =>
  @CommSemigroup.mk (Wrapped α) (@instSemigroup α (@CommSemigroup.toSemigroup α inst)) ⋯
-/
#guard_msgs in
set_option pp.explicit true in
#print instCommSemigroup


/-!
Non-defeq error
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/FastInstance/Variantc16c9c7cdafda254536ee5b9f4cabd3060dc1a63c7c6d3e7cfec07b43c6bff32.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/FastInstance/Variantc16c9c7cdafda254536ee5b9f4cabd3060dc1a63c7c6d3e7cfec07b43c6bff32.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d6c28f294cd647821970a1f1d3e812e693d0457` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
