# IsFinitePresentation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c2f661fc4cfce0e4b8f4769ede03272f5eada41063c5860e1acf0e0d913ff4ee",
  "kind": "class",
  "lexical_name": "IsFinitePresentation",
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
  "slug": "isfinitepresentation--2c7ee54d24e6e7a7df913531",
  "source": {
    "blob": "0b3f888739127354a1b1110cc78a3c19c14e208d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 274,
    "line": 269,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Quasicoherent/Variant8ec5cc58dac3ea324d3efe86de9240450e0a87c96a0e3158d85b4c36a6d30c18.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2c7ee54d24e6e7a7df913531b2b69810128f64ecfa1991b2e2f08932ad46e8df",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Quasicoherent/Variant8ec5cc58dac3ea324d3efe86de9240450e0a87c96a0e3158d85b4c36a6d30c18.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c2f661fc4cfce0e4b8f4769ede03272f5eada41063c5860e1acf0e0d913ff4ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 269–274.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class IsFinitePresentation (M : SheafOfModules.{u} R) : Prop where
  exists_quasicoherentData (M) :
    ∃ (σ : QuasicoherentData.{u₁} M), σ.IsFinitePresentation

variable (R) in
@[inherit_doc IsFinitePresentation]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Quasicoherent/Variant8ec5cc58dac3ea324d3efe86de9240450e0a87c96a0e3158d85b4c36a6d30c18.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Quasicoherent/Variant8ec5cc58dac3ea324d3efe86de9240450e0a87c96a0e3158d85b4c36a6d30c18.lean#L269).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b3f888739127354a1b1110cc78a3c19c14e208d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
