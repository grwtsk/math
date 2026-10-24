# map_atTop_eq_of_gc_preorder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "73cfaa73e701cda04d853936b34747ea3786f8b6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 220,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/63/6320c2e81caeea51c7a80593bea9723294e20acf2355d9a747685de6ba637b96.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a4f792e6-9977-1c7f-9659-ff8fdcf1c27b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:084e047c-620f-de22-5a56-efa0f0ffe7a4",
  "kind": "theorem",
  "lexical_name": "map_atTop_eq_of_gc_preorder",
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
  "slug": "map-attop-eq-of-gc-preorder--b0fc11fffa5b158feea54360",
  "source": {
    "blob": "73cfaa73e701cda04d853936b34747ea3786f8b6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 241,
    "line": 220,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant6320c2e81caeea51c7a80593bea9723294e20acf2355d9a747685de6ba637b96.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b0fc11fffa5b158feea543604c1fc3a64825ca8b1b8e77ebc5d7aa3416ad64bc",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant6320c2e81caeea51c7a80593bea9723294e20acf2355d9a747685de6ba637b96.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:084e047c-620f-de22-5a56-efa0f0ffe7a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 220–241.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_atTop_eq_of_gc_preorder
    [Preorder α] [IsDirectedOrder α] [Preorder β] [IsDirectedOrder β] {f : α → β}
    (hf : Monotone f) (b : β)
    (hgi : ∀ c, b ≤ c → ∃ x, f x = c ∧ ∀ a, f a ≤ c ↔ a ≤ x) : map f atTop = atTop := by
  have : Nonempty α := (hgi b le_rfl).nonempty
  choose! g hfg hgle using hgi
  refine le_antisymm (hf.tendsto_atTop_atTop fun c ↦ ?_) ?_
  · rcases exists_ge_ge c b with ⟨d, hcd, hbd⟩
    exact ⟨g d, hcd.trans (hfg d hbd).ge⟩
  · have : Nonempty α := ⟨g b⟩
    rw [(atTop_basis.map f).ge_iff]
    intro a _
    filter_upwards [eventually_ge_atTop (f a), eventually_ge_atTop b] with c hac hbc
    exact ⟨g c, (hgle _ hbc _).1 hac, hfg _ hbc⟩

/-- A function `f` maps upwards closed sets (atTop sets) to upwards closed sets when it is a
Galois insertion. The Galois "insertion" and "connection" is weakened to only require it to be an
insertion and a connection above `b`. -/
@[to_dual
/-- A function `f` maps downwards closed sets (atBot sets) to downwards closed sets when it is a
Galois coinsertion. The Galois "coinsertion" and "connection" is weakened to only require it to be
an insertion and a connection below `b`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant6320c2e81caeea51c7a80593bea9723294e20acf2355d9a747685de6ba637b96.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant6320c2e81caeea51c7a80593bea9723294e20acf2355d9a747685de6ba637b96.lean#L220).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73cfaa73e701cda04d853936b34747ea3786f8b6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
