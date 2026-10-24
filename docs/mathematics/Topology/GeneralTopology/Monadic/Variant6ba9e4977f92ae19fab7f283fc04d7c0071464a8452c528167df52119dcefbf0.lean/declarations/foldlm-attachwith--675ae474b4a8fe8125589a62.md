# foldlM_attachWith

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:57d39fa9-21f9-0d6c-2c33-1927a384b154",
  "kind": "theorem",
  "lexical_name": "foldlM_attachWith",
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
  "slug": "foldlm-attachwith--675ae474b4a8fe8125589a62",
  "source": {
    "blob": "8dd6a2a530c29715a86f97c834c86afac87adf6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 243,
    "path": "GRWTSK/Topology/GeneralTopology/Monadic/Variant6ba9e4977f92ae19fab7f283fc04d7c0071464a8452c528167df52119dcefbf0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:675ae474b4a8fe8125589a623e28e5005403d6016a8eee13d0833a908a86bb9a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Monadic/Variant6ba9e4977f92ae19fab7f283fc04d7c0071464a8452c528167df52119dcefbf0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:57d39fa9-21f9-0d6c-2c33-1927a384b154`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 243–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem foldlM_attachWith [Monad m]
    {l : List α} {q : α → Prop} (H : ∀ a, a ∈ l → q a) {f : β → { x // q x} → m β} {b} :
    (l.attachWith q H).foldlM f b = l.attach.foldlM (fun b ⟨a, h⟩ => f b ⟨a, H _ h⟩) b := by
  induction l generalizing b with
  | nil => simp
  | cons a l ih => simp [ih, foldlM_map]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Monadic/Variant6ba9e4977f92ae19fab7f283fc04d7c0071464a8452c528167df52119dcefbf0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Monadic/Variant6ba9e4977f92ae19fab7f283fc04d7c0071464a8452c528167df52119dcefbf0.lean#L243).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8dd6a2a530c29715a86f97c834c86afac87adf6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
