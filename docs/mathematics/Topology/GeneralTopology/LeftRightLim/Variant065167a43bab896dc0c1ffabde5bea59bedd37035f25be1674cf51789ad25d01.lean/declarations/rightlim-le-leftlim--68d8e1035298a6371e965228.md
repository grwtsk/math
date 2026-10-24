# rightLim_le_leftLim

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5191bc0c-fccd-f700-4947-253efc7f03c7",
  "kind": "theorem",
  "lexical_name": "rightLim_le_leftLim",
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
  "slug": "rightlim-le-leftlim--68d8e1035298a6371e965228",
  "source": {
    "blob": "12d452910bbfd935ce0bf2621137b6c9c89e7957",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 171,
    "path": "GRWTSK/Topology/GeneralTopology/LeftRightLim/Variant065167a43bab896dc0c1ffabde5bea59bedd37035f25be1674cf51789ad25d01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:68d8e1035298a6371e965228f29c0b43ddd28b5e0847f4afe1c99fd3d6ab0a02",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LeftRightLim/Variant065167a43bab896dc0c1ffabde5bea59bedd37035f25be1674cf51789ad25d01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5191bc0c-fccd-f700-4947-253efc7f03c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rightLim_le_leftLim (h : x < y) : rightLim f x ≤ leftLim f y := by
  letI : TopologicalSpace α := Preorder.topology α
  haveI : OrderTopology α := ⟨rfl⟩
  rcases eq_or_ne (𝓝[<] y) ⊥ with (h' | h')
  · simp [leftLim, h']
    exact rightLim_le hf h
  obtain ⟨a, ⟨xa, ay⟩⟩ : (Ioo x y).Nonempty :=
    forall_mem_nonempty_iff_neBot.2 (neBot_iff.2 h') (Ioo x y)
      (Ioo_mem_nhdsWithin_Iio ⟨h, le_refl _⟩)
  calc
    rightLim f x ≤ f a := hf.rightLim_le xa
    _ ≤ leftLim f y := hf.le_leftLim ay
#align monotone.right_lim_le_left_lim Monotone.rightLim_le_leftLim

variable [TopologicalSpace α] [OrderTopology α]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LeftRightLim/Variant065167a43bab896dc0c1ffabde5bea59bedd37035f25be1674cf51789ad25d01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LeftRightLim/Variant065167a43bab896dc0c1ffabde5bea59bedd37035f25be1674cf51789ad25d01.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12d452910bbfd935ce0bf2621137b6c9c89e7957` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
