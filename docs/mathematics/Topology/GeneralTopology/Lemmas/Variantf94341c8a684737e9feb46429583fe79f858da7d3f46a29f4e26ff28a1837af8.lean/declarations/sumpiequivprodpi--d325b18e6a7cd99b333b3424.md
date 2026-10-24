# sumPiEquivProdPi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a829ac65fa9cd4eae75a708d9d6d153586eb769d5b2dba0ff93fc920a003568c",
  "kind": "def",
  "lexical_name": "sumPiEquivProdPi",
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
  "slug": "sumpiequivprodpi--d325b18e6a7cd99b333b3424",
  "source": {
    "blob": "8312e3a7de75ec11437146ca69bfed92b08cafe0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 206,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variantf94341c8a684737e9feb46429583fe79f858da7d3f46a29f4e26ff28a1837af8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d325b18e6a7cd99b333b3424447f10fbe1ed088e9fce3e2b50ee8f1c45a90513",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variantf94341c8a684737e9feb46429583fe79f858da7d3f46a29f4e26ff28a1837af8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a829ac65fa9cd4eae75a708d9d6d153586eb769d5b2dba0ff93fc920a003568c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sumPiEquivProdPi (S T : Type*) (A : S ⊕ T → Type*)
    [∀ st, TopologicalSpace (A st)] :
    (Π (st : S ⊕ T), A st) ≃ₜ (Π (s : S), A (.inl s)) × (Π (t : T), A (.inr t)) where
  __ := Equiv.sumPiEquivProdPi _
  continuous_toFun := .prodMk (by fun_prop) (by fun_prop)
  continuous_invFun := continuous_pi <| by rintro (s | t) <;> simp <;> fun_prop

/-- The product `Π t : α, f t` of a family of topological spaces is homeomorphic to the
space `f ⬝` when `α` only contains `⬝`.

This is `Equiv.piUnique` as a `Homeomorph`.
-/
@[simps! -fullyApplied]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variantf94341c8a684737e9feb46429583fe79f858da7d3f46a29f4e26ff28a1837af8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variantf94341c8a684737e9feb46429583fe79f858da7d3f46a29f4e26ff28a1837af8.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8312e3a7de75ec11437146ca69bfed92b08cafe0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
