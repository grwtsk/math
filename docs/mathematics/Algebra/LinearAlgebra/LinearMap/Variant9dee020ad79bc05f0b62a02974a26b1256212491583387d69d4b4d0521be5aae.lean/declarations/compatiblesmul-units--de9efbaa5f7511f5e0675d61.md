# CompatibleSMul.units

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a09c714ffb142bd3070dfb46fa8816eaa9053362deb4b4c42f8bb738a88d3266",
  "kind": "instance",
  "lexical_name": "CompatibleSMul.units",
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
  "slug": "compatiblesmul-units--de9efbaa5f7511f5e0675d61",
  "source": {
    "blob": "9feb83ebac684637800434c22c833cd2628a0c2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 638,
    "line": 626,
    "path": "GRWTSK/Algebra/LinearAlgebra/LinearMap/Variant9dee020ad79bc05f0b62a02974a26b1256212491583387d69d4b4d0521be5aae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:de9efbaa5f7511f5e0675d61d4bab8bd26b348d3febe82d7f1767b9b42a704dd",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/LinearMap/Variant9dee020ad79bc05f0b62a02974a26b1256212491583387d69d4b4d0521be5aae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a09c714ffb142bd3070dfb46fa8816eaa9053362deb4b4c42f8bb738a88d3266`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 626–638.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance CompatibleSMul.units {R S : Type*} [Monoid R] [MulAction R M] [MulAction R M₂]
    [Semiring S] [Module S M] [Module S M₂] [CompatibleSMul M M₂ R S] : CompatibleSMul M M₂ Rˣ S :=
  ⟨fun fₗ c x ↦ (CompatibleSMul.map_smul fₗ (c : R) x : _)⟩
#align linear_map.compatible_smul.units LinearMap.CompatibleSMul.units

end AddCommGroup

end LinearMap

namespace Module

/-- `g : R →+* S` is `R`-linear when the module structure on `S` is `Module.compHom S g` . -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/LinearMap/Variant9dee020ad79bc05f0b62a02974a26b1256212491583387d69d4b4d0521be5aae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/LinearMap/Variant9dee020ad79bc05f0b62a02974a26b1256212491583387d69d4b4d0521be5aae.lean#L626).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9feb83ebac684637800434c22c833cd2628a0c2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
