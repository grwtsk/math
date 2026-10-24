# cancelCommMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:176b0d5be729d952b53e2ddb3e77b38e113c7e933db5351885974d7c513bf634",
  "kind": "abbrev",
  "lexical_name": "cancelCommMonoid",
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
  "slug": "cancelcommmonoid--e3eafb09a5fe07da071ee495",
  "source": {
    "blob": "0078f1dc9b74fe6764084ac1733cdf90d8433e8f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 221,
    "line": 212,
    "path": "GRWTSK/Algebra/GroupTheory/Group/Variantca3522cebfc9aa2eae5116cbd5fbc397c3e1c1100af5feb22f0842cf6454fe37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e3eafb09a5fe07da071ee4957634efae6d15873e31d5164fcf0b05686b5cf264",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Group/Variantca3522cebfc9aa2eae5116cbd5fbc397c3e1c1100af5feb22f0842cf6454fe37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:176b0d5be729d952b53e2ddb3e77b38e113c7e933db5351885974d7c513bf634`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–221.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected abbrev cancelCommMonoid [CancelCommMonoid β] [IsOneApply F α β] [IsMulApply F α β]
    [IsPowApply ℕ F α β] : CancelCommMonoid F :=
  DFunLike.coe_injective.cancelCommMonoid (fun (f : F) ↦ (f : α → β)) coe_one coe_mul coe_pow

variable [Inv F]

/-- A `FunLike` type with inverse that satisfies `(f⁻¹) x = (f x)⁻¹` is an involutive inversion
if `β` is an involutive inversion. -/
@[to_additive /-- A `FunLike` type with negation that satisfies `(- f) x = - (f x)` is an involutive
negation if `β` is an involutive negation. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Group/Variantca3522cebfc9aa2eae5116cbd5fbc397c3e1c1100af5feb22f0842cf6454fe37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Group/Variantca3522cebfc9aa2eae5116cbd5fbc397c3e1c1100af5feb22f0842cf6454fe37.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0078f1dc9b74fe6764084ac1733cdf90d8433e8f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
