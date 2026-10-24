# linearIndependent_single_of_ne_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d9a4c320c4b1ed34111084a7ddc0ca0632961766",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 58,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/19/19e1b24253a473ea329f136c127a468b09880049a008bfad010e2fcb191772ac.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3e4aaeb5-8334-c0f1-ef4c-faaed188e280",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:db67b4d0-b1bb-0d43-7b43-32d378df696f",
  "kind": "lemma",
  "lexical_name": "linearIndependent_single_of_ne_zero",
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
  "slug": "linearindependent-single-of-ne-zero--c123617d22c629c1081b464e",
  "source": {
    "blob": "d9a4c320c4b1ed34111084a7ddc0ca0632961766",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 58,
    "path": "GRWTSK/Algebra/LinearAlgebra/StdBasis/Variant19e1b24253a473ea329f136c127a468b09880049a008bfad010e2fcb191772ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c123617d22c629c1081b464ef8bd77e431b46b478c26f3c37b7ac76670d1a8f7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/StdBasis/Variant19e1b24253a473ea329f136c127a468b09880049a008bfad010e2fcb191772ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db67b4d0-b1bb-0d43-7b43-32d378df696f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma linearIndependent_single_of_ne_zero [Ring R] [IsDomain R] [AddCommGroup M] [Module R M]
    [IsTorsionFree R M] [DecidableEq ι] {v : ι → M} (hv : ∀ i, v i ≠ 0) :
    LinearIndependent R fun i : ι ↦ Pi.single i (v i) := by
  rw [← linearIndependent_equiv (Equiv.sigmaPUnit ι)]
  exact linearIndependent_single (fun i (_ : Unit) ↦ v i) <| by simp +contextual [hv]

variable [Semiring R] [∀ i, AddCommMonoid (Ms i)] [∀ i, Module R (Ms i)]

section Fintype

variable [Fintype η]

open LinearEquiv

/-- `Pi.basis (s : ∀ j, Basis (ιs j) R (Ms j))` is the `Σ j, ιs j`-indexed basis on `Π j, Ms j`
given by `s j` on each component.

For the standard basis over `R` on the finite-dimensional space `η → R` see `Pi.basisFun`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/StdBasis/Variant19e1b24253a473ea329f136c127a468b09880049a008bfad010e2fcb191772ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/StdBasis/Variant19e1b24253a473ea329f136c127a468b09880049a008bfad010e2fcb191772ac.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9a4c320c4b1ed34111084a7ddc0ca0632961766` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
