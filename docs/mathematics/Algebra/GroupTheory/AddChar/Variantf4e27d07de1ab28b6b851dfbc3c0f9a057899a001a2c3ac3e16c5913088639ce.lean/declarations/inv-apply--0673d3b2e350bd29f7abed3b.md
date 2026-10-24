# inv_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:99adcc7d-af4a-6f9f-5217-171152437c2e",
  "kind": "lemma",
  "lexical_name": "inv_apply",
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
  "slug": "inv-apply--0673d3b2e350bd29f7abed3b",
  "source": {
    "blob": "ad4d004cb36738df660fd19a9e51120848ef6c50",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 369,
    "line": 369,
    "path": "GRWTSK/Algebra/GroupTheory/AddChar/Variantf4e27d07de1ab28b6b851dfbc3c0f9a057899a001a2c3ac3e16c5913088639ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0673d3b2e350bd29f7abed3b8976fc1d5e39cb6fe18ffd3d423c39ece983efc3",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/AddChar/Variantf4e27d07de1ab28b6b851dfbc3c0f9a057899a001a2c3ac3e16c5913088639ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:99adcc7d-af4a-6f9f-5217-171152437c2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 369–369.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] lemma inv_apply (ψ : AddChar A M) (a : A) : ψ⁻¹ a = ψ (-a) := rfl
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/AddChar/Variantf4e27d07de1ab28b6b851dfbc3c0f9a057899a001a2c3ac3e16c5913088639ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/AddChar/Variantf4e27d07de1ab28b6b851dfbc3c0f9a057899a001a2c3ac3e16c5913088639ce.lean#L369).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad4d004cb36738df660fd19a9e51120848ef6c50` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
