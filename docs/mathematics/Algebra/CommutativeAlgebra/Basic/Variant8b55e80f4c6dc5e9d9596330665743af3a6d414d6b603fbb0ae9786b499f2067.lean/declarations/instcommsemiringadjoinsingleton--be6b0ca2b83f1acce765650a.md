# instCommSemiringAdjoinSingleton

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4b2784d2d986d931fa4ccf0f4f2c16661106b41690000486534f64bb7aa4570c",
  "kind": "instance",
  "lexical_name": "instCommSemiringAdjoinSingleton",
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
  "slug": "instcommsemiringadjoinsingleton--be6b0ca2b83f1acce765650a",
  "source": {
    "blob": "36bc0e9c7eeaf9f0771143217f9d9596d8ddcb2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 108,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant8b55e80f4c6dc5e9d9596330665743af3a6d414d6b603fbb0ae9786b499f2067.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:be6b0ca2b83f1acce765650a219226d47593f96ce2bf47b0cf6661eb68d44114",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Variant8b55e80f4c6dc5e9d9596330665743af3a6d414d6b603fbb0ae9786b499f2067.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4b2784d2d986d931fa4ccf0f4f2c16661106b41690000486534f64bb7aa4570c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instCommSemiringAdjoinSingleton :
    CommSemiring <| adjoin R {x} where
  mul_comm := fun ⟨p, hp⟩ ⟨q, hq⟩ ↦ by
      obtain ⟨p', rfl⟩ := Algebra.adjoin_singleton_eq_range_aeval R x ▸ hp
      obtain ⟨q', rfl⟩ := Algebra.adjoin_singleton_eq_range_aeval R x ▸ hq
      simp only [AlgHom.toRingHom_eq_coe, RingHom.coe_coe, MulMemClass.mk_mul_mk, ← map_mul,
        mul_comm p' q']

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Variant8b55e80f4c6dc5e9d9596330665743af3a6d414d6b603fbb0ae9786b499f2067.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant8b55e80f4c6dc5e9d9596330665743af3a6d414d6b603fbb0ae9786b499f2067.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `36bc0e9c7eeaf9f0771143217f9d9596d8ddcb2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
