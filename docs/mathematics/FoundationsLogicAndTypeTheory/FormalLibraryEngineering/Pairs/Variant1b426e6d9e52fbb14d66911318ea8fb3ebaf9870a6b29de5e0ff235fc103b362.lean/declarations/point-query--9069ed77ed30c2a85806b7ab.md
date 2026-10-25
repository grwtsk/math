# point_query

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bb894ab7-2816-eb31-d45c-fddfc58e315c",
  "kind": "theorem",
  "lexical_name": "point_query",
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
  "slug": "point-query--9069ed77ed30c2a85806b7ab",
  "source": {
    "blob": "68a5532e1851d12dbbb96c5a18bd9233e36cc67e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 691,
    "line": 665,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pairs/Variant1b426e6d9e52fbb14d66911318ea8fb3ebaf9870a6b29de5e0ff235fc103b362.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9069ed77ed30c2a85806b7ab914ddf1133709d5dacafb54ec0d750cbbd71ac79",
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

Occurrence: `result:bb894ab7-2816-eb31-d45c-fddfc58e315c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 665–691.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem point_query {T c₀ c p : Expr S} (hT : SortedAt P Γ T I) (mT : WellModed γ T .data)
    (h₀ : HasType P Γ c₀ T) (m₀ : WellModed γ c₀ .data)
    (hc : HasType P Γ c T) (mc : WellModed γ c .data)
    {s r : S} (hs : HasType P Γ T (.sort s)) (hr : HasType P Γ (R.bpType T) (.sort r))
    (hp : HasType P Γ p (U.apply T)) (mp : WellModed γ p .data) :
    Equivalent P Γ γ (R.query U L.code 7 T (R.point U L.code T c₀ c) p) (U.observe T p c) := by
  have hb := h.encode_typed hU hT mT 7 hp mp
  have he := h.point_evaluation hU hT mT h₀ m₀ hc mc hs hr hb.1 hb.2
  have hm₀ := h.encode_mark hU hT mT 7 7 hp mp h₀ m₀
  have hm : Proves P Γ γ (R.mark L.code 7 T c₀ (R.encode U L.code 7 T p)) := by
    simpa only [beq_self_eq_true,LogicCode.sign,ite_true] using hm₀
  have hd := h.decode_encode hU hT mT 7 hp mp hc mc hs
  have hpoint := h.point_typed hU hT mT h₀ m₀ hc mc hs hr
  have hH := (h.second.sound (h.bp_sorted hT) (h.bp_mode mT)).2 _ _ hpoint.1 hpoint.2 hb
  have hE := (hU.sound hT mT).2 _ _ hp mp ⟨hc,mc⟩
  have hdc := h.decode_typed hU hT mT hb.1 hb.2 hs
  have hE' := (hU.sound hT mT).2 _ _ hdc.1 hdc.2 ⟨hc,mc⟩
  have hmF₀ := (h.markBody_family hT mT 7 h₀ m₀).instantiate hb.1 hb.2
  have hmF : L.Formula (R.mark L.code 7 T c₀ (R.encode U L.code 7 T p)) := by
    simpa only [DoubleCode.markBody_instantiate] using hmF₀
  apply L.equivalent_of_iff hH hE
  pts_pl L using [he,hm,hd]
end DoubleCode.Formed

namespace DoubleCode
variable (R : DoubleCode S)
/-- Source Bundle is a fixed data term; no non-dummy proof enters its code. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pairs/Variant1b426e6d9e52fbb14d66911318ea8fb3ebaf9870a6b29de5e0ff235fc103b362.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pairs/Variant1b426e6d9e52fbb14d66911318ea8fb3ebaf9870a6b29de5e0ff235fc103b362.lean#L665).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68a5532e1851d12dbbb96c5a18bd9233e36cc67e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
