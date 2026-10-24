# nontrivial_tensorProduct_iff_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1da76256-0b54-5aaf-bb4c-3a41cbd7fa1b",
  "kind": "lemma",
  "lexical_name": "nontrivial_tensorProduct_iff_left",
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
  "slug": "nontrivial-tensorproduct-iff-left--d47e2b0f20854e6d205f2032",
  "source": {
    "blob": "1e211b79962cca71da71f2c2dc7d7588ca4f72a6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 283,
    "line": 240,
    "path": "GRWTSK/Algebra/Basic/Variante125bd8617e09540a78010f5142655972c4e00103db6397e8cb76af3e9de91dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d47e2b0f20854e6d205f20326206c27ee2ea91a9fc979f669429114db06b23ce",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variante125bd8617e09540a78010f5142655972c4e00103db6397e8cb76af3e9de91dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1da76256-0b54-5aaf-bb4c-3a41cbd7fa1b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 240–283.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma nontrivial_tensorProduct_iff_left [Module.FaithfullyFlat R N] :
    Nontrivial (M ⊗[R] N) ↔ Nontrivial M := by
  contrapose!; exact subsingleton_tensorProduct_iff_left R M

end

section exact

/-!
### Faithfully flat modules and exact sequences

In this section we prove that an `R`-module `M` is faithfully flat iff tensoring with `M`
preserves and reflects exact sequences.

Let `N₁ -l₁₂-> N₂ -l₂₃-> N₃` be two linear maps.
- We first show that if `N₁ ⊗ M -> N₂ ⊗ M -> N₃ ⊗ M` is exact, then `N₁ -l₁₂-> N₂ -l₂₃-> N₃` is a
  complex, i.e. `range l₁₂ ≤ ker l₂₃`.
  This is `range_le_ker_of_exact_rTensor`.
- Then in `rTensor_reflects_exact`, we show `ker l₂₃ = range l₁₂` by considering the cohomology
  `ker l₂₃ ⧸ range l₁₂`.

This shows that when `M` is faithfully flat, `- ⊗ M` reflects exact sequences. For details, see
comments in the proof. Since `M` is flat, `- ⊗ M` preserves exact sequences.

On the other hand, if `- ⊗ M` preserves and reflects exact sequences, then `M` is faithfully flat.
- `M` is flat because `- ⊗ M` preserves exact sequences.
- We need to show that if `N ⊗ M = 0` then `N = 0`. Consider the sequence `N -0-> N -0-> 0`. After
  tensoring with `M`, we get `N ⊗ M -0-> N ⊗ M -0-> 0` which is exact because `N ⊗ M = 0`.
  Since `- ⊗ M` reflects exact sequences, `N = 0`.
-/

section arbitrary_universe

variable {N1 : Type*} [AddCommGroup N1] [Module R N1]
variable {N2 : Type*} [AddCommGroup N2] [Module R N2]
variable {N3 : Type*} [AddCommGroup N3] [Module R N3]
variable (l12 : N1 →ₗ[R] N2) (l23 : N2 →ₗ[R] N3)

/--
If `M` is faithfully flat, then exactness of `N₁ ⊗ M -> N₂ ⊗ M -> N₃ ⊗ M` implies that the
composition `N₁ -> N₂ -> N₃` is `0`.

Implementation detail, please use `rTensor_reflects_exact` instead.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variante125bd8617e09540a78010f5142655972c4e00103db6397e8cb76af3e9de91dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variante125bd8617e09540a78010f5142655972c4e00103db6397e8cb76af3e9de91dc.lean#L240).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1e211b79962cca71da71f2c2dc7d7588ca4f72a6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
