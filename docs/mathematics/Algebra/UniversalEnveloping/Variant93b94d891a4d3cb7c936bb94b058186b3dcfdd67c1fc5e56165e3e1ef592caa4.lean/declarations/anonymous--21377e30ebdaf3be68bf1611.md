# ι

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fed577f3901254c609a2a752b944a4a5290444400c6e7b10bae967ae5caef877",
  "kind": "def",
  "lexical_name": "ι",
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
  "slug": "anonymous--21377e30ebdaf3be68bf1611",
  "source": {
    "blob": "8579c839f16075ec7f4594e5bc8bc626ec1dee43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 88,
    "path": "GRWTSK/Algebra/UniversalEnveloping/Variant93b94d891a4d3cb7c936bb94b058186b3dcfdd67c1fc5e56165e3e1ef592caa4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:21377e30ebdaf3be68bf1611ca387680cd3fde8b305dbb6392d8691808234bb4",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalEnveloping/Variant93b94d891a4d3cb7c936bb94b058186b3dcfdd67c1fc5e56165e3e1ef592caa4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fed577f3901254c609a2a752b944a4a5290444400c6e7b10bae967ae5caef877`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ι : L →ₗ⁅R⁆ UniversalEnvelopingAlgebra R L :=
  { (mkAlgHom R L).toLinearMap.comp ιₜ with
    map_lie' := fun {x y} => by
      suffices mkAlgHom R L (ιₜ ⁅x, y⁆ + ιₜ y * ιₜ x) = mkAlgHom R L (ιₜ x * ιₜ y) by
        rw [map_mul] at this; simp [LieRing.of_associative_ring_bracket, ← this]
      exact Quotient.sound <| RingCon.le_ringConGen _ _ (Rel.lie_compat x y) }

variable {A : Type u₃} [Ring A] [Algebra R A] (f : L →ₗ⁅R⁆ A)

set_option backward.isDefEq.respectTransparency false in
/-- The universal property of the universal enveloping algebra: Lie algebra morphisms into
associative algebras lift to associative algebra morphisms from the universal enveloping algebra. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/UniversalEnveloping/Variant93b94d891a4d3cb7c936bb94b058186b3dcfdd67c1fc5e56165e3e1ef592caa4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalEnveloping/Variant93b94d891a4d3cb7c936bb94b058186b3dcfdd67c1fc5e56165e3e1ef592caa4.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8579c839f16075ec7f4594e5bc8bc626ec1dee43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
