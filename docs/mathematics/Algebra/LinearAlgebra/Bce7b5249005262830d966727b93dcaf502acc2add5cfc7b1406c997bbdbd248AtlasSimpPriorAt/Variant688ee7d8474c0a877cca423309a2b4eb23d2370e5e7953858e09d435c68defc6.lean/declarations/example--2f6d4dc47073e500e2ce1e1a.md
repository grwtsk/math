# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:35510b9fc6c7b2e712f7b2b907dd3e5abff126aa89579b58409cb9f1d33bcd43",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--2f6d4dc47073e500e2ce1e1a",
  "source": {
    "blob": "f8ece061e945de087d20bd27627810ef716d30c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 47,
    "path": "GRWTSK/Algebra/LinearAlgebra/Bce7b5249005262830d966727b93dcaf502acc2add5cfc7b1406c997bbdbd248AtlasSimpPriorAt/Variant688ee7d8474c0a877cca423309a2b4eb23d2370e5e7953858e09d435c68defc6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2f6d4dc47073e500e2ce1e1a8cb09840d6f49d49f52a30627ca6fbcb0db3a001",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Bce7b5249005262830d966727b93dcaf502acc2add5cfc7b1406c997bbdbd248AtlasSimpPriorAt/Variant688ee7d8474c0a877cca423309a2b4eb23d2370e5e7953858e09d435c68defc6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:35510b9fc6c7b2e712f7b2b907dd3e5abff126aa89579b58409cb9f1d33bcd43`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example {V : Type u} [AddCommGroup V] [Module ℝ V] (z : V × V) :
    swapInvolution (swapInvolution z) = z := by simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Bce7b5249005262830d966727b93dcaf502acc2add5cfc7b1406c997bbdbd248AtlasSimpPriorAt/Variant688ee7d8474c0a877cca423309a2b4eb23d2370e5e7953858e09d435c68defc6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Bce7b5249005262830d966727b93dcaf502acc2add5cfc7b1406c997bbdbd248AtlasSimpPriorAt/Variant688ee7d8474c0a877cca423309a2b4eb23d2370e5e7953858e09d435c68defc6.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8ece061e945de087d20bd27627810ef716d30c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
