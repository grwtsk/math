# preRhetoricalPreCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cafc3c05496bff1aa0918eba9b689ba125a9aba66a9a288a54bba27d81ca2693",
  "kind": "def",
  "lexical_name": "preRhetoricalPreCore",
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
  "slug": "prerhetoricalprecore--dccacf2f09e3995b9973510f",
  "source": {
    "blob": "061e6117570d6d49e64717a4ca31b2b960e7facc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 66,
    "path": "GRWTSK/Algebra/LinearAlgebra/Quotient/Variant7719670e693daf594b061ae304b67e59a88702a92e58afc7a6eedaeb8cd2b2bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dccacf2f09e3995b9973510f165a27c78a2990be330ff655cab78585e4366122",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Quotient/Variant7719670e693daf594b061ae304b67e59a88702a92e58afc7a6eedaeb8cd2b2bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cafc3c05496bff1aa0918eba9b689ba125a9aba66a9a288a54bba27d81ca2693`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def preRhetoricalPreCore :
    PreInnerProductSpace.Core ℂ (PreRhetoricalSpace kernel) where
  inner := preRhetoricalInner kernel
  conj_inner_symm := by
    intro left right
    refine Submodule.Quotient.induction_on
      (kernelNullSubmodule kernel) left ?_
    intro f
    refine Submodule.Quotient.induction_on
      (kernelNullSubmodule kernel) right ?_
    intro g
    change star (Raw.inner kernel g f) = Raw.inner kernel f g
    exact (Raw.inner_conj_symm kernel f g).symm
  re_inner_nonneg := by
    intro point
    refine Submodule.Quotient.induction_on
      (kernelNullSubmodule kernel) point ?_
    intro f
    change 0 ≤ (Raw.inner kernel f f).re
    exact Raw.inner_self_nonneg kernel f
  add_left := by
    intro left right third
    refine Submodule.Quotient.induction_on
      (kernelNullSubmodule kernel) left ?_
    intro f
    refine Submodule.Quotient.induction_on
      (kernelNullSubmodule kernel) right ?_
    intro g
    refine Submodule.Quotient.induction_on
      (kernelNullSubmodule kernel) third ?_
    intro h
    change Raw.inner kernel (f + g) h =
      Raw.inner kernel f h + Raw.inner kernel g h
    exact Raw.add_left kernel f g h
  smul_left := by
    intro left right scalar
    refine Submodule.Quotient.induction_on
      (kernelNullSubmodule kernel) left ?_
    intro f
    refine Submodule.Quotient.induction_on
      (kernelNullSubmodule kernel) right ?_
    intro g
    change Raw.inner kernel (scalar • f) g =
      star scalar * Raw.inner kernel f g
    exact Raw.conjugate_linear_left kernel scalar f g

/-- Positive-definite inner-product core on the explicit radical quotient. -/
@[reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Quotient/Variant7719670e693daf594b061ae304b67e59a88702a92e58afc7a6eedaeb8cd2b2bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Quotient/Variant7719670e693daf594b061ae304b67e59a88702a92e58afc7a6eedaeb8cd2b2bc.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `061e6117570d6d49e64717a4ca31b2b960e7facc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
