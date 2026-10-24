# linearIndependentFintypeOfLeSpanFintype

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:080c3036464e6c8c21bb583bbe37c8a50844497cac75651cbe60f940c5ff5552",
  "kind": "def",
  "lexical_name": "linearIndependentFintypeOfLeSpanFintype",
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
  "slug": "linearindependentfintypeoflespanfintype--21ad39c1c12e9f8b1bdd3711",
  "source": {
    "blob": "103c093bdd16e05dce22b5e168af994e5c0046d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 706,
    "line": 693,
    "path": "GRWTSK/Algebra/LinearAlgebra/Dimension/Variant5b2ef135133d2ad5aa226d8f4bb352715e4e294653fe8f6a369b8bd385a8d03e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:21ad39c1c12e9f8b1bdd37116cdff4f39885cb30f7834073af1d675e3ad38d9a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Dimension/Variant5b2ef135133d2ad5aa226d8f4bb352715e4e294653fe8f6a369b8bd385a8d03e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:080c3036464e6c8c21bb583bbe37c8a50844497cac75651cbe60f940c5ff5552`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 693–706.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def linearIndependentFintypeOfLeSpanFintype {ι : Type*} (v : ι → M) (i : LinearIndependent R v)
    (w : Set M) [Fintype w] (s : range v ≤ span R w) : Fintype ι :=
  fintypeOfFinsetCardLe (Fintype.card w) fun t => by
    let v' := fun x : (t : Set ι) => v x
    have i' : LinearIndependent R v' := i.comp _ Subtype.val_injective
    have s' : range v' ≤ span R w := (range_comp_subset_range _ _).trans s
    simpa using linearIndependent_le_span_aux' v' i' w s'
#align linear_independent_fintype_of_le_span_fintype linearIndependentFintypeOfLeSpanFintype

/-- If `R` satisfies the strong rank condition,
then for any linearly independent family `v : ι → M`
contained in the span of some finite `w : Set M`,
the cardinality of `ι` is bounded by the cardinality of `w`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Dimension/Variant5b2ef135133d2ad5aa226d8f4bb352715e4e294653fe8f6a369b8bd385a8d03e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Dimension/Variant5b2ef135133d2ad5aa226d8f4bb352715e4e294653fe8f6a369b8bd385a8d03e.lean#L693).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `103c093bdd16e05dce22b5e168af994e5c0046d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
