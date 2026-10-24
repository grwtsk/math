# integer.integers

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:33240499-e972-035d-7436-bbd234b03329",
  "kind": "theorem",
  "lexical_name": "integer.integers",
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
  "slug": "integer-integers--bf50554ff42048a539abe3b5",
  "source": {
    "blob": "2d078f171769974bcb0e70159548ebdd693715aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 69,
    "path": "GRWTSK/Algebra/Integers/Variant15d4caee9d949544f818915ec6cc324ac9d9ce38cffeab455a88fe4f0e16f165.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bf50554ff42048a539abe3b5e776e2ef3853abd1d0262b868032131bae07bebf",
  "verification": {
    "reference": "docs/verification/Algebra/Integers/Variant15d4caee9d949544f818915ec6cc324ac9d9ce38cffeab455a88fe4f0e16f165.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:33240499-e972-035d-7436-bbd234b03329`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integer.integers : v.Integers v.integer :=
  { hom_inj := Subtype.coe_injective
    map_le_one := fun r => r.2
    exists_of_le_one := fun r hr => ⟨⟨r, hr⟩, rfl⟩ }
#align valuation.integer.integers Valuation.integer.integers

namespace Integers

variable {v O} [CommRing O] [Algebra O R] (hv : Integers v O)


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Integers/Variant15d4caee9d949544f818915ec6cc324ac9d9ce38cffeab455a88fe4f0e16f165.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Integers/Variant15d4caee9d949544f818915ec6cc324ac9d9ce38cffeab455a88fe4f0e16f165.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d078f171769974bcb0e70159548ebdd693715aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
