# torsion_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6b00ade7827985a30f9483f185a56eb58681465a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 266,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c2/c22daae8100aaceb0dbd2510d3c228ed57c2e8f425042ea74a2d012686d6ed28.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c483f51c-daed-0d31-7dbf-a42eae8843a6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c944df82-1cd5-4d04-33cf-d764a8973350",
  "kind": "theorem",
  "lexical_name": "torsion_eq_top",
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
  "slug": "torsion-eq-top--56192570a00ef5d2bfe5b8c3",
  "source": {
    "blob": "6b00ade7827985a30f9483f185a56eb58681465a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 271,
    "line": 266,
    "path": "GRWTSK/Algebra/GroupTheory/Torsion/Variantc22daae8100aaceb0dbd2510d3c228ed57c2e8f425042ea74a2d012686d6ed28.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:56192570a00ef5d2bfe5b8c34056432a259f366062be29c4d0e9db4eb9aa71ad",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Torsion/Variantc22daae8100aaceb0dbd2510d3c228ed57c2e8f425042ea74a2d012686d6ed28.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c944df82-1cd5-4d04-33cf-d764a8973350`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 266–271.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem torsion_eq_top (tG : IsTorsion G) : torsion G = ⊤ := by ext; tauto
#align monoid.is_torsion.torsion_eq_top Monoid.IsTorsion.torsion_eq_top
#align add_monoid.is_torsion.torsion_eq_top AddMonoid.IsTorsion.torsion_eq_top

/-- A torsion monoid is isomorphic to its torsion submonoid. -/
@[to_additive "An additive torsion monoid is isomorphic to its torsion submonoid."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Torsion/Variantc22daae8100aaceb0dbd2510d3c228ed57c2e8f425042ea74a2d012686d6ed28.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Torsion/Variantc22daae8100aaceb0dbd2510d3c228ed57c2e8f425042ea74a2d012686d6ed28.lean#L266).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b00ade7827985a30f9483f185a56eb58681465a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
