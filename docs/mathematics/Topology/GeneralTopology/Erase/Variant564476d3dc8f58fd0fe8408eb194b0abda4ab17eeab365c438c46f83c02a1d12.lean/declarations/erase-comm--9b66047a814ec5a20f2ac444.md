# erase_comm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:58a3a2e9-39f8-9623-7266-ed0d5d9631b2",
  "kind": "theorem",
  "lexical_name": "erase_comm",
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
  "slug": "erase-comm--9b66047a814ec5a20f2ac444",
  "source": {
    "blob": "58091872e798159d837f63e09d08455b2f3348c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 485,
    "line": 470,
    "path": "GRWTSK/Topology/GeneralTopology/Erase/Variant564476d3dc8f58fd0fe8408eb194b0abda4ab17eeab365c438c46f83c02a1d12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b66047a814ec5a20f2ac444103a7a9f0783d660d60964f9feadcf89f7078508",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Erase/Variant564476d3dc8f58fd0fe8408eb194b0abda4ab17eeab365c438c46f83c02a1d12.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:58a3a2e9-39f8-9623-7266-ed0d5d9631b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 470–485.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem erase_comm [LawfulBEq α] (a b : α) {l : List α} :
    (l.erase a).erase b = (l.erase b).erase a := by
  if ab : a == b then rw [eq_of_beq ab] else ?_
  if ha : a ∈ l then ?_ else
    simp only [erase_of_not_mem ha, erase_of_not_mem (mt mem_of_mem_erase ha)]
  if hb : b ∈ l then ?_ else
    simp only [erase_of_not_mem hb, erase_of_not_mem (mt mem_of_mem_erase hb)]
  match l, l.erase a, exists_erase_eq ha with
  | _, _, ⟨l₁, l₂, ha', rfl, rfl⟩ =>
    if h₁ : b ∈ l₁ then
      rw [erase_append_left _ h₁, erase_append_left _ h₁,
          erase_append_right _ (mt mem_of_mem_erase ha'), erase_cons_head]
    else
      rw [erase_append_right _ h₁, erase_append_right _ h₁, erase_append_right _ ha',
          erase_cons_tail ab, erase_cons_head]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Erase/Variant564476d3dc8f58fd0fe8408eb194b0abda4ab17eeab365c438c46f83c02a1d12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Erase/Variant564476d3dc8f58fd0fe8408eb194b0abda4ab17eeab365c438c46f83c02a1d12.lean#L470).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58091872e798159d837f63e09d08455b2f3348c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
