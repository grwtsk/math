# access_bundle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:524460fb-6af7-1e4d-b49c-a28c8585eb38",
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
  "slug": "access-bundle--b1084df79a35fa3f502ebd86",
  "source": {
    "blob": "8d364e9c3ed17618824ff839edb851a0b5ac042b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 20943,
    "line": 20915,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variante70d25cd6513acd2d95e02d461f823ca43871e44756b3cd3e1dce42476a45a3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b1084df79a35fa3f502ebd8663dc027d8f18d06a90a69e1d2f4db67132fc73dd",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variante70d25cd6513acd2d95e02d461f823ca43871e44756b3cd3e1dce42476a45a3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:524460fb-6af7-1e4d-b49c-a28c8585eb38`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20915–20943.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
 theorem access_bundle {A d m y guard fi : Expr S} (hA : SortedAt P Γ A I) (mA : WellModed γ A .data)
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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variante70d25cd6513acd2d95e02d461f823ca43871e44756b3cd3e1dce42476a45a3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OriginalClosureNarrow/Variante70d25cd6513acd2d95e02d461f823ca43871e44756b3cd3e1dce42476a45a3e.lean#L20915).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d364e9c3ed17618824ff839edb851a0b5ac042b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
