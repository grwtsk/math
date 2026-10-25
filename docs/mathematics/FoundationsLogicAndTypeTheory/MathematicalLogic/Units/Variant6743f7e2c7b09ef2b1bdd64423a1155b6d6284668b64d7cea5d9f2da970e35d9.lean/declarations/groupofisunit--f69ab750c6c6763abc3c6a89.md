# groupOfIsUnit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6bac5f7a89813d37d4129ee58f53e267640b9e433545498a5926bdd5d88d4cf5",
  "kind": "def",
  "lexical_name": "groupOfIsUnit",
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
  "slug": "groupofisunit--f69ab750c6c6763abc3c6a89",
  "source": {
    "blob": "6aa17efc92c8a5b0ba6a512e43e58a0510f780f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 837,
    "line": 829,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Units/Variant6743f7e2c7b09ef2b1bdd64423a1155b6d6284668b64d7cea5d9f2da970e35d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f69ab750c6c6763abc3c6a899af9a77f7e1cf7fa47e4ee62ba8ad69e7486e8c0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Units/Variant6743f7e2c7b09ef2b1bdd64423a1155b6d6284668b64d7cea5d9f2da970e35d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6bac5f7a89813d37d4129ee58f53e267640b9e433545498a5926bdd5d88d4cf5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 829–837.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def groupOfIsUnit [hM : Monoid M] (h : ∀ a : M, IsUnit a) : Group M :=
  { hM with
    inv := fun a => ↑(h a).unit⁻¹,
    mul_left_inv := fun a => by
      change ↑(h a).unit⁻¹ * a = 1
      rw [Units.inv_mul_eq_iff_eq_mul, (h a).unit_spec, mul_one] }
#align group_of_is_unit groupOfIsUnit

/-- Constructs a `CommGroup` structure on a `CommMonoid` consisting only of units. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Units/Variant6743f7e2c7b09ef2b1bdd64423a1155b6d6284668b64d7cea5d9f2da970e35d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Units/Variant6743f7e2c7b09ef2b1bdd64423a1155b6d6284668b64d7cea5d9f2da970e35d9.lean#L829).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6aa17efc92c8a5b0ba6a512e43e58a0510f780f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
