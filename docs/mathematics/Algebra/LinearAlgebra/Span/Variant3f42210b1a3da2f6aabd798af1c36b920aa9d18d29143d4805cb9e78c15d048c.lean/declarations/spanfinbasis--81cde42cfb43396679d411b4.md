# spanFinBasis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:56fb632fe82ceeb4d7e8fbb31e6a08bdf439eb45f16d785c8ce769e749968fbd",
  "kind": "def",
  "lexical_name": "spanFinBasis",
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
  "slug": "spanfinbasis--81cde42cfb43396679d411b4",
  "source": {
    "blob": "3fba1c1266a4b4c382d349088b39aad71bbf2e9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 78,
    "path": "GRWTSK/Algebra/LinearAlgebra/Span/Variant3f42210b1a3da2f6aabd798af1c36b920aa9d18d29143d4805cb9e78c15d048c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:81cde42cfb43396679d411b4b6c3ec04cb4d8a53fdb4febe2574e8e1d891397e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Span/Variant3f42210b1a3da2f6aabd798af1c36b920aa9d18d29143d4805cb9e78c15d048c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:56fb632fe82ceeb4d7e8fbb31e6a08bdf439eb45f16d785c8ce769e749968fbd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def spanFinBasis (x : π C (· ∈ s)) : LocallyConstant (π C (· ∈ s)) ℤ where
  toFun := fun y ↦ if y = x then 1 else 0
  isLocallyConstant :=
    haveI : DiscreteTopology (π C (· ∈ s)) := Finite.instDiscreteTopology
    IsLocallyConstant.of_discrete _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Span/Variant3f42210b1a3da2f6aabd798af1c36b920aa9d18d29143d4805cb9e78c15d048c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Span/Variant3f42210b1a3da2f6aabd798af1c36b920aa9d18d29143d4805cb9e78c15d048c.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3fba1c1266a4b4c382d349088b39aad71bbf2e9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
