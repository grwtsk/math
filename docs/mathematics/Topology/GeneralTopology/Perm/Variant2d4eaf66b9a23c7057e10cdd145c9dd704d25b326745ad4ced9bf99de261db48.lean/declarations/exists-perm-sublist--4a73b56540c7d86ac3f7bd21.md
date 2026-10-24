# exists_perm_sublist

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:af58ed17-454a-d05e-5de8-00f2e3d70d5a",
  "kind": "theorem",
  "lexical_name": "exists_perm_sublist",
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
  "slug": "exists-perm-sublist--4a73b56540c7d86ac3f7bd21",
  "source": {
    "blob": "9186c3a1ce7df7689a61f9a932ec5e5eb2b652e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 274,
    "line": 256,
    "path": "GRWTSK/Topology/GeneralTopology/Perm/Variant2d4eaf66b9a23c7057e10cdd145c9dd704d25b326745ad4ced9bf99de261db48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4a73b56540c7d86ac3f7bd21ba435abd16d36dbe800deb3f21cfe0e4c344d649",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Perm/Variant2d4eaf66b9a23c7057e10cdd145c9dd704d25b326745ad4ced9bf99de261db48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af58ed17-454a-d05e-5de8-00f2e3d70d5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 256–274.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_perm_sublist {l₁ l₂ l₂' : List α} (s : l₁ <+ l₂) (p : l₂ ~ l₂') :
    ∃ l₁', l₁' ~ l₁ ∧ l₁' <+ l₂' := by
  induction p generalizing l₁ with
  | nil => exact ⟨[], sublist_nil.mp s ▸ .rfl, nil_sublist _⟩
  | cons x _ IH =>
    match s with
    | .cons _ s => let ⟨l₁', p', s'⟩ := IH s; exact ⟨l₁', p', s'.cons _⟩
    | .cons_cons _ s => let ⟨l₁', p', s'⟩ := IH s; exact ⟨x :: l₁', p'.cons x, s'.cons_cons _⟩
  | swap x y l' =>
    match s with
    | .cons _ (.cons _ s) => exact ⟨_, .rfl, (s.cons _).cons _⟩
    | .cons _ (.cons_cons _ s) => exact ⟨x :: _, .rfl, (s.cons _).cons_cons _⟩
    | .cons_cons _ (.cons _ s) => exact ⟨y :: _, .rfl, (s.cons_cons _).cons _⟩
    | .cons_cons _ (.cons_cons _ s) => exact ⟨x :: y :: _, .swap .., (s.cons_cons _).cons_cons _⟩
  | trans _ _ IH₁ IH₂ =>
    let ⟨_, pm, sm⟩ := IH₁ s
    let ⟨r₁, pr, sr⟩ := IH₂ sm
    exact ⟨r₁, pr.trans pm, sr⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Perm/Variant2d4eaf66b9a23c7057e10cdd145c9dd704d25b326745ad4ced9bf99de261db48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Perm/Variant2d4eaf66b9a23c7057e10cdd145c9dd704d25b326745ad4ced9bf99de261db48.lean#L256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9186c3a1ce7df7689a61f9a932ec5e5eb2b652e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
