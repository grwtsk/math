# realization_query_decoded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ba2606c8-2180-f57a-2bb3-038075e88fe1",
  "kind": "theorem",
  "lexical_name": "realization_query_decoded",
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
  "slug": "realization-query-decoded--4e7dc6bbc69f9ff2e979c418",
  "source": {
    "blob": "b5f21e36507710d4ab09326615af7cc30053d552",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 393,
    "line": 364,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialization/Variant735f0722a5fe36a81ed2c368585e987571c6fb8ceb4f0322535ce6fa267c92ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4e7dc6bbc69f9ff2e979c4183a93080f9406bea7053241c06885ca4b1ba0e9fa",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialization/Variant735f0722a5fe36a81ed2c368585e987571c6fb8ceb4f0322535ce6fa267c92ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba2606c8-2180-f57a-2bb3-038075e88fe1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 364–393.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem realization_query_decoded (t : Fin 7) {p : Expr S}
    (hp : HasType P Γ p (U.apply T)) (mp : WellModed γ p .data) :
    Equivalent P Γ γ (R.query U L.code t.castSucc T (R.realization U L.code T c Q) p)
      ((Q t).instantiate (R.decode U L.code T (R.encode U L.code t.castSucc T p))) := by
  have hb := h.encode_typed hU hT mT t.castSucc hp mp
  have hd := h.decode_typed hU hT mT hb.1 hb.2 hs
  have he := h.realization_evaluation hU hT mT hc mc hs hr hQ hb.1 hb.2
  have hm : ∀ u, L.Formula (R.mark L.code (u : Fin 7).castSucc T c (R.encode U L.code
    t.castSucc T p)) := by
    intro u
    simpa only [markBody_instantiate] using (h.markBody_family hT mT u.castSucc hc
      mc).instantiate hb.1 hb.2
  have hprop := fun u => (hQ u).instantiate hd.1 hd.2
  have hsel := L.choices_select (List.finRange 7) t (by simp) (by decide)
    (fun u _ => hm u) (fun u _ => hprop u) (fun u _ => by
      have hm := h.encode_mark hU hT mT t.castSucc u.castSucc hp mp hc mc
      have heq : (t.castSucc == u.castSucc) = decide (t = u) := by
        by_cases ht : t = u
        · simp [ht]
        · have hn : t.castSucc ≠ u.castSucc := fun h => ht (Fin.castSucc_inj.mp h)
          simp [ht, hn]
      simpa only [heq] using hm)
  have ho := h.realization_typed hU hT mT hc mc hs hr hQ
  have f₀ := (h.second.sound (h.bp_sorted hT) (h.bp_mode mT)).2 _ _ ho.1 ho.2 hb
  have f₁ := L.choices_formula (List.finRange 7) (fun u _ => hm u) (fun u _ => hprop u)
  obtain ⟨a,ha⟩ := f₀.sorted L
  obtain ⟨b,hb⟩ := f₁.sorted L
  obtain ⟨d,hd⟩ := (hprop t).sorted L
  exact he.trans hsel ha hb hd

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialization/Variant735f0722a5fe36a81ed2c368585e987571c6fb8ceb4f0322535ce6fa267c92ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Specialization/Variant735f0722a5fe36a81ed2c368585e987571c6fb8ceb4f0322535ce6fa267c92ef.lean#L364).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b5f21e36507710d4ab09326615af7cc30053d552` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
