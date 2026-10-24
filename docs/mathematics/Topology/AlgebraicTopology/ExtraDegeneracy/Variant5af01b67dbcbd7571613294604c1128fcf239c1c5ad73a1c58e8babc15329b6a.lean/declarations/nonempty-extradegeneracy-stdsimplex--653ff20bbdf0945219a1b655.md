# nonempty_extraDegeneracy_stdSimplex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:82913d0605d1a8fafa2edcbf45507ff7062006169e4a0427d4446bd6e41a0f0e",
  "kind": "instance",
  "lexical_name": "nonempty_extraDegeneracy_stdSimplex",
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
  "slug": "nonempty-extradegeneracy-stdsimplex--653ff20bbdf0945219a1b655",
  "source": {
    "blob": "91f8bd351d5db58c2d7329efe8a105319c911808",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 263,
    "line": 239,
    "path": "GRWTSK/Topology/AlgebraicTopology/ExtraDegeneracy/Variant5af01b67dbcbd7571613294604c1128fcf239c1c5ad73a1c58e8babc15329b6a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:653ff20bbdf0945219a1b6555158cadc8d7532d9d1d220b923b7c041353adf05",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/ExtraDegeneracy/Variant5af01b67dbcbd7571613294604c1128fcf239c1c5ad73a1c58e8babc15329b6a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:82913d0605d1a8fafa2edcbf45507ff7062006169e4a0427d4446bd6e41a0f0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 239–263.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance nonempty_extraDegeneracy_stdSimplex (Δ : SimplexCategory) :
    Nonempty (SimplicialObject.Augmented.ExtraDegeneracy (stdSimplex.obj Δ)) :=
  ⟨StandardSimplex.extraDegeneracy Δ⟩

end StandardSimplex

end Augmented

end SSet

namespace CategoryTheory

open Limits

namespace Arrow

namespace AugmentedCechNerve

variable {C : Type*} [Category C] (f : Arrow C)
  [∀ n : ℕ, HasWidePullback f.right (fun _ : Fin (n + 1) => f.left) fun _ => f.hom]
  (S : SplitEpi f.hom)

/-- The extra degeneracy map on the Čech nerve of a split epi. It is
given on the `0`-projection by the given section of the split epi,
and by shifting the indices on the other projections. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/ExtraDegeneracy/Variant5af01b67dbcbd7571613294604c1128fcf239c1c5ad73a1c58e8babc15329b6a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/ExtraDegeneracy/Variant5af01b67dbcbd7571613294604c1128fcf239c1c5ad73a1c58e8babc15329b6a.lean#L239).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91f8bd351d5db58c2d7329efe8a105319c911808` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
