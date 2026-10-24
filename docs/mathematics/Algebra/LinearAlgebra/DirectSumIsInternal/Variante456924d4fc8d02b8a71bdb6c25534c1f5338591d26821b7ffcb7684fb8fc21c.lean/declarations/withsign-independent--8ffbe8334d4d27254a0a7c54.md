# withSign.independent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4b166a1d0e0d0465081cb58643f767eddce2273976289cbc24ba7f8a8d273dae",
  "kind": "def",
  "lexical_name": "withSign.independent",
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
  "slug": "withsign-independent--8ffbe8334d4d27254a0a7c54",
  "source": {
    "blob": "0c65641d433f0a6a0f5b6d513290c30c4d2548ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 60,
    "path": "GRWTSK/Algebra/LinearAlgebra/DirectSumIsInternal/Variante456924d4fc8d02b8a71bdb6c25534c1f5338591d26821b7ffcb7684fb8fc21c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8ffbe8334d4d27254a0a7c54a36efb39bb72c91fc754273fdff3c6f3742c991f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/DirectSumIsInternal/Variante456924d4fc8d02b8a71bdb6c25534c1f5338591d26821b7ffcb7684fb8fc21c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4b166a1d0e0d0465081cb58643f767eddce2273976289cbc24ba7f8a8d273dae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def withSign.independent : iSupIndep withSign := by
  apply
    (iSupIndep_pair UnitsInt.one_ne_neg_one _).mpr withSign.isCompl.disjoint
  intro i
  fin_cases i <;> simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/DirectSumIsInternal/Variante456924d4fc8d02b8a71bdb6c25534c1f5338591d26821b7ffcb7684fb8fc21c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/DirectSumIsInternal/Variante456924d4fc8d02b8a71bdb6c25534c1f5338591d26821b7ffcb7684fb8fc21c.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c65641d433f0a6a0f5b6d513290c30c4d2548ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
