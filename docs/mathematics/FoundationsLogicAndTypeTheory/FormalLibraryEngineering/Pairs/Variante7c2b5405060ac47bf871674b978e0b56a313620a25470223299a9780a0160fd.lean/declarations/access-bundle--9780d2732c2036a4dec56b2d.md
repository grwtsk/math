# access_bundle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c97cbd4b-0792-9d44-36d7-49c0bc1bacba",
  "kind": "theorem",
  "lexical_name": "access_bundle",
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
  "slug": "access-bundle--9780d2732c2036a4dec56b2d",
  "source": {
    "blob": "70756e84995b57eaf9e2f43f282e72f58c1bb6f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 890,
    "line": 861,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pairs/Variante7c2b5405060ac47bf871674b978e0b56a313620a25470223299a9780a0160fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9780d2732c2036a4dec56b2d11f2ae37de4a923f38015105739e20667aedb49a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pairs/Variante7c2b5405060ac47bf871674b978e0b56a313620a25470223299a9780a0160fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c97cbd4b-0792-9d44-36d7-49c0bc1bacba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 861–890.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem access_bundle {A d m y guard fi : Expr S} (hA : SortedAt P Γ A I) (mA : WellModed γ A
   .data)
    (hd : HasType P Γ d A) (md : WellModed γ d .data)
    (hm : HasType P Γ m A) (mm : WellModed γ m .data)
    (hy : HasType P Γ y A) (my : WellModed γ y .data)
    (hg : L.Family A guard) (hfi : DataMap P Γ γ A (R.first.apply A) fi)
    {s : S} (hs : HasType P Γ A (.sort s))
    (hgd : Proves P Γ γ (guard.instantiate d))
    (hgm : Proves P Γ γ (L.neg (guard.instantiate m)))
    (hid : Proves P Γ γ (L.neg (R.first.observe A (fi.instantiate m) d))) :
    Equivalent P Γ γ (R.access L.code A guard (R.bundle L.code A d m y) fi)
      (R.first.observe A (fi.instantiate m) y) := by
  have hw := h.bundle_typed hA mA hd md hm mm hy my
  have hf := h.accessProbe_typed hA mA hg hw.1 hw.2 hfi hs
  have ht := h.accessProbe_true hA mA hg hw.1 hw.2 hfi hs hd md hgd
  have he₁ := h.bundle_select_true hA mA hd md hm mm hy my hf.1 hf.2 ht
  have he₂ := h.accessProbe_false hA mA hg hw.1 hw.2 hfi hs hm mm hgm
  have hfm := hfi.apply hm mm
  have he₃ := h.bundle_select_false hA mA hd md hm mm hy my hfm.1 hfm.2 hid
  have h₀ := (h.second.sound (h.first.sorted hA) (h.first.mode mA)).2 _ _ hw.1 hw.2 hf
  have h₁ := (h.first.sound hA mA).2 _ _ hf.1 hf.2 ⟨hm,mm⟩
  have h₂ := (h.second.sound (h.first.sorted hA) (h.first.mode mA)).2 _ _ hw.1 hw.2 hfm
  have h₃ := (h.first.sound hA mA).2 _ _ hfm.1 hfm.2 ⟨hy,my⟩
  obtain ⟨r,hr⟩ := L.triple.codomain.1
  exact (he₁.trans he₂ (h₀.1 r hr) (h₁.1 r hr) (h₂.1 r hr)).trans he₃
    (h₀.1 r hr) (h₂.1 r hr) (h₃.1 r hr)
end DoubleCode.Formed

namespace DoubleCode
variable (R : DoubleCode S)
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pairs/Variante7c2b5405060ac47bf871674b978e0b56a313620a25470223299a9780a0160fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pairs/Variante7c2b5405060ac47bf871674b978e0b56a313620a25470223299a9780a0160fd.lean#L861).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70756e84995b57eaf9e2f43f282e72f58c1bb6f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
