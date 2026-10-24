# instCancelMonoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8a0d7078f08447aeb19c5515716d12080c48bfbefce481fb2bfe77891db96430",
  "kind": "instance",
  "lexical_name": "instCancelMonoid",
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
  "slug": "instcancelmonoid--97afb8020bb7f253b6b89913",
  "source": {
    "blob": "6fcca46cdf33b8d36819755d4580a915e5acd223",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 311,
    "line": 304,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Instances/Variant9d6fdf23399037aa478d4994ebec6bf3346349bf82af63450bfacd29bd8143fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:97afb8020bb7f253b6b89913ed9d6014029c2a8cfef602cc284ce52a713602f2",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Instances/Variant9d6fdf23399037aa478d4994ebec6bf3346349bf82af63450bfacd29bd8143fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8a0d7078f08447aeb19c5515716d12080c48bfbefce481fb2bfe77891db96430`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 304–311.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instCancelMonoid {R : Type*} [Ring R] [PartialOrder R] [IsStrictOrderedRing R]
    [IsDomain R] : CancelMonoid (Ioc (0 : R) 1) :=
  { Set.Ioc.instMonoid with
    mul_left_cancel := fun a _ _ h =>
      Subtype.ext <| mul_left_cancel₀ a.prop.1.ne' <| (congr_arg Subtype.val h :)
    mul_right_cancel := fun b _ _ h =>
      Subtype.ext <| mul_right_cancel₀ b.prop.1.ne' <| (congr_arg Subtype.val h :) }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Instances/Variant9d6fdf23399037aa478d4994ebec6bf3346349bf82af63450bfacd29bd8143fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Instances/Variant9d6fdf23399037aa478d4994ebec6bf3346349bf82af63450bfacd29bd8143fb.lean#L304).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6fcca46cdf33b8d36819755d4580a915e5acd223` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
