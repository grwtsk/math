# foldlM_subtype

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c4be3835-0102-0e1c-093c-25c5f2704c39",
  "kind": "theorem",
  "lexical_name": "foldlM_subtype",
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
  "slug": "foldlm-subtype--a227d04ff0c380634f21afba",
  "source": {
    "blob": "8dd6a2a530c29715a86f97c834c86afac87adf6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 509,
    "line": 502,
    "path": "GRWTSK/Topology/GeneralTopology/Monadic/Variant6ba9e4977f92ae19fab7f283fc04d7c0071464a8452c528167df52119dcefbf0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a227d04ff0c380634f21afba237fa747d487357ac55cb8b64cb0d6c58d248779",
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

Occurrence: `result:c4be3835-0102-0e1c-093c-25c5f2704c39`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 502–509.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem foldlM_subtype [Monad m] {p : α → Prop} {l : List { x // p x }}
    {f : β → { x // p x } → m β} {g : β → α → m β} {x : β}
    (hf : ∀ b x h, f b ⟨x, h⟩ = g b x) :
    l.foldlM f x = l.unattach.foldlM g x := by
  induction l generalizing x with
  | nil => simp
  | cons a l ih => simp [ih, hf]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Monadic/Variant6ba9e4977f92ae19fab7f283fc04d7c0071464a8452c528167df52119dcefbf0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Monadic/Variant6ba9e4977f92ae19fab7f283fc04d7c0071464a8452c528167df52119dcefbf0.lean#L502).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8dd6a2a530c29715a86f97c834c86afac87adf6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
