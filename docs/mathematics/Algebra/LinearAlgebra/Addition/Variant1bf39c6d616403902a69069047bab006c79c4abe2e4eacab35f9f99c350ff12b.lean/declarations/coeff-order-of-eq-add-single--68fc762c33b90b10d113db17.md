# coeff_order_of_eq_add_single

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5fb5655b-6bf5-03a9-7459-717cb18a760b",
  "kind": "theorem",
  "lexical_name": "coeff_order_of_eq_add_single",
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
  "slug": "coeff-order-of-eq-add-single--68fc762c33b90b10d113db17",
  "source": {
    "blob": "9d310bdb5ad5199fc7e1ec71545fa410e079839b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 238,
    "line": 226,
    "path": "GRWTSK/Algebra/LinearAlgebra/Addition/Variant1bf39c6d616403902a69069047bab006c79c4abe2e4eacab35f9f99c350ff12b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:68fc762c33b90b10d113db176b44cb4554435f10722bdcd7f9a96d3e647c7ccd",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Addition/Variant1bf39c6d616403902a69069047bab006c79c4abe2e4eacab35f9f99c350ff12b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5fb5655b-6bf5-03a9-7459-717cb18a760b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–238.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coeff_order_of_eq_add_single {R} [AddCancelCommMonoid R] [Zero Γ] {x y : HahnSeries Γ R}
    (hxy : x = y + single x.order x.leadingCoeff) (h : x ≠ 0) :
    y.coeff x.order = 0 := by
  let xo := x.isWF_support.min (support_nonempty_iff.2 h)
  have : xo = x.order := (order_of_ne h).symm
  have hx : x.coeff xo = y.coeff xo + (single x.order x.leadingCoeff).coeff xo := by
    nth_rw 1 [hxy, coeff_add]
  have hxx :
      (single x.order x.leadingCoeff).coeff xo = (single x.order x.leadingCoeff).leadingCoeff := by
    simp [leadingCoeff_of_single, coeff_single, this]
  rw [← (leadingCoeff_of_ne h), hxx, leadingCoeff_of_single, right_eq_add, this] at hx
  exact hx

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Addition/Variant1bf39c6d616403902a69069047bab006c79c4abe2e4eacab35f9f99c350ff12b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Addition/Variant1bf39c6d616403902a69069047bab006c79c4abe2e4eacab35f9f99c350ff12b.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d310bdb5ad5199fc7e1ec71545fa410e079839b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
