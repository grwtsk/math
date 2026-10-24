# countP_pmap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0e3ee43c-c449-868e-cf19-22b6518c9816",
  "kind": "theorem",
  "lexical_name": "countP_pmap",
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
  "slug": "countp-pmap--e8ce3b9a4a4274b1b9ac90c5",
  "source": {
    "blob": "476cbde4449e31979885f46854ba887cc560f694",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 583,
    "line": 553,
    "path": "GRWTSK/Topology/GeneralTopology/Attach/Variant8afed422e33f67c6281c84f15b52d0b550c3dbdf652baffe7e0877252cb8b646.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e8ce3b9a4a4274b1b9ac90c5ea2911868614f2ff2f87428e2cf6c06e59fc496f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attach/Variant8afed422e33f67c6281c84f15b52d0b550c3dbdf652baffe7e0877252cb8b646.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e3ee43c-c449-868e-cf19-22b6518c9816`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 553–583.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp, grind =] theorem countP_pmap {p : α → Prop} {g : ∀ a, p a → β} {f : β → Bool} {xs : Array α} (H₁) :
    (xs.pmap g H₁).countP f =
      xs.attach.countP (fun ⟨a, m⟩ => f (g a (H₁ a m))) := by
  simp [pmap_eq_map_attach, countP_map, Function.comp_def]

/-! ## unattach

`Array.unattach` is the (one-sided) inverse of `Array.attach`. It is a synonym for `Array.map Subtype.val`.

We use it by providing a simp lemma `l.attach.unattach = l`, and simp lemmas which recognize higher order
functions applied to `l : Array { x // p x }` which only depend on the value, not the predicate, and rewrite these
in terms of a simpler function applied to `l.unattach`.

Further, we provide simp lemmas that push `unattach` inwards.
-/

/--
Maps an array of terms in a subtype to the corresponding terms in the type by forgetting that they
satisfy the predicate.

This is the inverse of `Array.attachWith` and a synonym for `xs.map (·.val)`.

Mostly this should not be needed by users. It is introduced as an intermediate step by lemmas such
as `map_subtype`, and is ideally subsequently simplified away by `unattach_attach`.

This function is usually inserted automatically by Lean as an intermediate step while proving
termination. It is rarely used explicitly in code. It is introduced as an intermediate step during
the elaboration of definitions by [well-founded
recursion](lean-manual://section/well-founded-recursion). If this function is encountered in a proof
state, the right approach is usually the tactic `simp [Array.unattach, -Array.map_subtype]`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attach/Variant8afed422e33f67c6281c84f15b52d0b550c3dbdf652baffe7e0877252cb8b646.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attach/Variant8afed422e33f67c6281c84f15b52d0b550c3dbdf652baffe7e0877252cb8b646.lean#L553).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `476cbde4449e31979885f46854ba887cc560f694` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
