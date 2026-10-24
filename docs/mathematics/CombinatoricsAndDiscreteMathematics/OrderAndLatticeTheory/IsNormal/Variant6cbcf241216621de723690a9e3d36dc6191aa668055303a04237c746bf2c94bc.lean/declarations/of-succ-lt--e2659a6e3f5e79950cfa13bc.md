# of_succ_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d3a705af-9cd8-486c-f5bd-d07d8e03e3c3",
  "kind": "theorem",
  "lexical_name": "of_succ_lt",
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
  "slug": "of-succ-lt--e2659a6e3f5e79950cfa13bc",
  "source": {
    "blob": "dd4f98ba621877b50d94e57076e148815c4ab131",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 71,
    "line": 55,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IsNormal/Variant6cbcf241216621de723690a9e3d36dc6191aa668055303a04237c746bf2c94bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2659a6e3f5e79950cfa13bcb6639f325653960e2e3f374baabf35e2bf0198c4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IsNormal/Variant6cbcf241216621de723690a9e3d36dc6191aa668055303a04237c746bf2c94bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d3a705af-9cd8-486c-f5bd-d07d8e03e3c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–71.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem of_succ_lt [SuccOrder α] [WellFoundedLT α]
    (hs : ∀ a, f a < f (succ a)) (hl : ∀ {a}, IsSuccLimit a → IsLUB (f '' Iio a) (f a)) :
    IsNormal f := by
  refine ⟨fun a b ↦ ?_, hl⟩
  induction b using SuccOrder.limitRecOn with
  | isMin b hb => exact hb.not_lt.elim
  | succ b hb IH =>
    intro hab
    obtain rfl | h := (lt_succ_iff_eq_or_lt_of_not_isMax hb).1 hab
    · exact hs a
    · exact (IH h).trans (hs b)
  | isSuccLimit b hb IH =>
    intro hab
    have hab' := hb.succ_lt hab
    exact (IH _ hab' (lt_succ_of_not_isMax hab.not_isMax)).trans_le
      ((hl hb).1 (mem_image_of_mem _ hab'))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IsNormal/Variant6cbcf241216621de723690a9e3d36dc6191aa668055303a04237c746bf2c94bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/IsNormal/Variant6cbcf241216621de723690a9e3d36dc6191aa668055303a04237c746bf2c94bc.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd4f98ba621877b50d94e57076e148815c4ab131` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
