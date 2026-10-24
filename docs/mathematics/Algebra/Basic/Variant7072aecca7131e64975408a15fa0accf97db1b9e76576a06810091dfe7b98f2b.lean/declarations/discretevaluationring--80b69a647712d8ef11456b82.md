# DiscreteValuationRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:78f0d556f685f9f0ba01c45ccf17d0b3b753e4b3cab227b21852fd841bf63ec9",
  "kind": "class",
  "lexical_name": "DiscreteValuationRing",
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
  "slug": "discretevaluationring--80b69a647712d8ef11456b82",
  "source": {
    "blob": "5adee322a4cf6c24bc903241e020b7fd09cc8224",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 54,
    "path": "GRWTSK/Algebra/Basic/Variant7072aecca7131e64975408a15fa0accf97db1b9e76576a06810091dfe7b98f2b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:80b69a647712d8ef11456b828888305f905e77fed939d0bc42c17bbb9d6cb0ac",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant7072aecca7131e64975408a15fa0accf97db1b9e76576a06810091dfe7b98f2b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:78f0d556f685f9f0ba01c45ccf17d0b3b753e4b3cab227b21852fd841bf63ec9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class DiscreteValuationRing (R : Type u) [CommRing R] [IsDomain R]
    extends IsPrincipalIdealRing R, LocalRing R : Prop where
  not_a_field' : maximalIdeal R ≠ ⊥
#align discrete_valuation_ring DiscreteValuationRing

namespace DiscreteValuationRing

variable (R : Type u) [CommRing R] [IsDomain R] [DiscreteValuationRing R]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant7072aecca7131e64975408a15fa0accf97db1b9e76576a06810091dfe7b98f2b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant7072aecca7131e64975408a15fa0accf97db1b9e76576a06810091dfe7b98f2b.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5adee322a4cf6c24bc903241e020b7fd09cc8224` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
