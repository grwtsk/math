# ComparatorDetectsAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f1bb64f049263d593d61549f8cf469caafb0694a202b5e956a84d2b8e5c91056",
  "kind": "def",
  "lexical_name": "ComparatorDetectsAt",
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
  "slug": "comparatordetectsat--63ff082f5b3b8a23ac1e452e",
  "source": {
    "blob": "8e19311addbe9d8c126d2f26290e89d26b7de394",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 159,
    "path": "GRWTSK/Algebra/LinearAlgebra/B576578f9dee87582de1b04e5612aeedb334cd84deecbdc735da910cfab901d6ComparatorSepara/Variantb576578f9dee87582de1b04e5612aeedb334cd84deecbdc735da910cfab901d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:63ff082f5b3b8a23ac1e452e33bd100678bfa0eff40aa582868c67f3c9ad584f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/B576578f9dee87582de1b04e5612aeedb334cd84deecbdc735da910cfab901d6ComparatorSepara/Variantb576578f9dee87582de1b04e5612aeedb334cd84deecbdc735da910cfab901d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f1bb64f049263d593d61549f8cf469caafb0694a202b5e956a84d2b8e5c91056`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 159–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ComparatorDetectsAt
    (Q : LinearComparator V) (I : LinearIntervention X V) (x : X) : Prop :=
  Q.readout (C.projectedDifferential I x) ≠ 0

/-- Sector-completeness plus pointwise detection gives strict comparator
separation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/B576578f9dee87582de1b04e5612aeedb334cd84deecbdc735da910cfab901d6ComparatorSepara/Variantb576578f9dee87582de1b04e5612aeedb334cd84deecbdc735da910cfab901d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/B576578f9dee87582de1b04e5612aeedb334cd84deecbdc735da910cfab901d6ComparatorSepara/Variantb576578f9dee87582de1b04e5612aeedb334cd84deecbdc735da910cfab901d6.lean#L159).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e19311addbe9d8c126d2f26290e89d26b7de394` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
