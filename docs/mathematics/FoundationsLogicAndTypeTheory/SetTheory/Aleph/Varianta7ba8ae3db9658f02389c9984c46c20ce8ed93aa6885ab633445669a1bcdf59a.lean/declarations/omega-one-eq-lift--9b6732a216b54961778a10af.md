# omega_one_eq_lift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1ae6f0d0-cab4-0bc2-0aef-6ad69f0a2661",
  "kind": "theorem",
  "lexical_name": "omega_one_eq_lift",
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
  "slug": "omega-one-eq-lift--9b6732a216b54961778a10af",
  "source": {
    "blob": "3b954e5087fc74d9b81726ce139d3aa885d3b090",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 942,
    "line": 939,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Aleph/Varianta7ba8ae3db9658f02389c9984c46c20ce8ed93aa6885ab633445669a1bcdf59a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b6732a216b54961778a10af38b1e7b26e682a2c51b9202f879dbe1b733e9cc2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Aleph/Varianta7ba8ae3db9658f02389c9984c46c20ce8ed93aa6885ab633445669a1bcdf59a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1ae6f0d0-cab4-0bc2-0aef-6ad69f0a2661`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 939–942.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem omega_one_eq_lift : ω₁ = lift.{v} o ↔ ω₁ = o := by
  simpa using lift_inj (a := ω₁)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Aleph/Varianta7ba8ae3db9658f02389c9984c46c20ce8ed93aa6885ab633445669a1bcdf59a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Aleph/Varianta7ba8ae3db9658f02389c9984c46c20ce8ed93aa6885ab633445669a1bcdf59a.lean#L939).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b954e5087fc74d9b81726ce139d3aa885d3b090` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
