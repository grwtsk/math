# corec_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "27573d8f6c6e48b6d13044f63fa3a7c09934ba50",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 211,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f2/f2997fcf0b88767d4dee12a557a4752608c22e4c3206319892848e82ff5ed36e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bb4e61e5-7d1c-aa0d-ffa4-877e6c29f1b5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5f067db4-2f8a-3857-1442-8631857a1e19",
  "kind": "theorem",
  "lexical_name": "corec_eq",
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
  "slug": "corec-eq--fc3e02c56ea2ddb742f7807e",
  "source": {
    "blob": "27573d8f6c6e48b6d13044f63fa3a7c09934ba50",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 211,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Computation/Variantf2997fcf0b88767d4dee12a557a4752608c22e4c3206319892848e82ff5ed36e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fc3e02c56ea2ddb742f7807e0573ae2b59be4b96dfa3f0ef92cb99cf66943f0d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Computation/Variantf2997fcf0b88767d4dee12a557a4752608c22e4c3206319892848e82ff5ed36e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f067db4-2f8a-3857-1442-8631857a1e19`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem corec_eq (f : β → α ⊕ β) (b : β) : destruct (corec f b) = rmap (corec f) (f b) := by
  dsimp [corec, destruct]
  rw [show Stream'.corec' (Corec.f f) (Sum.inr b) 0 =
    Sum.rec Option.some (fun _ ↦ none) (f b) by
    dsimp [Corec.f, Stream'.corec', Stream'.corec, Stream'.map, Stream'.get, Stream'.iterate]
    match (f b) with
    | Sum.inl x => rfl
    | Sum.inr x => rfl
    ]
  induction' h : f b with a b'; · rfl
  dsimp [Corec.f, destruct]
  apply congr_arg; apply Subtype.eq
  dsimp [corec, tail]
  rw [Stream'.corec'_eq, Stream'.tail_cons]
  dsimp [Corec.f]; rw [h]

section Bisim

variable (R : Computation α → Computation α → Prop)

/-- bisimilarity relation -/
local infixl:50 " ~ " => R

/-- Bisimilarity over a sum of `Computation`s -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Computation/Variantf2997fcf0b88767d4dee12a557a4752608c22e4c3206319892848e82ff5ed36e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Computation/Variantf2997fcf0b88767d4dee12a557a4752608c22e4c3206319892848e82ff5ed36e.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27573d8f6c6e48b6d13044f63fa3a7c09934ba50` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
