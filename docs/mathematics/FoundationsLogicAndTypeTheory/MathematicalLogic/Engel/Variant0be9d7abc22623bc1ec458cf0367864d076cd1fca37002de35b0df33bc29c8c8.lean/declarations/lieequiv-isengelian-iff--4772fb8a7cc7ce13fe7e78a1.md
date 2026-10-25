# LieEquiv.isEngelian_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ea957c46-040c-b997-933e-cb2f8655b615",
  "kind": "theorem",
  "lexical_name": "LieEquiv.isEngelian_iff",
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
  "slug": "lieequiv-isengelian-iff--4772fb8a7cc7ce13fe7e78a1",
  "source": {
    "blob": "95f682c941e212184e88fe146452b23142aafbe1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 198,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Engel/Variant0be9d7abc22623bc1ec458cf0367864d076cd1fca37002de35b0df33bc29c8c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4772fb8a7cc7ce13fe7e78a1e96d390e4d07350f26317ec1b8b5a2b9567aee4b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Engel/Variant0be9d7abc22623bc1ec458cf0367864d076cd1fca37002de35b0df33bc29c8c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea957c46-040c-b997-933e-cb2f8655b615`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LieEquiv.isEngelian_iff (e : L ≃ₗ⁅R⁆ L₂) :
    LieAlgebra.IsEngelian.{u₁, u₂, u₄} R L ↔ LieAlgebra.IsEngelian.{u₁, u₃, u₄} R L₂ :=
  ⟨e.surjective.isEngelian, e.symm.surjective.isEngelian⟩
#align lie_equiv.is_engelian_iff LieEquiv.isEngelian_iff

-- Porting note: changed statement from `∃ ∃ ..` to `∃ .. ∧ ..`
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Engel/Variant0be9d7abc22623bc1ec458cf0367864d076cd1fca37002de35b0df33bc29c8c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Engel/Variant0be9d7abc22623bc1ec458cf0367864d076cd1fca37002de35b0df33bc29c8c8.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95f682c941e212184e88fe146452b23142aafbe1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
