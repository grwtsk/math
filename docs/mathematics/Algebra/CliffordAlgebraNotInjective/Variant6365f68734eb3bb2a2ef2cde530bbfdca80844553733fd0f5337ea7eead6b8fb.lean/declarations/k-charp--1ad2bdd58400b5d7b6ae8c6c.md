# K.charP

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3196a9931ed7cdaa05076c1bdea93fed078dcc5eee3c5271bee70eb8991fe5c3",
  "kind": "instance",
  "lexical_name": "K.charP",
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
  "slug": "k-charp--1ad2bdd58400b5d7b6ae8c6c",
  "source": {
    "blob": "d31523d8d2a407363a363dbcbaba467ed28c11ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 103,
    "path": "GRWTSK/Algebra/CliffordAlgebraNotInjective/Variant6365f68734eb3bb2a2ef2cde530bbfdca80844553733fd0f5337ea7eead6b8fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1ad2bdd58400b5d7b6ae8c6c1b67ebae171d35e3f5c417760a31509fe7e345ff",
  "verification": {
    "reference": "docs/verification/Algebra/CliffordAlgebraNotInjective/Variant6365f68734eb3bb2a2ef2cde530bbfdca80844553733fd0f5337ea7eead6b8fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3196a9931ed7cdaa05076c1bdea93fed078dcc5eee3c5271bee70eb8991fe5c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance K.charP : CharP K 2 := by
  dsimp only [K]
  rw [CharP.quotient_iff_le_ker_natCast]
  have : Nat.castRingHom (MvPolynomial (Fin 3) (ZMod 2)) = C.comp (Nat.castRingHom _) := by
    ext1 r; rfl
  rw [this, ← Ideal.comap_comap, ← RingHom.comap_ker, comap_C_kIdeal]
  exact Ideal.comap_mono bot_le

/-- The generators of `K`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/CliffordAlgebraNotInjective/Variant6365f68734eb3bb2a2ef2cde530bbfdca80844553733fd0f5337ea7eead6b8fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CliffordAlgebraNotInjective/Variant6365f68734eb3bb2a2ef2cde530bbfdca80844553733fd0f5337ea7eead6b8fb.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d31523d8d2a407363a363dbcbaba467ed28c11ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
