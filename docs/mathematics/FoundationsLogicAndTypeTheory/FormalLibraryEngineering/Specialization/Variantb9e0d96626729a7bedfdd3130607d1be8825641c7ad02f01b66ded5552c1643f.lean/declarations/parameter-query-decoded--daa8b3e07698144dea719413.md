# parameter_query_decoded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:27042169-c73b-ad25-1a60-b7c3171df1db",
  "kind": "theorem",
  "lexical_name": "parameter_query_decoded",
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
  "slug": "parameter-query-decoded--daa8b3e07698144dea719413",
  "source": {
    "blob": "671204504e601f15ffbc630afc2f2b204f0486e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1822,
    "line": 1791,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialization/Variantb9e0d96626729a7bedfdd3130607d1be8825641c7ad02f01b66ded5552c1643f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:daa8b3e07698144dea71941320ba586ab9f43807f9b13301f7142e63f1f56998",
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

Occurrence: `result:27042169-c73b-ad25-1a60-b7c3171df1db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1791–1822.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem parameter_query_decoded (t : Fin 7) {v : Expr S} (hv : HasType P Γ v B.predType) (mv :
  WellModed γ v .data) :
    Equivalent P Γ γ
      (B.relational.probe.doubled.query B.relational.predicate L.code t.castSucc
        (B.relational.probe.rawType B.type)
        (B.parameter L.code KY.code KP.code) v)
      (B.property L.code KY.code KP.code t
        (B.relational.probe.doubled.decode B.relational.predicate L.code
          (B.relational.probe.rawType B.type)
          (B.relational.probe.doubled.encode B.relational.predicate L.code t.castSucc
            (B.relational.probe.rawType B.type) v))) := by
  obtain ⟨s,hs⟩ := H.relational_formed.probe.funTriple.domain.1
  obtain ⟨r,hr⟩ := H.relational_formed.probe.mainTriple.product.1
  have hc := H.relational_formed.rawTop_typed H.type_sorted H.type_mode
  have he := H.relational_formed.probe.doubled_formed.realization_query_decoded
    H.relational_formed.channel.predicate
    (H.relational_formed.probe.raw_sorted H.type_sorted) (H.relational_formed.probe.raw_mode
      H.type_mode)
    hc.1 hc.2 (H.relational_formed.probe.raw_sorted H.type_sorted s hs)
    (H.relational_formed.probe.doubled_formed.bp_sorted (H.relational_formed.probe.raw_sorted
      H.type_sorted) r hr)
    (H.propertyBody_family KY KP) t hv mv
  simpa only [propertyBody_instantiate,parameter,RelationalCode.channel] using he
end Formed
end SpecializedCode
end PureTypeSystem.Labelled

namespace PureTypeSystem.Labelled.LogicSetup
universe u
variable {S : Type u} {P : Specification S} {Γ : List (Expr S)} {γ : Nat → Mode}
  {C : Set (Set S)} (L : LogicSetup P Γ γ C) {A B D : Expr S}
/-- The source's guarded comparison builder, with a genuine proof binder. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialization/Variantb9e0d96626729a7bedfdd3130607d1be8825641c7ad02f01b66ded5552c1643f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialization/Variantb9e0d96626729a7bedfdd3130607d1be8825641c7ad02f01b66ded5552c1643f.lean#L1791).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `671204504e601f15ffbc630afc2f2b204f0486e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
