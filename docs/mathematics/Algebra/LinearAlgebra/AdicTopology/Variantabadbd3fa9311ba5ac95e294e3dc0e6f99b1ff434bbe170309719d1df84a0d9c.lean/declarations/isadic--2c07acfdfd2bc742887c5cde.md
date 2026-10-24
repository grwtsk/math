# IsAdic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2806123066a5ccbfe2ce76ed54fa4532170c58d27cc457062a194b37672b32e0",
  "kind": "def",
  "lexical_name": "IsAdic",
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
  "slug": "isadic--2c07acfdfd2bc742887c5cde",
  "source": {
    "blob": "f1139d116aa17218eb55e59ff6d14277f4d0dc8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 158,
    "line": 153,
    "path": "GRWTSK/Algebra/LinearAlgebra/AdicTopology/Variantabadbd3fa9311ba5ac95e294e3dc0e6f99b1ff434bbe170309719d1df84a0d9c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2c07acfdfd2bc742887c5cde91f997a959ef8473b9474718576ab169c20beac9",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/AdicTopology/Variantabadbd3fa9311ba5ac95e294e3dc0e6f99b1ff434bbe170309719d1df84a0d9c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2806123066a5ccbfe2ce76ed54fa4532170c58d27cc457062a194b37672b32e0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–158.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def IsAdic [H : TopologicalSpace R] (J : Ideal R) : Prop :=
  H = J.adicTopology
#align is_adic IsAdic

/-- A topological ring is `J`-adic if and only if it admits the powers of `J` as a basis of
open neighborhoods of zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/AdicTopology/Variantabadbd3fa9311ba5ac95e294e3dc0e6f99b1ff434bbe170309719d1df84a0d9c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/AdicTopology/Variantabadbd3fa9311ba5ac95e294e3dc0e6f99b1ff434bbe170309719d1df84a0d9c.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1139d116aa17218eb55e59ff6d14277f4d0dc8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
