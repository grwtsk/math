# twoCochainOfBilinear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0e91cb08d0970aaa03e3780286647de698cfef01ceea7cada9da4539b30c8b93",
  "kind": "def",
  "lexical_name": "twoCochainOfBilinear",
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
  "slug": "twocochainofbilinear--bb287ba4ea7f85821496288e",
  "source": {
    "blob": "61609a9a4cfc301e38ad21bf4c1fe84d250019ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 161,
    "path": "GRWTSK/Algebra/LinearAlgebra/Loop/Variant1f4aa755bc5aac3c35c7be4bd985df8e8b1a0409a6e88cf29b68c51717308390.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bb287ba4ea7f85821496288e6eb7cbb11881c116f8bcd68961aef51b43dcd280",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Loop/Variant1f4aa755bc5aac3c35c7be4bd985df8e8b1a0409a6e88cf29b68c51717308390.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0e91cb08d0970aaa03e3780286647de698cfef01ceea7cada9da4539b30c8b93`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def twoCochainOfBilinear [CommRing A] [IsAddTorsionFree R] [Algebra A R]
    (Φ : LinearMap.BilinForm R L) (hΦ : Φ.IsSymm) :
    Cohomology.twoCochain R (loopAlgebra R A L) (TrivialLieModule R (loopAlgebra R A L) R) where
  val := (residuePairing R A L Φ).compr₂ (TrivialLieModule.equiv R (loopAlgebra R A L) R).symm
  property := by
    refine Cohomology.mem_twoCochain_iff.mpr fun f ↦ ?_
    let F := toFinsupp R A L
    suffices ((F f).sum fun a v ↦ a • Φ (F f (-a)) v) = 0 by simpa
    classical
    set s := (F f).support ∪ (F f).support.image (Equiv.neg A) with hs
    have hs' : (F f).support ⊆ s := Finset.subset_union_left
    rw [Finsupp.sum_of_support_subset _ hs' _ (by simp)]
    refine Function.Odd.finsetSum_eq_zero (fun n ↦ by simp [hΦ.eq]) (Finset.map_eq_of_subset ?_)
    intro x hx
    rw [Finset.mem_union]
    replace hx : -x ∈ (F f).support ∨ -x ∈ (F f).support.image Neg.neg := by simpa [hs] using hx
    obtain (h | h) := hx
    · exact Or.inr <| Finset.mem_image.mpr ⟨-x, by simp [h]⟩
    · exact Or.inl <| by simpa using h

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Loop/Variant1f4aa755bc5aac3c35c7be4bd985df8e8b1a0409a6e88cf29b68c51717308390.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Loop/Variant1f4aa755bc5aac3c35c7be4bd985df8e8b1a0409a6e88cf29b68c51717308390.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `61609a9a4cfc301e38ad21bf4c1fe84d250019ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
