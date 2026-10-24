# constr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:18d50536db471f9e6c0ad8d3d2345f466731ccd92e606af630e01a03bf8b985d",
  "kind": "def",
  "lexical_name": "constr",
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
  "slug": "constr--ac49b256673bc326ffd225ac",
  "source": {
    "blob": "428b3057aeb9db19fbae5d1505d0ee68fc5bb2ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 106,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantf122c0825f59fd7f4a75913679f9212231fbb520f991f39aef9a913a1366fca1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ac49b256673bc326ffd225ac286eae50a88721bd1b5caf5ed4d940bfa7f4e1b8",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantf122c0825f59fd7f4a75913679f9212231fbb520f991f39aef9a913a1366fca1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:18d50536db471f9e6c0ad8d3d2345f466731ccd92e606af630e01a03bf8b985d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def constr {S : Type z} [Semiring S] [Module S N] [SMulCommClass R S N] :
    (ChooseBasisIndex R M → N) ≃ₗ[S] M →ₗ[R] N :=
  Basis.constr (chooseBasis R M) S

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantf122c0825f59fd7f4a75913679f9212231fbb520f991f39aef9a913a1366fca1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantf122c0825f59fd7f4a75913679f9212231fbb520f991f39aef9a913a1366fca1.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `428b3057aeb9db19fbae5d1505d0ee68fc5bb2ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
