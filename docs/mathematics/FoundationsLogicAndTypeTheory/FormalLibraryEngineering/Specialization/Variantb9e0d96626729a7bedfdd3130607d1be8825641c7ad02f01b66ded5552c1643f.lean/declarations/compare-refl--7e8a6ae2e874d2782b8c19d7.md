# compare_refl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5ba6edeb-f93f-9ca1-a27c-f81881f14d02",
  "kind": "theorem",
  "lexical_name": "compare_refl",
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
  "slug": "compare-refl--7e8a6ae2e874d2782b8c19d7",
  "source": {
    "blob": "671204504e601f15ffbc630afc2f2b204f0486e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1160,
    "line": 1152,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialization/Variantb9e0d96626729a7bedfdd3130607d1be8825641c7ad02f01b66ded5552c1643f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7e8a6ae2e874d2782b8c19d71470f1acfa1d936552d19c1a8041391010d5e8f3",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialization/Variantb9e0d96626729a7bedfdd3130607d1be8825641c7ad02f01b66ded5552c1643f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ba6edeb-f93f-9ca1-a27c-f81881f14d02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1152–1160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compare_refl {y : Expr S}
    (hy : HasType P Γ y O.carrier) (my : WellModed γ y .data)
    : Proves P Γ γ (O.compare L.code KY.code KP.code y y) := by
  apply H.compare_intro KY KP hy my hy my
  intro Δ δ e i hi mi
  have fy := (H.rename e).observe_formula (KY.rename e) (KP.rename e) hi mi
    (carrier_typed_rename (O := O) e hy) (e.moded my)
  exact fy.equivalent_refl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialization/Variantb9e0d96626729a7bedfdd3130607d1be8825641c7ad02f01b66ded5552c1643f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialization/Variantb9e0d96626729a7bedfdd3130607d1be8825641c7ad02f01b66ded5552c1643f.lean#L1152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `671204504e601f15ffbc630afc2f2b204f0486e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
