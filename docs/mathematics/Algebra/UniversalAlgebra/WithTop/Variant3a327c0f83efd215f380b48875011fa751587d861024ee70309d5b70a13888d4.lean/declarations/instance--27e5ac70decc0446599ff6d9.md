# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3873b80fc8788fb17e3a0f1b2a378aee2cd7ea2e24a1510def7948bf3e1d58e3",
  "kind": "instance",
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
  "slug": "instance--27e5ac70decc0446599ff6d9",
  "source": {
    "blob": "6f01aa9105ed70647209e08a7f0ad978430043d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 27,
    "line": 24,
    "path": "GRWTSK/Algebra/UniversalAlgebra/WithTop/Variant3a327c0f83efd215f380b48875011fa751587d861024ee70309d5b70a13888d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:27e5ac70decc0446599ff6d95692693a7f25606ca6c1af48203ef7e7c15c806c",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/WithTop/Variant3a327c0f83efd215f380b48875011fa751587d861024ee70309d5b70a13888d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3873b80fc8788fb17e3a0f1b2a378aee2cd7ea2e24a1510def7948bf3e1d58e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–27.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : WellFoundedRelation (WithTop ℕ) where
  rel := (· < ·)
  wf := IsWellFounded.wf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/WithTop/Variant3a327c0f83efd215f380b48875011fa751587d861024ee70309d5b70a13888d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/WithTop/Variant3a327c0f83efd215f380b48875011fa751587d861024ee70309d5b70a13888d4.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f01aa9105ed70647209e08a7f0ad978430043d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
