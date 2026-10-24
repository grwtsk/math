# nonempty_extraDegeneracy_standardSimplex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9367b9adb4f681431569f489e714e3921150bf428f7c8841f92329a0ce18b654",
  "kind": "instance",
  "lexical_name": "nonempty_extraDegeneracy_standardSimplex",
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
  "slug": "nonempty-extradegeneracy-standardsimplex--f6823fd7ccaf5d4cf5f50c3a",
  "source": {
    "blob": "ef3f477b8fce655263952684b0f4563ec9874815",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 263,
    "line": 237,
    "path": "GRWTSK/Topology/AlgebraicTopology/ExtraDegeneracy/Variantca61270c8661b36ecab30805a8288cc60ee9d09ba3ebecb1a42fad00f7b03d40.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f6823fd7ccaf5d4cf5f50c3ae6ec1f49153daa559170b32419977f49fb730680",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/ExtraDegeneracy/Variantca61270c8661b36ecab30805a8288cc60ee9d09ba3ebecb1a42fad00f7b03d40.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9367b9adb4f681431569f489e714e3921150bf428f7c8841f92329a0ce18b654`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 237–263.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance nonempty_extraDegeneracy_standardSimplex (Δ : SimplexCategory) :
    Nonempty (SimplicialObject.Augmented.ExtraDegeneracy (standardSimplex.obj Δ)) :=
  ⟨StandardSimplex.extraDegeneracy Δ⟩
set_option linter.uppercaseLean3 false in
#align sSet.augmented.standard_simplex.nonempty_extra_degeneracy_standard_simplex SSet.Augmented.StandardSimplex.nonempty_extraDegeneracy_standardSimplex

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

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/ExtraDegeneracy/Variantca61270c8661b36ecab30805a8288cc60ee9d09ba3ebecb1a42fad00f7b03d40.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/ExtraDegeneracy/Variantca61270c8661b36ecab30805a8288cc60ee9d09ba3ebecb1a42fad00f7b03d40.lean#L237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef3f477b8fce655263952684b0f4563ec9874815` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
