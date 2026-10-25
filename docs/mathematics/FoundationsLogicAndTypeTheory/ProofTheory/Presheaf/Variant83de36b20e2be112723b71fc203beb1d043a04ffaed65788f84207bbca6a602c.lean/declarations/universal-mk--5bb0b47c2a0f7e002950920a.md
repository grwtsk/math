# Universal.mk

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:28b86cd3010db22db7bb537d87a412c6dd366b0ba8ab855c8e92235e98b41608",
  "kind": "def",
  "lexical_name": "Universal.mk",
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
  "slug": "universal-mk--5bb0b47c2a0f7e002950920a",
  "source": {
    "blob": "0a523d59b7c91120450ed1474a7d7a1b96d9e51a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 174,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Presheaf/Variant83de36b20e2be112723b71fc203beb1d043a04ffaed65788f84207bbca6a602c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5bb0b47c2a0f7e002950920ab9acd10689d1d35f2bb87e26c5753cd612707be8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ProofTheory/Presheaf/Variant83de36b20e2be112723b71fc203beb1d043a04ffaed65788f84207bbca6a602c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:28b86cd3010db22db7bb537d87a412c6dd366b0ba8ab855c8e92235e98b41608`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 174–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Universal.mk {d : M.Derivation' φ'}
    (desc : ∀ {M' : PresheafOfModulesOfCommRing.{v} R}
      (_ : M'.Derivation' φ'), M ⟶ M')
    (fac : ∀ {M' : PresheafOfModulesOfCommRing.{v} R}
      (d' : M'.Derivation' φ'), d.postcomp (desc d') = d')
    (postcomp_injective : ∀ {M' : PresheafOfModulesOfCommRing.{v} R}
      (α β : M ⟶ M'), d.postcomp α = d.postcomp β → α = β) : d.Universal where
  desc := desc
  fac := fac
  postcomp_injective := postcomp_injective

end

end Derivation'

namespace DifferentialsConstruction

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
/-- The presheaf of relative differentials of a morphism of presheaves of
commutative rings. -/
@[simps -isSimp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ProofTheory/Presheaf/Variant83de36b20e2be112723b71fc203beb1d043a04ffaed65788f84207bbca6a602c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ProofTheory/Presheaf/Variant83de36b20e2be112723b71fc203beb1d043a04ffaed65788f84207bbca6a602c.lean#L174).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a523d59b7c91120450ed1474a7d7a1b96d9e51a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
