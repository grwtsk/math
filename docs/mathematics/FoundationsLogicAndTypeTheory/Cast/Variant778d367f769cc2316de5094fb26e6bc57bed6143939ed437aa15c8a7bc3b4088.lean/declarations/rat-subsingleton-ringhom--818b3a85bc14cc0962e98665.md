# Rat.subsingleton_ringHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0c69d39b31122730101dfe653e8d0fbd41821645082199401d916a2e487bac51",
  "kind": "instance",
  "lexical_name": "Rat.subsingleton_ringHom",
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
  "slug": "rat-subsingleton-ringhom--818b3a85bc14cc0962e98665",
  "source": {
    "blob": "f81c8b94feba28f5e25cb0bb38cc6e30f06e3609",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 496,
    "line": 487,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:818b3a85bc14cc0962e98665961c0fe3958e7e991b26b686d1dfc87c8216aa84",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0c69d39b31122730101dfe653e8d0fbd41821645082199401d916a2e487bac51`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 487–496.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Rat.subsingleton_ringHom {R : Type*} [Semiring R] : Subsingleton (ℚ →+* R) :=
  ⟨RingHom.ext_rat⟩
#align rat.subsingleton_ring_hom Rat.subsingleton_ringHom

section SMul

namespace Rat

variable {K : Type*} [DivisionRing K]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Cast/Variant778d367f769cc2316de5094fb26e6bc57bed6143939ed437aa15c8a7bc3b4088.lean#L487).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f81c8b94feba28f5e25cb0bb38cc6e30f06e3609` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
