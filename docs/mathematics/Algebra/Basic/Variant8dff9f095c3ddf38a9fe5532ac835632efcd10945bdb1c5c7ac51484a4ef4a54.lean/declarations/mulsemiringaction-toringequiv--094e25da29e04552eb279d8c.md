# MulSemiringAction.toRingEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:44c56c4edb5986691cd42e55eec43c31dc2dfd10b2675151a712326e602f46d3",
  "kind": "def",
  "lexical_name": "MulSemiringAction.toRingEquiv",
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
  "slug": "mulsemiringaction-toringequiv--094e25da29e04552eb279d8c",
  "source": {
    "blob": "702b391f3a6fec651d8d04577a60d6dd9a0d5c98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 79,
    "path": "GRWTSK/Algebra/Basic/Variant8dff9f095c3ddf38a9fe5532ac835632efcd10945bdb1c5c7ac51484a4ef4a54.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:094e25da29e04552eb279d8cd0cee3cb68d091ab737d08cb0347a6110a18f96d",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant8dff9f095c3ddf38a9fe5532ac835632efcd10945bdb1c5c7ac51484a4ef4a54.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:44c56c4edb5986691cd42e55eec43c31dc2dfd10b2675151a712326e602f46d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def MulSemiringAction.toRingEquiv [MulSemiringAction G R] (x : G) : R ≃+* R :=
  { DistribMulAction.toAddEquiv R x, MulSemiringAction.toRingHom G R x with }
#align mul_semiring_action.to_ring_equiv MulSemiringAction.toRingEquiv
#align mul_semiring_action.to_ring_equiv_symm_apply MulSemiringAction.toRingEquiv_symm_apply
#align mul_semiring_action.to_ring_equiv_apply MulSemiringAction.toRingEquiv_apply

section

variable {M N}

/-- Compose a `MulSemiringAction` with a `MonoidHom`, with action `f r' • m`.
See note [reducible non-instances]. -/
@[reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant8dff9f095c3ddf38a9fe5532ac835632efcd10945bdb1c5c7ac51484a4ef4a54.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant8dff9f095c3ddf38a9fe5532ac835632efcd10945bdb1c5c7ac51484a4ef4a54.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `702b391f3a6fec651d8d04577a60d6dd9a0d5c98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
