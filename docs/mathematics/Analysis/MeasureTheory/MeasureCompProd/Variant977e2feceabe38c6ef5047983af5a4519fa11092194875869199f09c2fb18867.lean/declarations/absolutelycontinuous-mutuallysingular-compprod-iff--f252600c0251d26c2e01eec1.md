# AbsolutelyContinuous.mutuallySingular_compProd_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ea9c1051-78f7-be07-e339-8de6cd431452",
  "kind": "lemma",
  "lexical_name": "AbsolutelyContinuous.mutuallySingular_compProd_iff",
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
  "slug": "absolutelycontinuous-mutuallysingular-compprod-iff--f252600c0251d26c2e01eec1",
  "source": {
    "blob": "cb1a1ffc261f11f7013db59c5350c25427671bba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 358,
    "line": 349,
    "path": "GRWTSK/Analysis/MeasureTheory/MeasureCompProd/Variant977e2feceabe38c6ef5047983af5a4519fa11092194875869199f09c2fb18867.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f252600c0251d26c2e01eec16f6c0d18106c2c213436f8368daba3b215596c45",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/MeasureCompProd/Variant977e2feceabe38c6ef5047983af5a4519fa11092194875869199f09c2fb18867.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea9c1051-78f7-be07-e339-8de6cd431452`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 349–358.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma AbsolutelyContinuous.mutuallySingular_compProd_iff [SigmaFinite μ] [SigmaFinite ν]
    (hμν : μ ≪ ν) :
    μ ⊗ₘ κ ⟂ₘ ν ⊗ₘ η ↔ μ ⊗ₘ κ ⟂ₘ μ ⊗ₘ η := by
  conv_lhs => rw [ν.haveLebesgueDecomposition_add μ]
  rw [compProd_add_left, MutuallySingular.add_right_iff]
  simp only [(mutuallySingular_singularPart ν μ).symm.compProd_of_left κ η, true_and]
  refine ⟨fun h ↦ h.mono_ac .rfl ?_, fun h ↦ h.mono_ac .rfl ?_⟩
  · exact (absolutelyContinuous_withDensity_rnDeriv hμν).compProd_left _
  · exact (withDensity_absolutelyContinuous μ (ν.rnDeriv μ)).compProd_left _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/MeasureCompProd/Variant977e2feceabe38c6ef5047983af5a4519fa11092194875869199f09c2fb18867.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/MeasureCompProd/Variant977e2feceabe38c6ef5047983af5a4519fa11092194875869199f09c2fb18867.lean#L349).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb1a1ffc261f11f7013db59c5350c25427671bba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
