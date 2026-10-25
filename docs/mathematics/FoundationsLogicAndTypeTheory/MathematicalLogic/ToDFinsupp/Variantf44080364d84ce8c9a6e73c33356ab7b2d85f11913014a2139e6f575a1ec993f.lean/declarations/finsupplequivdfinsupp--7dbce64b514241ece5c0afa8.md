# finsuppLequivDFinsupp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:550d97ec2d242e14d5cd11c428b3a295230c6bf72d04bc78a091bf94a57dcfa3",
  "kind": "def",
  "lexical_name": "finsuppLequivDFinsupp",
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
  "slug": "finsupplequivdfinsupp--7dbce64b514241ece5c0afa8",
  "source": {
    "blob": "8eeddf626115bc6ceaee25bc6f74cf2a0a5a73ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 259,
    "line": 249,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variantf44080364d84ce8c9a6e73c33356ab7b2d85f11913014a2139e6f575a1ec993f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7dbce64b514241ece5c0afa892497008167e31d9f2950719b7e34e4ae94546a3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variantf44080364d84ce8c9a6e73c33356ab7b2d85f11913014a2139e6f575a1ec993f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:550d97ec2d242e14d5cd11c428b3a295230c6bf72d04bc78a091bf94a57dcfa3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 249–259.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def finsuppLequivDFinsupp [DecidableEq ι] [Semiring R] [AddCommMonoid M]
    [∀ m : M, Decidable (m ≠ 0)] [Module R M] : (ι →₀ M) ≃ₗ[R] Π₀ _ : ι, M :=
  { finsuppEquivDFinsupp with
    toFun := Finsupp.toDFinsupp
    invFun := DFinsupp.toFinsupp
    map_smul' := Finsupp.toDFinsupp_smul
    map_add' := Finsupp.toDFinsupp_add }
#align finsupp_lequiv_dfinsupp finsuppLequivDFinsupp

-- porting note: `simps` generated as ` ↑(finsuppLequivDFinsupp R).toLinearMap = Finsupp.toDFinsupp`
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variantf44080364d84ce8c9a6e73c33356ab7b2d85f11913014a2139e6f575a1ec993f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ToDFinsupp/Variantf44080364d84ce8c9a6e73c33356ab7b2d85f11913014a2139e6f575a1ec993f.lean#L249).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8eeddf626115bc6ceaee25bc6f74cf2a0a5a73ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
