# irreducible_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ad85dd7a-e87f-862b-beea-bf1a75a22d20",
  "kind": "lemma",
  "lexical_name": "irreducible_iff",
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
  "slug": "irreducible-iff--cd835bb792ee7aceac2ffcc7",
  "source": {
    "blob": "7f1dd32caf817943e827b52ed2f76313bec94482",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 55,
    "line": 50,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variant3ab582e5ca3d9cceb560a609ac4c2cc7777ead388d9f5f0687fb585e40e04ccc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd835bb792ee7aceac2ffcc7c062ff06415927c07e055a56f475fa197c35bb38",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variant3ab582e5ca3d9cceb560a609ac4c2cc7777ead388d9f5f0687fb585e40e04ccc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad85dd7a-e87f-862b-beea-bf1a75a22d20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–55.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[to_additive] lemma irreducible_iff :
    Irreducible p ↔ ¬IsUnit p ∧ ∀ ⦃a b⦄, p = a * b → IsUnit a ∨ IsUnit b where
  mp hp := ⟨hp.not_isUnit, hp.isUnit_or_isUnit⟩
  mpr hp := ⟨hp.1, hp.2⟩

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variant3ab582e5ca3d9cceb560a609ac4c2cc7777ead388d9f5f0687fb585e40e04ccc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variant3ab582e5ca3d9cceb560a609ac4c2cc7777ead388d9f5f0687fb585e40e04ccc.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f1dd32caf817943e827b52ed2f76313bec94482` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
