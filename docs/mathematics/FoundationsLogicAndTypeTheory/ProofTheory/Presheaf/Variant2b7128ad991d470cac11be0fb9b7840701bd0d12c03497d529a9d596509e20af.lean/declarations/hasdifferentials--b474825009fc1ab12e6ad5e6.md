# HasDifferentials

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6dda962c575918db2d4c27c56becac72c7ace682a4d5c71c65087bd01d4b0ef4",
  "kind": "class",
  "lexical_name": "HasDifferentials",
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
  "slug": "hasdifferentials--b474825009fc1ab12e6ad5e6",
  "source": {
    "blob": "ed557dc3b887a9a36952e4afe5f9423efd194b38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 122,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Presheaf/Variant2b7128ad991d470cac11be0fb9b7840701bd0d12c03497d529a9d596509e20af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b474825009fc1ab12e6ad5e677c09e8d59e6816e050c494c010308bf2b79d847",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ProofTheory/Presheaf/Variant2b7128ad991d470cac11be0fb9b7840701bd0d12c03497d529a9d596509e20af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6dda962c575918db2d4c27c56becac72c7ace682a4d5c71c65087bd01d4b0ef4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 122–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class HasDifferentials : Prop where
  exists_universal_derivation : ∃ (M : PresheafOfModulesOfCommRing.{u} R)
      (d : M.Derivation φ), Nonempty d.Universal

/-- Given a morphism of presheaves of commutative rings `φ : S ⟶ R`,
this is the type of relative `φ`-derivation of a presheaf of `R`-modules `M`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ProofTheory/Presheaf/Variant2b7128ad991d470cac11be0fb9b7840701bd0d12c03497d529a9d596509e20af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Presheaf/Variant2b7128ad991d470cac11be0fb9b7840701bd0d12c03497d529a9d596509e20af.lean#L122).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed557dc3b887a9a36952e4afe5f9423efd194b38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
