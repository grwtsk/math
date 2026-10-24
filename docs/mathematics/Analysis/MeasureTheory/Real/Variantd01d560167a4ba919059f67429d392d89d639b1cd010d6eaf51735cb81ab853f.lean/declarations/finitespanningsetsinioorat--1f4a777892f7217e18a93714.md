# finiteSpanningSetsInIooRat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f8a2da86aa5725d3c23ba982fed0cd86e93da8655dc3b59f24721c4b114f30b3",
  "kind": "def",
  "lexical_name": "finiteSpanningSetsInIooRat",
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
  "slug": "finitespanningsetsinioorat--1f4a777892f7217e18a93714",
  "source": {
    "blob": "f9778de84c492ca621edb01b9bfc4013d5c92cc9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 124,
    "path": "GRWTSK/Analysis/MeasureTheory/Real/Variantd01d560167a4ba919059f67429d392d89d639b1cd010d6eaf51735cb81ab853f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1f4a777892f7217e18a93714b2652e61c05f2c547d93439024752c93a2afd763",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Real/Variantd01d560167a4ba919059f67429d392d89d639b1cd010d6eaf51735cb81ab853f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f8a2da86aa5725d3c23ba982fed0cd86e93da8655dc3b59f24721c4b114f30b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–138.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def finiteSpanningSetsInIooRat (μ : Measure ℝ) [IsLocallyFiniteMeasure μ] :
    μ.FiniteSpanningSetsIn (⋃ (a : ℚ) (b : ℚ) (_ : a < b), {Ioo (a : ℝ) (b : ℝ)}) where
  set n := Ioo (-(n + 1)) (n + 1)
  set_mem n := by
    simp only [mem_iUnion, mem_singleton_iff]
    refine ⟨-(n + 1 : ℕ), n + 1, ?_, by simp⟩
    -- TODO: norm_cast fails here?
    push_cast
    exact neg_lt_self n.cast_add_one_pos
  finite _ := measure_Ioo_lt_top
  spanning :=
    iUnion_eq_univ_iff.2 fun x =>
      ⟨⌊|x|⌋₊, neg_lt.1 ((neg_le_abs x).trans_lt (Nat.lt_floor_add_one _)),
        (le_abs_self x).trans_lt (Nat.lt_floor_add_one _)⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Real/Variantd01d560167a4ba919059f67429d392d89d639b1cd010d6eaf51735cb81ab853f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Real/Variantd01d560167a4ba919059f67429d392d89d639b1cd010d6eaf51735cb81ab853f.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f9778de84c492ca621edb01b9bfc4013d5c92cc9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
