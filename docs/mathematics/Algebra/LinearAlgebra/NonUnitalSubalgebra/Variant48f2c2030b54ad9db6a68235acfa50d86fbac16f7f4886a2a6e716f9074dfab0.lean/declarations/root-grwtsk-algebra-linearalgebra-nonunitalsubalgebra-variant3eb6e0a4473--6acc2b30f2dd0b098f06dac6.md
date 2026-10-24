# _root_.GRWTSK.Algebra.LinearAlgebra.NonUnitalSubalgebra.Variant3eb6e0a44735c3075462d05389b4c63fe8da58e95f49e511043f3b7f8869fddd.NonUnitalAlgHom.subsingleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:97c7250b6d50440208fa0d3cd3cdc928e6fa48426ed0419257fdbd2fa96dc522",
  "kind": "instance",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.NonUnitalSubalgebra.Variant3eb6e0a44735c3075462d05389b4c63fe8da58e95f49e511043f3b7f8869fddd.NonUnitalAlgHom.subsingleton",
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
  "slug": "root-grwtsk-algebra-linearalgebra-nonunitalsubalgebra-variant3eb6e0a4473--6acc2b30f2dd0b098f06dac6",
  "source": {
    "blob": "47e5f0a71cad883e8c7b586a095a93d8d398f581",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 942,
    "line": 931,
    "path": "GRWTSK/Algebra/LinearAlgebra/NonUnitalSubalgebra/Variant48f2c2030b54ad9db6a68235acfa50d86fbac16f7f4886a2a6e716f9074dfab0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6acc2b30f2dd0b098f06dac6a98394e117592ca45fa2dd948be91dfc08e40b7c",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/NonUnitalSubalgebra/Variant48f2c2030b54ad9db6a68235acfa50d86fbac16f7f4886a2a6e716f9074dfab0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:97c7250b6d50440208fa0d3cd3cdc928e6fa48426ed0419257fdbd2fa96dc522`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 931–942.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance _root_.GRWTSK.Algebra.LinearAlgebra.NonUnitalSubalgebra.Variant3eb6e0a44735c3075462d05389b4c63fe8da58e95f49e511043f3b7f8869fddd.NonUnitalAlgHom.subsingleton [Subsingleton (NonUnitalSubalgebra R A)] :
    Subsingleton (A →ₙₐ[R] B) :=
  ⟨fun f g =>
    NonUnitalAlgHom.ext fun a =>
      have : a ∈ (⊥ : NonUnitalSubalgebra R A) :=
        Subsingleton.elim (⊤ : NonUnitalSubalgebra R A) ⊥ ▸ mem_top
      (mem_bot.mp this).symm ▸ (map_zero f).trans (map_zero g).symm⟩


/-- The map `S → T` when `S` is a non-unital subalgebra contained in the non-unital subalgebra `T`.

This is the non-unital subalgebra version of `Submodule.inclusion`, or `Subring.inclusion` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/NonUnitalSubalgebra/Variant48f2c2030b54ad9db6a68235acfa50d86fbac16f7f4886a2a6e716f9074dfab0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/NonUnitalSubalgebra/Variant48f2c2030b54ad9db6a68235acfa50d86fbac16f7f4886a2a6e716f9074dfab0.lean#L931).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `47e5f0a71cad883e8c7b586a095a93d8d398f581` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
