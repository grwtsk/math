# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:86204a05951a85eba064a09a297ad6d5c1f61ac02d034a1c63815e0512e5d7d6",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--32f4e48db2faac3bb9f4d500",
  "source": {
    "blob": "6968563145948b67953f4aa49441c0ce263f4c7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 264,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variante1f676f9f0eab6c2669c50a5ef7decdbf03ebaa390444cb3e5391b66eec5f40f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:32f4e48db2faac3bb9f4d500baf8262c5033bcf9944f1a139304b7acfb8fbb3b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variante1f676f9f0eab6c2669c50a5ef7decdbf03ebaa390444cb3e5391b66eec5f40f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:86204a05951a85eba064a09a297ad6d5c1f61ac02d034a1c63815e0512e5d7d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 264–294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : CategoryTheory.Groupoid (FundamentalGroupoid X) where
  Hom x y := Path.Homotopic.Quotient x.as y.as
  id x := ⟦Path.refl x.as⟧
  comp {_ _ _} := Path.Homotopic.Quotient.comp
  id_comp {x _} f :=
    Quotient.inductionOn f fun a =>
      show ⟦(Path.refl x.as).trans a⟧ = ⟦a⟧ from Quotient.sound ⟨Path.Homotopy.reflTrans a⟩
  comp_id {_ y} f :=
    Quotient.inductionOn f fun a =>
      show ⟦a.trans (Path.refl y.as)⟧ = ⟦a⟧ from Quotient.sound ⟨Path.Homotopy.transRefl a⟩
  assoc {_ _ _ _} f g h :=
    Quotient.inductionOn₃ f g h fun p q r =>
      show ⟦(p.trans q).trans r⟧ = ⟦p.trans (q.trans r)⟧ from
        Quotient.sound ⟨Path.Homotopy.transAssoc p q r⟩
  inv {x y} p :=
    Quotient.lift (fun l : Path x.as y.as => ⟦l.symm⟧)
      (by
        rintro a b ⟨h⟩
        simp only
        rw [Quotient.eq]
        exact ⟨h.symm₂⟩)
      p
  inv_comp {_ y} f :=
    Quotient.inductionOn f fun a =>
      show ⟦a.symm.trans a⟧ = ⟦Path.refl y.as⟧ from
        Quotient.sound ⟨(Path.Homotopy.reflSymmTrans a).symm⟩
  comp_inv {x _} f :=
    Quotient.inductionOn f fun a =>
      show ⟦a.trans a.symm⟧ = ⟦Path.refl x.as⟧ from
        Quotient.sound ⟨(Path.Homotopy.reflTransSymm a).symm⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variante1f676f9f0eab6c2669c50a5ef7decdbf03ebaa390444cb3e5391b66eec5f40f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variante1f676f9f0eab6c2669c50a5ef7decdbf03ebaa390444cb3e5391b66eec5f40f.lean#L264).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6968563145948b67953f4aa49441c0ce263f4c7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
