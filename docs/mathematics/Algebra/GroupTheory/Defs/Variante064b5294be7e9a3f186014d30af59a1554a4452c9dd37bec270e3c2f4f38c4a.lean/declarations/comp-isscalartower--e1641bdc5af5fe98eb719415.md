# comp.isScalarTower

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e629c1f6-2f40-b7c0-5b35-69ec139cec78",
  "kind": "lemma",
  "lexical_name": "comp.isScalarTower",
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
  "slug": "comp-isscalartower--e1641bdc5af5fe98eb719415",
  "source": {
    "blob": "3dd52bc3eb19f5d8d766a0bd5ee772820e05a982",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 269,
    "line": 259,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variante064b5294be7e9a3f186014d30af59a1554a4452c9dd37bec270e3c2f4f38c4a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e1641bdc5af5fe98eb719415c6d61129052727b4c7219c321075628eb0faf9e7",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variante064b5294be7e9a3f186014d30af59a1554a4452c9dd37bec270e3c2f4f38c4a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e629c1f6-2f40-b7c0-5b35-69ec139cec78`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 259–269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma comp.isScalarTower [SMul M β] [SMul α β] [IsScalarTower M α β] (g : N → M) : by
    haveI := comp α g; haveI := comp β g; exact IsScalarTower N α β where
  __ := comp α g
  __ := comp β g
  smul_assoc n := smul_assoc (g n)

/-- This cannot be an instance because it can cause infinite loops whenever the `SMul` arguments
are still metavariables. -/
@[to_additive
"This cannot be an instance because it can cause infinite loops whenever the `VAdd` arguments
are still metavariables."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variante064b5294be7e9a3f186014d30af59a1554a4452c9dd37bec270e3c2f4f38c4a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variante064b5294be7e9a3f186014d30af59a1554a4452c9dd37bec270e3c2f4f38c4a.lean#L259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3dd52bc3eb19f5d8d766a0bd5ee772820e05a982` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
