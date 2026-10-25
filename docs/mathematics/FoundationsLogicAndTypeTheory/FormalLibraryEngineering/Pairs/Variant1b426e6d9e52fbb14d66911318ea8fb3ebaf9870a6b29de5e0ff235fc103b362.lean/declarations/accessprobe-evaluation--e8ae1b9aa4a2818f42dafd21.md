# accessProbe_evaluation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1a48dc02-ce40-704b-8bed-68fda30d8c0a",
  "kind": "theorem",
  "lexical_name": "accessProbe_evaluation",
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
  "slug": "accessprobe-evaluation--e8ae1b9aa4a2818f42dafd21",
  "source": {
    "blob": "68a5532e1851d12dbbb96c5a18bd9233e36cc67e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 788,
    "line": 770,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pairs/Variant1b426e6d9e52fbb14d66911318ea8fb3ebaf9870a6b29de5e0ff235fc103b362.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e8ae1b9aa4a2818f42dafd2169b7e40d24f417b40a850908c1f45e834c96230c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pairs/Variant1b426e6d9e52fbb14d66911318ea8fb3ebaf9870a6b29de5e0ff235fc103b362.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a48dc02-ce40-704b-8bed-68fda30d8c0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 770–788.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem accessProbe_evaluation {A guard w fi o : Expr S} (hA : SortedAt P Γ A I) (mA :
   WellModed γ A .data)
    (hg : L.Family A guard) (hw : HasType P Γ w (R.carrier A)) (mw : WellModed γ w .data)
    (hfi : DataMap P Γ γ A (R.first.apply A) fi) {s : S} (hs : HasType P Γ A (.sort s))
    (ho : HasType P Γ o A) (mo : WellModed γ o .data) :
    Equivalent P Γ γ (R.first.observe A (R.accessProbe L.code A guard w fi) o)
      (L.code.cond (guard.instantiate o) L.top (R.second.observe (R.first.apply A) w
        (fi.instantiate o))) := by
  have hh := h.first.cancellation hA mA (h.accessBody_family hA mA hg hw mw hfi hs) ⟨ho,mo⟩
  simpa only [DataWrapper.cancelFormula,ite_true,DoubleCode.accessBody_instantiate,
    DoubleCode.accessProbe,LogicSetup.top,LogicCode.top,LogicCode.imp,LogicSetup.imp,
    LogicSetup.code] using hh
end Formed
end DoubleCode

namespace DoubleCode.Formed
variable {R : DoubleCode S} {Γ : List (Expr S)} {γ : Nat → Mode} {C : Set (Set S)}
    {L : LogicSetup P Γ γ C} {I J : Set S} (h : R.Formed L I J I)
include h
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pairs/Variant1b426e6d9e52fbb14d66911318ea8fb3ebaf9870a6b29de5e0ff235fc103b362.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pairs/Variant1b426e6d9e52fbb14d66911318ea8fb3ebaf9870a6b29de5e0ff235fc103b362.lean#L770).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68a5532e1851d12dbbb96c5a18bd9233e36cc67e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
