# exists_eq_add_and_norm_sq_eq_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:47ff18e6-e60e-04e0-5c93-1b778c748e3f",
  "kind": "theorem",
  "lexical_name": "exists_eq_add_and_norm_sq_eq_add",
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
  "slug": "exists-eq-add-and-norm-sq-eq-add--686a6a4d714ee6a93e585c37",
  "source": {
    "blob": "01453b5e008599e85b106848d1ef6957d9070b36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 155,
    "path": "GRWTSK/Algebra/LinearAlgebra/Operations/Variant2f50b00a9fe4fa0ba9d96bd26614db80fd67beb7bfeda65404f5d80cdcb92ed7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:686a6a4d714ee6a93e585c378bfb3ba6a260af7e80393d0fa80296123527b65b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Operations/Variant2f50b00a9fe4fa0ba9d96bd26614db80fd67beb7bfeda65404f5d80cdcb92ed7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47ff18e6-e60e-04e0-5c93-1b778c748e3f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_eq_add_and_norm_sq_eq_add (f : H + H') :
    ∃ (f₁ : H) (f₂ : H'), (⇑f = f₁ + f₂) ∧ ‖f‖ ^ 2 = ‖f₁‖ ^ 2 + ‖f₂‖ ^ 2 := by
  let p := projection H H' f
  have hp : projection H H' f = p := rfl
  use p.ofLp.1, p.ofLp.2
  constructor
  · rw [← mk_projection f, hp]
    ext
    simp only [WithLp.ofLp_fst, WithLp.ofLp_snd, Pi.add_apply, mk_eq]
    exact generator_apply p.fst p.snd _
  · simp [← (projection H H').norm_map, hp, WithLp.prod_norm_sq_eq_of_L2]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Operations/Variant2f50b00a9fe4fa0ba9d96bd26614db80fd67beb7bfeda65404f5d80cdcb92ed7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Operations/Variant2f50b00a9fe4fa0ba9d96bd26614db80fd67beb7bfeda65404f5d80cdcb92ed7.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `01453b5e008599e85b106848d1ef6957d9070b36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
