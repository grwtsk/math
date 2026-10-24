# isCyclic_subgroup_units

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:78306b567e32ea4b79fa4284323aa763426fbb8bb1e1390403adb4f98fe67635",
  "kind": "instance",
  "lexical_name": "isCyclic_subgroup_units",
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
  "slug": "iscyclic-subgroup-units--577d1656928c7fe473694a94",
  "source": {
    "blob": "df3a5a86b71dc582a11398c624b136ee47db1bd0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 152,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant723960ecf8ab7e5e2cc89827fb415212c6e4a55310e89bf606a3b9553abc2bd8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:577d1656928c7fe473694a94147ec2603360177b9e3afb7bfc51a1561458dcec",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant723960ecf8ab7e5e2cc89827fb415212c6e4a55310e89bf606a3b9553abc2bd8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:78306b567e32ea4b79fa4284323aa763426fbb8bb1e1390403adb4f98fe67635`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance isCyclic_subgroup_units : IsCyclic S :=
  isCyclic_of_injective_ringHom { toFun s := (s.val : R), map_one' := rfl, map_mul' := by simp }
    (Units.val_injective.comp Subtype.val_injective)

@[deprecated (since := "2026-03-03")] alias subgroup_units_cyclic := isCyclic_subgroup_units

end

-- TODO: find a better home (Mathlib.Algebra.Polynomial.PartialFractions)?
section EuclideanDivision

namespace Polynomial

variable (K : Type*) [Field K] [Algebra R[X] K] [IsFractionRing R[X] K]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant723960ecf8ab7e5e2cc89827fb415212c6e4a55310e89bf606a3b9553abc2bd8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/IntegralDomain/Variant723960ecf8ab7e5e2cc89827fb415212c6e4a55310e89bf606a3b9553abc2bd8.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df3a5a86b71dc582a11398c624b136ee47db1bd0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
