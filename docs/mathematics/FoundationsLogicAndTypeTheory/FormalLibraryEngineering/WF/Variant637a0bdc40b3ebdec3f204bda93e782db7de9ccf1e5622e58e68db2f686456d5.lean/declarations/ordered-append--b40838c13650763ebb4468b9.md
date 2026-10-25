# Ordered.append

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:728aa629-6a7d-1935-898b-1db92642c9cc",
  "kind": "theorem",
  "lexical_name": "Ordered.append",
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
  "slug": "ordered-append--b40838c13650763ebb4468b9",
  "source": {
    "blob": "2f36e1e7e2dd9e92d4eebfbb1d1b1530bceb5426",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 406,
    "line": 374,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WF/Variant637a0bdc40b3ebdec3f204bda93e782db7de9ccf1e5622e58e68db2f686456d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b40838c13650763ebb4468b9c127e9300fc1222bf36e2289b09f8029b2ddc785",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WF/Variant637a0bdc40b3ebdec3f204bda93e782db7de9ccf1e5622e58e68db2f686456d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:728aa629-6a7d-1935-898b-1db92642c9cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 374–406.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem Ordered.append {l : RBNode α} {v : α} {r : RBNode α}
    (lv : l.All (cmpLT cmp · v)) (vr : r.All (cmpLT cmp v ·))
    (hl : l.Ordered cmp) (hr : r.Ordered cmp) : (append l r).Ordered cmp := by
  unfold append; split
  · exact hr
  · exact hl
  · have ⟨xv, _, bv⟩ := lv; have ⟨ax, xb, ha, hb⟩ := hl
    have ⟨vy, vc, _⟩ := vr; have ⟨cy, yd, hc, hd⟩ := hr
    have : _ ∧ _ ∧ _ := ⟨hb.append bv vc hc, xb.append (xv.trans_l vc), (vy.trans_r bv).append cy⟩
    split
    · next H =>
      have ⟨⟨b'z, c'z, hb', hc'⟩, ⟨xz, xb', _⟩, zy, _, c'y⟩ := H ▸ this
      have az := xz.trans_r ax; have zd := zy.trans_l yd
      exact ⟨⟨xz, az, b'z⟩, ⟨zy, c'z, zd⟩, ⟨ax, xb', ha, hb'⟩, c'y, yd, hc', hd⟩
    · have ⟨hbc, xbc, bcy⟩ := this; have xy := xv.trans vy
      exact ⟨ax, ⟨xy, xbc, xy.trans_l yd⟩, ha, bcy, yd, hbc, hd⟩
  · have ⟨xv, _, bv⟩ := lv; have ⟨ax, xb, ha, hb⟩ := hl
    have ⟨vy, vc, _⟩ := vr; have ⟨cy, yd, hc, hd⟩ := hr
    have : _ ∧ _ ∧ _ := ⟨hb.append bv vc hc, xb.append (xv.trans_l vc), (vy.trans_r bv).append cy⟩
    split
    · next H =>
      have ⟨⟨b'z, c'z, hb', hc'⟩, ⟨xz, xb', _⟩, zy, _, c'y⟩ := H ▸ this
      have az := xz.trans_r ax; have zd := zy.trans_l yd
      exact ⟨⟨xz, az, b'z⟩, ⟨zy, c'z, zd⟩, ⟨ax, xb', ha, hb'⟩, c'y, yd, hc', hd⟩
    · have ⟨hbc, xbc, bcy⟩ := this; have xy := xv.trans vy
      exact ha.balLeft ax ⟨xy, xbc, xy.trans_l yd⟩ ⟨bcy, yd, hbc, hd⟩
  · have ⟨vx, vb, _⟩ := vr; have ⟨bx, yc, hb, hc⟩ := hr
    exact ⟨(vx.trans_r lv).append bx, yc, hl.append lv vb hb, hc⟩
  · have ⟨xv, _, bv⟩ := lv; have ⟨ax, xb, ha, hb⟩ := hl
    exact ⟨ax, xb.append (xv.trans_l vr), ha, hb.append bv vr hr⟩
termination_by l.size + r.size

/-- The balance properties of the `append` function. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WF/Variant637a0bdc40b3ebdec3f204bda93e782db7de9ccf1e5622e58e68db2f686456d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WF/Variant637a0bdc40b3ebdec3f204bda93e782db7de9ccf1e5622e58e68db2f686456d5.lean#L374).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f36e1e7e2dd9e92d4eebfbb1d1b1530bceb5426` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
