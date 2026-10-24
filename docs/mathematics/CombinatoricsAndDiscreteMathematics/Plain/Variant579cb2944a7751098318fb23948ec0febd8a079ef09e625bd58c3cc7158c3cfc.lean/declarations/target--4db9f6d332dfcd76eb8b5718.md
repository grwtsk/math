# target

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b001878e3446842b49f92edf2e7ce753e7442189272438d2fdd9da1e72b67479",
  "kind": "def",
  "lexical_name": "target",
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
  "slug": "target--4db9f6d332dfcd76eb8b5718",
  "source": {
    "blob": "848c486c0c508013f59def781fc717d7e00cc07a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 93,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Plain/Variant579cb2944a7751098318fb23948ec0febd8a079ef09e625bd58c3cc7158c3cfc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4db9f6d332dfcd76eb8b5718ff6443a7bf0ce93419ba6a2849a214583e8ed1aa",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Plain/Variant579cb2944a7751098318fb23948ec0febd8a079ef09e625bd58c3cc7158c3cfc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b001878e3446842b49f92edf2e7ce753e7442189272438d2fdd9da1e72b67479`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def target : Node Ω C where
  type := (a.body.instantiate a.argument).normalForm
  normal := by
    obtain ⟨s, hs⟩ := a.sorted
    obtain ⟨b, hb⟩ := Ω.frame_target_sorted hs a.typed
    exact (Expr.normalForm_spec (hb.weaklyNormalizing hw)).2
  sorted := by
    obtain ⟨s, hs⟩ := a.sorted
    obtain ⟨b, hb⟩ := Ω.frame_target_sorted hs a.typed
    exact ⟨b, hb.normalForm hw⟩
  plain := by
    rw [Ω.profile_normalForm]
    exact T.plain.predecessor_path (a.target_reach hw)

open Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Plain/Variant579cb2944a7751098318fb23948ec0febd8a079ef09e625bd58c3cc7158c3cfc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Plain/Variant579cb2944a7751098318fb23948ec0febd8a079ef09e625bd58c3cc7158c3cfc.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `848c486c0c508013f59def781fc717d7e00cc07a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
