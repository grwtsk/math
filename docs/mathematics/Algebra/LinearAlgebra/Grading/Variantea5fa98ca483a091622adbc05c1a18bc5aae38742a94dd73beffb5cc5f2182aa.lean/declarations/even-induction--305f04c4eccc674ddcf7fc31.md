# even_induction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4f34d6b8-0be1-3477-0e79-bbd1e122505d",
  "kind": "theorem",
  "lexical_name": "even_induction",
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
  "slug": "even-induction--305f04c4eccc674ddcf7fc31",
  "source": {
    "blob": "aa9dfb4dc719918975f2dd63419156e81e12135c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 192,
    "path": "GRWTSK/Algebra/LinearAlgebra/Grading/Variantea5fa98ca483a091622adbc05c1a18bc5aae38742a94dd73beffb5cc5f2182aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:305f04c4eccc674ddcf7fc31dc445ccba3ba2988005802bd5d258c325b50a556",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Grading/Variantea5fa98ca483a091622adbc05c1a18bc5aae38742a94dd73beffb5cc5f2182aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f34d6b8-0be1-3477-0e79-bbd1e122505d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 192–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem even_induction {motive : ∀ x, x ∈ evenOdd Q 0 → Prop}
    (algebraMap : ∀ r : R, motive (algebraMap _ _ r) (SetLike.algebraMap_mem_graded _ _))
    (add : ∀ x y hx hy, motive x hx → motive y hy → motive (x + y) (Submodule.add_mem _ hx hy))
    (ι_mul_ι_mul :
      ∀ m₁ m₂ x hx,
        motive x hx →
          motive (ι Q m₁ * ι Q m₂ * x)
            (zero_add (0 : ZMod 2) ▸ SetLike.mul_mem_graded (ι_mul_ι_mem_evenOdd_zero Q m₁ m₂) hx))
    (x : CliffordAlgebra Q) (hx : x ∈ evenOdd Q 0) : motive x hx := by
  refine evenOdd_induction _ _ (motive := motive) (fun rx h => ?_) add ι_mul_ι_mul x hx
  obtain ⟨r, rfl⟩ := Submodule.mem_one.mp h
  exact algebraMap r

/-- To show a property is true on the odd parts, it suffices to show it is true on the
vectors, closed under addition, and under left-multiplication by a pair of vectors. -/
@[elab_as_elim]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Grading/Variantea5fa98ca483a091622adbc05c1a18bc5aae38742a94dd73beffb5cc5f2182aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Grading/Variantea5fa98ca483a091622adbc05c1a18bc5aae38742a94dd73beffb5cc5f2182aa.lean#L192).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa9dfb4dc719918975f2dd63419156e81e12135c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
