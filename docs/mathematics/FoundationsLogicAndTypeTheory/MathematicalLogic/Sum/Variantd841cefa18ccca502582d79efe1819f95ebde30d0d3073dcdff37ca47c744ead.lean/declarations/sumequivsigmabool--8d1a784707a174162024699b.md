# sumEquivSigmaBool

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1652597822a9722844f26114c43cd67b5bb45a82a6b083a4644f43efe46ca9e6",
  "kind": "def",
  "lexical_name": "sumEquivSigmaBool",
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
  "slug": "sumequivsigmabool--8d1a784707a174162024699b",
  "source": {
    "blob": "166eea48011c9b9a00a8379d21c9a4e98d467518",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 222,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variantd841cefa18ccca502582d79efe1819f95ebde30d0d3073dcdff37ca47c744ead.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8d1a784707a174162024699bd67a3dc08096929cdeed497d5258b41293a83a04",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variantd841cefa18ccca502582d79efe1819f95ebde30d0d3073dcdff37ca47c744ead.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1652597822a9722844f26114c43cd67b5bb45a82a6b083a4644f43efe46ca9e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 222–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sumEquivSigmaBool (α β) : α ⊕ β ≃ Σ b, bif b then β else α :=
  ⟨fun s => s.elim (fun x => ⟨false, x⟩) fun x => ⟨true, x⟩, fun s =>
    match s with
    | ⟨false, a⟩ => inl a
    | ⟨true, b⟩ => inr b,
    fun s => by cases s <;> rfl, fun s => by rcases s with ⟨_ | _, _⟩ <;> rfl⟩

-- See also `Equiv.sigmaPreimageEquiv`.
/-- `sigmaFiberEquiv f` for `f : α → β` is the natural equivalence between
the type of all fibres of `f` and the total space `α`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variantd841cefa18ccca502582d79efe1819f95ebde30d0d3073dcdff37ca47c744ead.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Sum/Variantd841cefa18ccca502582d79efe1819f95ebde30d0d3073dcdff37ca47c744ead.lean#L222).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `166eea48011c9b9a00a8379d21c9a4e98d467518` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
