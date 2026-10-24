# instIsLocalHomValuationInteger

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:49722384-c432-6531-368f-c208d3cc1d72",
  "kind": "theorem",
  "lexical_name": "instIsLocalHomValuationInteger",
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
  "slug": "instislocalhomvaluationinteger--a1c687629559c8d8d9b9a4a4",
  "source": {
    "blob": "00ccb479f60f5c0eaf022204817de03b2c322dc1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 162,
    "path": "GRWTSK/Algebra/Extension/Variant32ad2d31574e567a9ed9edc3855cbac2723928149347a734906532903f3f18fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1c687629559c8d8d9b9a4a44225df068d1d90bc84f242ff0c0c5625d590b279",
  "verification": {
    "reference": "docs/verification/Algebra/Extension/Variant32ad2d31574e567a9ed9edc3855cbac2723928149347a734906532903f3f18fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:49722384-c432-6531-368f-c208d3cc1d72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 162–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem instIsLocalHomValuationInteger {S ΓS : Type*} [CommRing S]
    [LinearOrderedCommGroupWithZero ΓS]
    [Algebra R S] [IsLocalHom (algebraMap R S)] {vS : Valuation S ΓS}
    [vR.HasExtension vS] : IsLocalHom (algebraMap vR.integer vS.integer) where
  map_nonunit r hr := by
    apply (Valuation.integer.integers (v := vR)).isUnit_of_one
    · exact (isUnit_map_iff (algebraMap R S) _).mp (hr.map (algebraMap _ S))
    · apply (Valuation.integer.integers (v := vS)).one_of_isUnit at hr
      exact (val_map_eq_one_iff vR vS _).mp hr

end integer

section AlgebraInstances

open IsLocalRing Valuation ValuationSubring

variable {K L Γ₀ Γ₁ : outParam Type*} [Field K] [Field L] [Algebra K L]
  [LinearOrderedCommGroupWithZero Γ₀] [LinearOrderedCommGroupWithZero Γ₁] (vK : Valuation K Γ₀)
  (vL : Valuation L Γ₁) [vK.HasExtension vL]

local notation "K₀" => Valuation.valuationSubring vK
local notation "L₀" => Valuation.valuationSubring vL

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Extension/Variant32ad2d31574e567a9ed9edc3855cbac2723928149347a734906532903f3f18fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Extension/Variant32ad2d31574e567a9ed9edc3855cbac2723928149347a734906532903f3f18fc.lean#L162).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00ccb479f60f5c0eaf022204817de03b2c322dc1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
