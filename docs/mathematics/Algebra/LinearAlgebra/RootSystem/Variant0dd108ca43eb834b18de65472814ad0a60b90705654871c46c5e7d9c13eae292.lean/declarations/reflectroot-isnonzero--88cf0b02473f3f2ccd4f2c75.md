# reflectRoot_isNonZero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9305e636-f32f-0155-db51-a2fcb923ba58",
  "kind": "lemma",
  "lexical_name": "reflectRoot_isNonZero",
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
  "slug": "reflectroot-isnonzero--88cf0b02473f3f2ccd4f2c75",
  "source": {
    "blob": "547bf2d3648c86ddbd257c98d5b98845f730e703",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 388,
    "line": 374,
    "path": "GRWTSK/Algebra/LinearAlgebra/RootSystem/Variant0dd108ca43eb834b18de65472814ad0a60b90705654871c46c5e7d9c13eae292.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88cf0b02473f3f2ccd4f2c75fc34a215ae526a38aca782c03fd9ac2defcb6d2f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/RootSystem/Variant0dd108ca43eb834b18de65472814ad0a60b90705654871c46c5e7d9c13eae292.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9305e636-f32f-0155-db51-a2fcb923ba58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 374–388.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma reflectRoot_isNonZero (α β : Weight K H L) (hβ : β.IsNonZero) :
    (reflectRoot α β).IsNonZero := by
  intro e
  have : β (coroot α) = 0 := by
    by_cases hα : α.IsZero
    · simp [coroot_eq_zero_iff.mpr hα]
    apply add_left_injective (β (coroot α))
    simpa [root_apply_coroot hα, mul_two] using congr_fun (sub_eq_zero.mp e) (coroot α)
  have : reflectRoot α β = β := by ext; simp [reflectRoot, this]
  exact hβ (this ▸ e)

variable (H)

/-- The root system of a finite-dimensional Lie algebra with non-degenerate Killing form over a
field of characteristic zero, relative to a splitting Cartan subalgebra. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/RootSystem/Variant0dd108ca43eb834b18de65472814ad0a60b90705654871c46c5e7d9c13eae292.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/RootSystem/Variant0dd108ca43eb834b18de65472814ad0a60b90705654871c46c5e7d9c13eae292.lean#L374).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `547bf2d3648c86ddbd257c98d5b98845f730e703` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
