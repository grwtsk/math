# edist_naturalParameterization_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c4f1b791-df6c-a4e9-d789-3254480f43e4",
  "kind": "theorem",
  "lexical_name": "edist_naturalParameterization_eq_zero",
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
  "slug": "edist-naturalparameterization-eq-zero--1bff71f10df223617f019955",
  "source": {
    "blob": "5c7bd9d5b890fcb6194d5a18fb98c17a41ec115e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 267,
    "line": 256,
    "path": "GRWTSK/Analysis/ConstantSpeed/Variantb9860451e8acb0c06c110df6027ecf3533234051da5df79984675c023d1474ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1bff71f10df223617f019955a44693b36b25f3775fac35532101c2b343990219",
  "verification": {
    "reference": "docs/verification/Analysis/ConstantSpeed/Variantb9860451e8acb0c06c110df6027ecf3533234051da5df79984675c023d1474ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4f1b791-df6c-a4e9-d789-3254480f43e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 256–267.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem edist_naturalParameterization_eq_zero {f : α → E} {s : Set α}
    (hf : LocallyBoundedVariationOn f s) {a : α} (as : a ∈ s) {b : α} (bs : b ∈ s) :
    edist (naturalParameterization f s a (variationOnFromTo f s a b)) (f b) = 0 := by
  dsimp only [naturalParameterization]
  haveI : Nonempty α := ⟨a⟩
  obtain ⟨cs, hc⟩ :=
    @Function.invFunOn_pos _ _ _ s (variationOnFromTo f s a) (variationOnFromTo f s a b)
      ⟨b, bs, rfl⟩
  rw [variationOnFromTo.eq_left_iff hf as cs bs] at hc
  apply variationOnFromTo.edist_zero_of_eq_zero hf cs bs hc
#align edist_natural_parameterization_eq_zero edist_naturalParameterization_eq_zero

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ConstantSpeed/Variantb9860451e8acb0c06c110df6027ecf3533234051da5df79984675c023d1474ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ConstantSpeed/Variantb9860451e8acb0c06c110df6027ecf3533234051da5df79984675c023d1474ec.lean#L256).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c7bd9d5b890fcb6194d5a18fb98c17a41ec115e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
