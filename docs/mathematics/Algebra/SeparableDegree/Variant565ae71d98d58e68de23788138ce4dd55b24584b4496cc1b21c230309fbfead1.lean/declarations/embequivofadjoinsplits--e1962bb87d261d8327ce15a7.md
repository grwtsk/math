# embEquivOfAdjoinSplits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1f3bcbc02b2016a14e2428a1c49175fbd52785340abbfb6c445c82bf3a5dc91e",
  "kind": "def",
  "lexical_name": "embEquivOfAdjoinSplits",
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
  "slug": "embequivofadjoinsplits--e1962bb87d261d8327ce15a7",
  "source": {
    "blob": "a7daa8503eeedcf4200b20ca5388abfd77f3d18c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 218,
    "path": "GRWTSK/Algebra/SeparableDegree/Variant565ae71d98d58e68de23788138ce4dd55b24584b4496cc1b21c230309fbfead1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e1962bb87d261d8327ce15a7851d7a79ddecb76b5e6883ef110ba4eeaa4c954a",
  "verification": {
    "reference": "docs/verification/Algebra/SeparableDegree/Variant565ae71d98d58e68de23788138ce4dd55b24584b4496cc1b21c230309fbfead1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1f3bcbc02b2016a14e2428a1c49175fbd52785340abbfb6c445c82bf3a5dc91e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def embEquivOfAdjoinSplits {S : Set E} (hS : adjoin F S = ⊤)
    (hK : ∀ s ∈ S, IsIntegral F s ∧ Splits ((minpoly F s).map (algebraMap F K))) :
    Emb F E ≃ (E →ₐ[F] K) :=
  have : Algebra.IsAlgebraic F (⊤ : IntermediateField F E) :=
    (hS ▸ isAlgebraic_adjoin (S := S) fun x hx ↦ (hK x hx).1)
  have halg := (topEquiv (F := F) (E := E)).isAlgebraic
  Classical.choice <| Function.Embedding.antisymm
    (halg.algHomEmbeddingOfSplits (fun _ ↦ splits_of_mem_adjoin F E (S := S) hK (hS ▸ mem_top)) _)
    (halg.algHomEmbeddingOfSplits (fun _ ↦ IsAlgClosed.splits _) _)

/-- The `Field.finSepDegree F E` is equal to the cardinality of `E →ₐ[F] K`
if `E = F(S)` such that every element
`s` of `S` is integral (= algebraic) over `F` and whose minimal polynomial splits in `K`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/SeparableDegree/Variant565ae71d98d58e68de23788138ce4dd55b24584b4496cc1b21c230309fbfead1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/SeparableDegree/Variant565ae71d98d58e68de23788138ce4dd55b24584b4496cc1b21c230309fbfead1.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7daa8503eeedcf4200b20ca5388abfd77f3d18c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
