# starClosure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bf41d39e5254be5ea46fa2a2158f0a0652060de9391845d2362f84bf044d8d24",
  "kind": "def",
  "lexical_name": "starClosure",
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
  "slug": "starclosure--7487236fcd410ece8e0ef4c5",
  "source": {
    "blob": "00c9713bb74945d8f93bafdf0ccd9d2a7c6a707c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 580,
    "line": 573,
    "path": "GRWTSK/Algebra/NonUnitalSubalgebra/Varianta3beea2f9f621b109138dc448df61d37e06d1537df4c921d47ad5687ff32fc17.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7487236fcd410ece8e0ef4c54105503f12bbee259a9388a3794a74f7e81f3ce9",
  "verification": {
    "reference": "docs/verification/Algebra/NonUnitalSubalgebra/Varianta3beea2f9f621b109138dc448df61d37e06d1537df4c921d47ad5687ff32fc17.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bf41d39e5254be5ea46fa2a2158f0a0652060de9391845d2362f84bf044d8d24`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 573–580.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def starClosure (S : NonUnitalSubalgebra R A) : NonUnitalStarSubalgebra R A where
  toNonUnitalSubalgebra := S ⊔ star S
  star_mem' := @fun a (ha : a ∈ S ⊔ star S) => show star a ∈ S ⊔ star S by
    simp only [← mem_star_iff _ a, ← (@NonUnitalAlgebra.gi R A _ _ _ _ _).l_sup_u _ _] at *
    convert ha using 2
    simp only [Set.sup_eq_union, star_adjoin_comm, Set.union_star, coe_star, star_star,
      Set.union_comm]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/NonUnitalSubalgebra/Varianta3beea2f9f621b109138dc448df61d37e06d1537df4c921d47ad5687ff32fc17.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/NonUnitalSubalgebra/Varianta3beea2f9f621b109138dc448df61d37e06d1537df4c921d47ad5687ff32fc17.lean#L573).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00c9713bb74945d8f93bafdf0ccd9d2a7c6a707c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
