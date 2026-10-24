# sdiff_inf_sdiff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2972c89f-15c4-1313-c6b4-26dd399ec012",
  "kind": "theorem",
  "lexical_name": "sdiff_inf_sdiff",
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
  "slug": "sdiff-inf-sdiff--ac30bc401ce64104b16bed36",
  "source": {
    "blob": "73d22c525de3bdc5cd20e9bc5548f48e88d397bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 157,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanAlgebra/Variant257305dc02748c7696ec1b2444573c7dd8f7062a3eeccf187fa493ae11587691.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ac30bc401ce64104b16bed36c24149c255047c725206653191d7a7e133180a03",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanAlgebra/Variant257305dc02748c7696ec1b2444573c7dd8f7062a3eeccf187fa493ae11587691.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2972c89f-15c4-1313-c6b4-26dd399ec012`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sdiff_inf_sdiff : x \ y ⊓ y \ x = ⊥ :=
  Eq.symm <|
    calc
      ⊥ = x ⊓ y ⊓ x \ y := by rw [inf_inf_sdiff]
      _ = x ⊓ (y ⊓ x ⊔ y \ x) ⊓ x \ y := by rw [sup_inf_sdiff]
      _ = (x ⊓ (y ⊓ x) ⊔ x ⊓ y \ x) ⊓ x \ y := by rw [inf_sup_left]
      _ = (y ⊓ (x ⊓ x) ⊔ x ⊓ y \ x) ⊓ x \ y := by ac_rfl
      _ = (y ⊓ x ⊔ x ⊓ y \ x) ⊓ x \ y := by rw [inf_idem]
      _ = x ⊓ y ⊓ x \ y ⊔ x ⊓ y \ x ⊓ x \ y := by rw [inf_sup_right, @inf_comm _ _ x y]
      _ = x ⊓ y \ x ⊓ x \ y := by rw [inf_inf_sdiff, bot_sup_eq]
      _ = x ⊓ x \ y ⊓ y \ x := by ac_rfl
      _ = x \ y ⊓ y \ x := by rw [inf_of_le_right sdiff_le']
#align sdiff_inf_sdiff sdiff_inf_sdiff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanAlgebra/Variant257305dc02748c7696ec1b2444573c7dd8f7062a3eeccf187fa493ae11587691.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BooleanAlgebra/Variant257305dc02748c7696ec1b2444573c7dd8f7062a3eeccf187fa493ae11587691.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73d22c525de3bdc5cd20e9bc5548f48e88d397bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
