# GroupWithZero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:89fd032ac71f4af24c1dfdc6441390f4014f3277017b86612fdc0b156ddff7bf",
  "kind": "class",
  "lexical_name": "GroupWithZero",
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
  "slug": "groupwithzero--0b283ab321587424cd5849d9",
  "source": {
    "blob": "ba9bda9cc76ce5a440bb52dcfe8ac14250d49201",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 200,
    "line": 191,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variant702e4129e6129c133753f896eddc85235de5c527510724565e28d16c0f7ab85f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0b283ab321587424cd5849d9f5ca308f39524b88290ce85a141b7591be155986",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variant702e4129e6129c133753f896eddc85235de5c527510724565e28d16c0f7ab85f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:89fd032ac71f4af24c1dfdc6441390f4014f3277017b86612fdc0b156ddff7bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–200.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class GroupWithZero (G₀ : Type u) extends MonoidWithZero G₀, DivInvMonoid G₀, Nontrivial G₀ where
  /-- The inverse of `0` in a group with zero is `0`. -/
  inv_zero : (0 : G₀)⁻¹ = 0
  /-- Every nonzero element of a group with zero is invertible. -/
  mul_inv_cancel (a : G₀) : a ≠ 0 → a * a⁻¹ = 1
#align group_with_zero GroupWithZero

export GroupWithZero (inv_zero)
attribute [simp] inv_zero

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variant702e4129e6129c133753f896eddc85235de5c527510724565e28d16c0f7ab85f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variant702e4129e6129c133753f896eddc85235de5c527510724565e28d16c0f7ab85f.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba9bda9cc76ce5a440bb52dcfe8ac14250d49201` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
