# partialInv_of_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b6148e42-dbc9-63f3-6beb-0f81ca6135c4",
  "kind": "theorem",
  "lexical_name": "partialInv_of_injective",
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
  "slug": "partialinv-of-injective--c4dfa03e6fb1c4f92072dcb9",
  "source": {
    "blob": "44f0254e4f6168a3f0d925f21a60deffae78408f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 427,
    "line": 413,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta895cae223a5014997b2955aaa167d969af1ea51feed3a0221a8ee4f3bebe1b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c4dfa03e6fb1c4f92072dcb9ec089d8ec33a4a556a2698a3a037b29449086406",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta895cae223a5014997b2955aaa167d969af1ea51feed3a0221a8ee4f3bebe1b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b6148e42-dbc9-63f3-6beb-0f81ca6135c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 413–427.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem partialInv_of_injective {α β} {f : α → β} (I : Injective f) : IsPartialInv f (partialInv f)
  | a, b =>
  ⟨fun h =>
    have hpi : partialInv f b = if h : ∃ a, f a = b then some (Classical.choose h) else none :=
      rfl
    if h' : ∃ a, f a = b
    then by rw [hpi, dif_pos h'] at h
            injection h with h
            subst h
            apply Classical.choose_spec h'
    else by rw [hpi, dif_neg h'] at h; contradiction,
  fun e => e ▸ have h : ∃ a', f a' = f a := ⟨_, rfl⟩
              (dif_pos h).trans (congr_arg _ (I <| Classical.choose_spec h))⟩
#align function.partial_inv_of_injective Function.partialInv_of_injective

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta895cae223a5014997b2955aaa167d969af1ea51feed3a0221a8ee4f3bebe1b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta895cae223a5014997b2955aaa167d969af1ea51feed3a0221a8ee4f3bebe1b8.lean#L413).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44f0254e4f6168a3f0d925f21a60deffae78408f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
