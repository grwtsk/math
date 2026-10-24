# Ideal.finiteHeight_of_isNoetherianRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:452ef829e15eff1588a439a0f44b2c465e89b649d0ee7897300cd66f780f6860",
  "kind": "instance",
  "lexical_name": "Ideal.finiteHeight_of_isNoetherianRing",
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
  "slug": "ideal-finiteheight-of-isnoetherianring--dcaf959250df67fc7234c927",
  "source": {
    "blob": "7224db578768f05f3dcd1859c50a2b7dabb63cf3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 225,
    "path": "GRWTSK/Algebra/KrullsHeightTheorem/Variant6c8aa75b22dfcf49d00568a09636719816c0d904d6b0be6752be17aa5439a63e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dcaf959250df67fc7234c927db6a397d187db749499472fd612e272c9748ce62",
  "verification": {
    "reference": "docs/verification/Algebra/KrullsHeightTheorem/Variant6c8aa75b22dfcf49d00568a09636719816c0d904d6b0be6752be17aa5439a63e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:452ef829e15eff1588a439a0f44b2c465e89b649d0ee7897300cd66f780f6860`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 225–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Ideal.finiteHeight_of_isNoetherianRing (I : Ideal R) :
    I.FiniteHeight := finiteHeight_iff_lt.mpr <| Or.elim (em (I = ⊤)) Or.inl
  fun h ↦ Or.inr <| (I.height_le_spanFinrank h).trans_lt (ENat.coe_lt_top _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/KrullsHeightTheorem/Variant6c8aa75b22dfcf49d00568a09636719816c0d904d6b0be6752be17aa5439a63e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/KrullsHeightTheorem/Variant6c8aa75b22dfcf49d00568a09636719816c0d904d6b0be6752be17aa5439a63e.lean#L225).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7224db578768f05f3dcd1859c50a2b7dabb63cf3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
