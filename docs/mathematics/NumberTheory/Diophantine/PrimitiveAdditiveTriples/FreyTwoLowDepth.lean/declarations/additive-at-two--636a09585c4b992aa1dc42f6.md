# additive_at_two

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5ddc31f8-e29d-06e3-205e-048cdeb9113e",
  "kind": "theorem",
  "lexical_name": "additive_at_two",
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
  "slug": "additive-at-two--636a09585c4b992aa1dc42f6",
  "source": {
    "blob": "48082171ee298a814e358a5ca850f1662f5deb2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 136,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoLowDepth.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:636a09585c4b992aa1dc42f6ba3cec6a3641889e943cf506abf3b479ad721223",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoLowDepth.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5ddc31f8-e29d-06e3-205e-048cdeb9113e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 136–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem additive_at_two (t : PrimitiveAdditiveTriple) (h : ¬ 16 ∣ t.a*t.b*t.c) :
    HasAdditiveReduction (LocalRing 2) t.freyCurve := by
  refine ⟨minimal_at_two t h, ?_, ?_⟩
  · have hv := (val_map_lt_one_iff (LocalRing 2) (K := ℚ)
      (localizedModel t 2).Δ).mpr (localized_delta_nonunit_at_two t)
    have hv' : localVal (LocalRing 2) ((localizedModel t 2).baseChange ℚ).Δ < 1 := by
      simpa only [WeierstrassCurve.baseChange, WeierstrassCurve.map_Δ] using hv
    simpa only [localizedModel_baseChange] using hv'
  · have hv := (val_map_lt_one_iff (LocalRing 2) (K := ℚ)
      (localizedModel t 2).c₄).mpr (localized_c4_nonunit_at_two t)
    have hv' : localVal (LocalRing 2) ((localizedModel t 2).baseChange ℚ).c₄ < 1 := by
      simpa only [WeierstrassCurve.baseChange, WeierstrassCurve.map_c₄] using hv
    simpa only [localizedModel_baseChange] using hv'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoLowDepth.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoLowDepth.lean#L136).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48082171ee298a814e358a5ca850f1662f5deb2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
