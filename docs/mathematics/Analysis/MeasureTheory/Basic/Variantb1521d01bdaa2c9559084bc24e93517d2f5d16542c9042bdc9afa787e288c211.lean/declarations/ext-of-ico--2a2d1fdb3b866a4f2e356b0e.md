# ext_of_Ico'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2095417a1394f77dd8b7a70a5fdc925d93c9fcd8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 764,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b1/b1521d01bdaa2c9559084bc24e93517d2f5d16542c9042bdc9afa787e288c211.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e84f2763-d3c7-bff8-b95c-854681f87614",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:767a1120-f71d-4a78-c08a-4425accd25e9",
  "kind": "theorem",
  "lexical_name": "ext_of_Ico'",
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
  "slug": "ext-of-ico--2a2d1fdb3b866a4f2e356b0e",
  "source": {
    "blob": "2095417a1394f77dd8b7a70a5fdc925d93c9fcd8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 789,
    "line": 764,
    "path": "GRWTSK/Analysis/MeasureTheory/Basic/Variantb1521d01bdaa2c9559084bc24e93517d2f5d16542c9042bdc9afa787e288c211.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a2d1fdb3b866a4f2e356b0e6d033b4f0519c6c6e006ce409ef317a8f1c2153e",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Basic/Variantb1521d01bdaa2c9559084bc24e93517d2f5d16542c9042bdc9afa787e288c211.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:767a1120-f71d-4a78-c08a-4425accd25e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 764–789.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ext_of_Ico' {α : Type*} [TopologicalSpace α] {m : MeasurableSpace α}
    [SecondCountableTopology α] [LinearOrder α] [OrderTopology α] [BorelSpace α] [NoMaxOrder α]
    (μ ν : Measure α) (hμ : ∀ ⦃a b⦄, a < b → μ (Ico a b) ≠ ∞)
    (h : ∀ ⦃a b⦄, a < b → μ (Ico a b) = ν (Ico a b)) : μ = ν := by
  rcases exists_countable_dense_bot_top α with ⟨s, hsc, hsd, hsb, _⟩
  have : (⋃ (l ∈ s) (u ∈ s) (_ : l < u), {Ico l u} : Set (Set α)).Countable :=
    hsc.biUnion fun l _ => hsc.biUnion fun u _ => countable_iUnion fun _ => countable_singleton _
  simp only [← setOf_eq_eq_singleton, ← setOf_exists] at this
  refine'
    Measure.ext_of_generateFrom_of_cover_subset
      (BorelSpace.measurable_eq.trans (borel_eq_generateFrom_Ico α)) (isPiSystem_Ico id id) _ this
      _ _ _
  · rintro _ ⟨l, -, u, -, h, rfl⟩
    exact ⟨l, u, h, rfl⟩
  · refine' sUnion_eq_univ_iff.2 fun x => _
    rcases hsd.exists_le' hsb x with ⟨l, hls, hlx⟩
    rcases hsd.exists_gt x with ⟨u, hus, hxu⟩
    exact ⟨_, ⟨l, hls, u, hus, hlx.trans_lt hxu, rfl⟩, hlx, hxu⟩
  · rintro _ ⟨l, -, u, -, hlt, rfl⟩
    exact hμ hlt
  · rintro _ ⟨l, u, hlt, rfl⟩
    exact h hlt
#align measure_theory.measure.ext_of_Ico' MeasureTheory.Measure.ext_of_Ico'

/-- Two measures which are finite on closed-open intervals are equal if the agree on all
open-closed intervals. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Basic/Variantb1521d01bdaa2c9559084bc24e93517d2f5d16542c9042bdc9afa787e288c211.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Basic/Variantb1521d01bdaa2c9559084bc24e93517d2f5d16542c9042bdc9afa787e288c211.lean#L764).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2095417a1394f77dd8b7a70a5fdc925d93c9fcd8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
