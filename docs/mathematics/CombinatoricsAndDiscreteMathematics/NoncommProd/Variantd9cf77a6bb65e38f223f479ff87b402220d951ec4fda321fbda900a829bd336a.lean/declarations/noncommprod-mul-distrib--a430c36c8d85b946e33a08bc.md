# noncommProd_mul_distrib

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2d033445-8bcc-5e42-2f6f-cb4b1cb3fe4b",
  "kind": "theorem",
  "lexical_name": "noncommProd_mul_distrib",
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
  "slug": "noncommprod-mul-distrib--a430c36c8d85b946e33a08bc",
  "source": {
    "blob": "833e40529ff0486c5673892e38995f97d2411d43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 422,
    "line": 407,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NoncommProd/Variantd9cf77a6bb65e38f223f479ff87b402220d951ec4fda321fbda900a829bd336a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a430c36c8d85b946e33a08bca5831e16442dfc36ee1559240b59e7cca2ef923a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/NoncommProd/Variantd9cf77a6bb65e38f223f479ff87b402220d951ec4fda321fbda900a829bd336a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d033445-8bcc-5e42-2f6f-cb4b1cb3fe4b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 407–422.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem noncommProd_mul_distrib {s : Finset α} (f : α → β) (g : α → β) (comm_ff comm_gg comm_gf) :
    noncommProd s (f * g) (noncommProd_mul_distrib_aux comm_ff comm_gg comm_gf) =
      noncommProd s f comm_ff * noncommProd s g comm_gg := by
  induction' s using Finset.cons_induction_on with x s hnotMem ih
  · simp
  rw [Finset.noncommProd_cons, Finset.noncommProd_cons, Finset.noncommProd_cons, Pi.mul_apply,
    ih (comm_ff.mono fun _ => mem_cons_of_mem) (comm_gg.mono fun _ => mem_cons_of_mem)
      (comm_gf.mono fun _ => mem_cons_of_mem),
    (noncommProd_commute _ _ _ _ fun y hy => ?_).mul_mul_mul_comm]
  exact comm_gf (mem_cons_self x s) (mem_cons_of_mem hy) (ne_of_mem_of_not_mem hy hnotMem).symm

section FinitePi

variable {M : ι → Type*} [∀ i, Monoid (M i)]

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/NoncommProd/Variantd9cf77a6bb65e38f223f479ff87b402220d951ec4fda321fbda900a829bd336a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/NoncommProd/Variantd9cf77a6bb65e38f223f479ff87b402220d951ec4fda321fbda900a829bd336a.lean#L407).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `833e40529ff0486c5673892e38995f97d2411d43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
