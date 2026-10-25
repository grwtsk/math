# _root_.GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.Definable.Varianta2c9bf89e8e0586b85850f7d402c3e7a076393739a966d18c55e207cfb186c44.Set.Definable.preimage_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:92381ba7-07f0-4d76-dc83-8cca9ba9d365",
  "kind": "lemma",
  "lexical_name": "_root_.GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.Definable.Varianta2c9bf89e8e0586b85850f7d402c3e7a076393739a966d18c55e207cfb186c44.Set.Definable.preimage_map",
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
  "slug": "root-grwtsk-foundationslogicandtypetheory-modeltheory-definable-varianta--95e97ba8b73a34ef42a964cb",
  "source": {
    "blob": "30016eee0bedf2e57a9f3adc5c64a5573e684243",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 538,
    "line": 523,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant3c805b9f6875a721f4ee4db5747d232531b41ef3bc8d2f3a71c2110d1872ec99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:95e97ba8b73a34ef42a964cb0eae992ec94a8966c108215e86a229e88fe931d1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant3c805b9f6875a721f4ee4db5747d232531b41ef3bc8d2f3a71c2110d1872ec99.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:92381ba7-07f0-4d76-dc83-8cca9ba9d365`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 523–538.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma _root_.GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.Definable.Varianta2c9bf89e8e0586b85850f7d402c3e7a076393739a966d18c55e207cfb186c44.Set.Definable.preimage_map
    {α β : Type*} [Finite β] {F : (α → M) → (β → M)} (hF : A.DefinableMap L F)
    {S : Set (β → M)} (hS : A.Definable L S) :
    A.Definable L (F ⁻¹' S) := by
  have h_graph : A.Definable L { w : α ⊕ β → M | ∀ i, F (w ∘ Sum.inl) i = w (Sum.inr i) } := by
    rw [ofPred_forall]
    refine definable_iInter_of_finite fun i => ?_
    simpa [tupleGraph] using!
      (hF i).preimage_comp (fun | none => Sum.inr i | some j => Sum.inl j)
  have h_cyl : A.Definable L { w : α ⊕ β → M | w ∘ Sum.inr ∈ S } :=
    hS.preimage_comp Sum.inr
  convert! Definable.exists_of_finite (Definable.inter h_graph h_cyl) using 1
  ext v
  simp [← funext_iff]

@[fun_prop]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant3c805b9f6875a721f4ee4db5747d232531b41ef3bc8d2f3a71c2110d1872ec99.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant3c805b9f6875a721f4ee4db5747d232531b41ef3bc8d2f3a71c2110d1872ec99.lean#L523).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30016eee0bedf2e57a9f3adc5c64a5573e684243` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
