# coe_coord_of_subsingleton_eq_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6f52ca07-1445-e8d2-c7d0-f8c335095f24",
  "kind": "theorem",
  "lexical_name": "coe_coord_of_subsingleton_eq_one",
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
  "slug": "coe-coord-of-subsingleton-eq-one--456b20d84757461654700667",
  "source": {
    "blob": "0cb656b7fefaff79b689922cdf0c672b648a98a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 261,
    "line": 248,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basis/Variant60088a6b74a09a8930556af9440ee2d1960cf6034f3531fd99c920918db43b57.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:456b20d847574616547006675426508e9c2a45aafc883ed11ff71cf7f1ac25c2",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basis/Variant60088a6b74a09a8930556af9440ee2d1960cf6034f3531fd99c920918db43b57.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f52ca07-1445-e8d2-c7d0-f8c335095f24`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 248–261.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coe_coord_of_subsingleton_eq_one [Subsingleton ι] (i : ι) : (b.coord i : P → k) = 1 := by
  ext q
  have hp : (range b).Subsingleton := by
    rw [← image_univ]
    apply Subsingleton.image
    apply subsingleton_of_subsingleton
  haveI := AffineSubspace.subsingleton_of_subsingleton_span_eq_top hp b.tot
  let s : Finset ι := {i}
  have hi : i ∈ s := by simp
  have hw : s.sum (Function.const ι (1 : k)) = 1 := by simp
  have hq : q = s.affineCombination k b (Function.const ι (1 : k)) := by simp
  rw [Pi.one_apply, hq, b.coord_apply_combination_of_mem hi hw, Function.const_apply]
#align affine_basis.coe_coord_of_subsingleton_eq_one AffineBasis.coe_coord_of_subsingleton_eq_one

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basis/Variant60088a6b74a09a8930556af9440ee2d1960cf6034f3531fd99c920918db43b57.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basis/Variant60088a6b74a09a8930556af9440ee2d1960cf6034f3531fd99c920918db43b57.lean#L248).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0cb656b7fefaff79b689922cdf0c672b648a98a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
