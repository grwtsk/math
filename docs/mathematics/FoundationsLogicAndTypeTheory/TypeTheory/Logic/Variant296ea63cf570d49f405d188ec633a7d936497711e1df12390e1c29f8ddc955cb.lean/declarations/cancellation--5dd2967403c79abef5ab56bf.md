# cancellation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1f127c9e-8136-3c49-7201-9b1d3e7ca743",
  "kind": "theorem",
  "lexical_name": "cancellation",
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
  "slug": "cancellation--5dd2967403c79abef5ab56bf",
  "source": {
    "blob": "337d2bd2599ed392d14954020c2faeca06f17926",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1808,
    "line": 1761,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Logic/Variant296ea63cf570d49f405d188ec633a7d936497711e1df12390e1c29f8ddc955cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5dd2967403c79abef5ab56bf0613688707466dd452152e52250a8ff6cd269331",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/Logic/Variant296ea63cf570d49f405d188ec633a7d936497711e1df12390e1c29f8ddc955cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f127c9e-8136-3c49-7201-9b1d3e7ca743`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1761–1808.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cancellation (h : Formed L I J R) {T a q : Expr S}
    (hT : SortedAt P Γ T I) (mT : WellModed γ T .data)
    (ha : L.DataArg b T a) (hq : L.DataArg (!b) T q) :
    Equivalent P Γ γ (R.observe T (R.build T a) q) (cancelFormula b a q) := by
  have htarget : L.Formula (cancelFormula b a q) := by
    cases b
    · exact hq.instantiate ha.1 ha.2
    · exact ha.instantiate hq.1 hq.2
  obtain ⟨s,hs⟩ := L.triple.codomain.1
  induction h generalizing a q with
  | identity =>
      simpa only [observe,build,cancelFormula,Bool.false_eq_true,ite_false] using
        Equivalent.refl (γ := γ) (htarget.1 s hs)
  | inclusion h hh ih => exact ih ha hq htarget
  | @positive A J K b R h ht ih =>
    have hb := (h.sound hT mT).1 a ha
    have hf := (h.sound hT mT).2 (R.build T a) q hb.1 hb.2 hq
    have hsnd := (h.positive ht).sound hT mT
    have hb' := hsnd.1 a ha
    have hf' := hsnd.2 _ q hb'.1 hb'.2 hq
    have hc : Converts ((R.positive (L.witnesses.type A) (L.witnesses.value A)).observe T
        ((R.positive (L.witnesses.type A) (L.witnesses.value A)).build T a) q)
        (R.observe T (R.build T a) q) := by
      simpa only [build,observe] using R.observe_converts T q
        (Reduces.converts (Relation.ReflTransGen.single (positive_cancel .dd (L.witnesses.type
          A) (L.witnesses.value A) (R.build T a))))
    exact (Equivalent.of_conversion (hf'.1 s hs) (hf.1 s hs) hc).trans
      (ih ha hq htarget) (hf'.1 s hs) (hf.1 s hs) (htarget.1 s hs)
  | @negative J B K b R U h ht hU ih =>
    have hq' : L.DataArg b T q := by simpa only [Bool.not_not] using hq
    have hb := (h.sound hT mT).1 q hq'
    have hf := (h.sound hT mT).2 (R.build T q) a hb.1 hb.2 ha
    have hsnd := (h.negative ht hU).sound hT mT
    have hb' := hsnd.1 a ha
    have hf' := hsnd.2 _ q hb'.1 hb'.2 hq
    have hsend := hU.send_typed hf
    have hread := hU.read_formula hsend.1 hsend.2
    have hc := Equivalent.of_conversion (γ := γ) (hf'.1 s hs) (hread.1 s hs) (R.negative_beta
      U T a q)
    have ih' := ih hq' ha (by simpa only [cancelFormula_swap] using htarget)
    have he := (hU.read_send hf).trans ih' (hread.1 s hs) (hf.1 s hs)
      (by simpa only [cancelFormula_swap] using htarget.1 s hs)
    simpa only [cancelFormula_swap] using hc.trans he (hf'.1 s hs) (hread.1 s hs)
      (by simpa only [cancelFormula_swap] using htarget.1 s hs)
end Formed
end DataWrapper

namespace Expr
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/Logic/Variant296ea63cf570d49f405d188ec633a7d936497711e1df12390e1c29f8ddc955cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Logic/Variant296ea63cf570d49f405d188ec633a7d936497711e1df12390e1c29f8ddc955cb.lean#L1761).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `337d2bd2599ed392d14954020c2faeca06f17926` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
