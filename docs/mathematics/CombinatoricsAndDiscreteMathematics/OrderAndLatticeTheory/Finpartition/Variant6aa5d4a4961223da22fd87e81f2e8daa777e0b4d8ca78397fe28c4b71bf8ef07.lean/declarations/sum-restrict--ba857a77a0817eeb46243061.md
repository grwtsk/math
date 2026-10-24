# sum_restrict

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "88330105806f78712c4ad7f3ce5f1dc80f498599",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 485,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6a/6aa5d4a4961223da22fd87e81f2e8daa777e0b4d8ca78397fe28c4b71bf8ef07.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:64c35768-f1bf-b51a-9052-e088e6a94560",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9fdd7600-cb57-024d-41b1-91ad8493cc23",
  "kind": "lemma",
  "lexical_name": "sum_restrict",
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
  "slug": "sum-restrict--ba857a77a0817eeb46243061",
  "source": {
    "blob": "88330105806f78712c4ad7f3ce5f1dc80f498599",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 504,
    "line": 485,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finpartition/Variant6aa5d4a4961223da22fd87e81f2e8daa777e0b4d8ca78397fe28c4b71bf8ef07.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ba857a77a0817eeb4624306176ca96456a4b8259cc19c39c81025adfd5446b2b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finpartition/Variant6aa5d4a4961223da22fd87e81f2e8daa777e0b4d8ca78397fe28c4b71bf8ef07.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9fdd7600-cb57-024d-41b1-91ad8493cc23`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 485–504.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sum_restrict (P : Finpartition a) (hb : b ≤ a) {M : Type*} [AddCommMonoid M]
    (f : α → M) (hf : f ⊥ = 0) :
    ∑ p ∈ (P.restrict hb).parts, f p = ∑ q ∈ P.parts, f (q ⊓ b) := by
  have hinj : ∀ x ∈ P.parts.filter (· ⊓ b ≠ ⊥), ∀ y ∈ P.parts.filter (· ⊓ b ≠ ⊥),
      x ⊓ b = y ⊓ b → x = y := fun x hx y hy hxy => by
    by_contra hne
    simp only [Finset.mem_filter] at hx hy
    have : Disjoint (x ⊓ b) (y ⊓ b) := (P.disjoint hx.1 hy.1 hne).mono inf_le_left inf_le_left
    grind
  have heq : (P.parts.image (· ⊓ b)).erase ⊥ = (P.parts.filter (· ⊓ b ≠ ⊥)).image (· ⊓ b) := by
    grind
  have hz : ∑ x ∈ P.parts.filter (¬ · ⊓ b ≠ ⊥), f (x ⊓ b) = 0 := Finset.sum_eq_zero fun x hx => by
    simp only [ne_eq, Decidable.not_not, Finset.mem_filter] at hx
    rw [hx.2, hf]
  simp only [parts_restrict, heq, ← Finset.sum_filter_add_sum_filter_not P.parts (· ⊓ b ≠ ⊥), hz,
    Finset.sum_image hinj, add_zero]

/-- A `Finpartition` constructor of `parts.sup id` from a finset `parts` of pairwise disjoint
elements. Any `⊥` elements in `parts` are erased. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finpartition/Variant6aa5d4a4961223da22fd87e81f2e8daa777e0b4d8ca78397fe28c4b71bf8ef07.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Finpartition/Variant6aa5d4a4961223da22fd87e81f2e8daa777e0b4d8ca78397fe28c4b71bf8ef07.lean#L485).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88330105806f78712c4ad7f3ce5f1dc80f498599` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
