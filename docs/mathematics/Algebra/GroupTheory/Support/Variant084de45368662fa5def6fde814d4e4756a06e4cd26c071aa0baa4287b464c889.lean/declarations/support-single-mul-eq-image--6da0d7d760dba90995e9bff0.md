# support_single_mul_eq_image

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:459a60b1-8fe9-a08c-cf21-5da95a305e7f",
  "kind": "theorem",
  "lexical_name": "support_single_mul_eq_image",
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
  "slug": "support-single-mul-eq-image--6da0d7d760dba90995e9bff0",
  "source": {
    "blob": "d19a8537f808fd0970b1ff51f00747fd0a174686",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 72,
    "line": 63,
    "path": "GRWTSK/Algebra/GroupTheory/Support/Variant084de45368662fa5def6fde814d4e4756a06e4cd26c071aa0baa4287b464c889.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6da0d7d760dba90995e9bff099bbaae34ed9190271a2cbaa4782f5bc35b035f1",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Support/Variant084de45368662fa5def6fde814d4e4756a06e4cd26c071aa0baa4287b464c889.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:459a60b1-8fe9-a08c-cf21-5da95a305e7f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–72.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem support_single_mul_eq_image [DecidableEq G] [Mul G] (f : MonoidAlgebra k G) {r : k}
    (hr : ∀ y, r * y = 0 ↔ y = 0) {x : G} (lx : IsLeftRegular x) :
    (single x r * f : MonoidAlgebra k G).support = Finset.image ((· * ·) x) f.support := by
  refine' subset_antisymm (support_single_mul_subset f _ _) fun y hy => _
  obtain ⟨y, yf, rfl⟩ : ∃ a : G, a ∈ f.support ∧ x * a = y := by
    simpa only [Finset.mem_image, exists_prop] using hy
  simp only [mul_apply, mem_support_iff.mp yf, hr, mem_support_iff, sum_single_index,
    Finsupp.sum_ite_eq', Ne.def, not_false_iff, if_true, zero_mul, ite_self, sum_zero, lx.eq_iff]
#align monoid_algebra.support_single_mul_eq_image MonoidAlgebra.support_single_mul_eq_image

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Support/Variant084de45368662fa5def6fde814d4e4756a06e4cd26c071aa0baa4287b464c889.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Support/Variant084de45368662fa5def6fde814d4e4756a06e4cd26c071aa0baa4287b464c889.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d19a8537f808fd0970b1ff51f00747fd0a174686` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
