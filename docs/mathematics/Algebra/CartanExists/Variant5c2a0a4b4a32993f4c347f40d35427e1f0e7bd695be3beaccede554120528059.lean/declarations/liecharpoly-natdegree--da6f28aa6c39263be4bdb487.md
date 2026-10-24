# lieCharpoly_natDegree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:af22be88-d0f8-0538-8d95-79598447a57c",
  "kind": "lemma",
  "lexical_name": "lieCharpoly_natDegree",
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
  "slug": "liecharpoly-natdegree--da6f28aa6c39263be4bdb487",
  "source": {
    "blob": "5007f7bbfaa9f73d26a58c514882ae26079ee69e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 94,
    "path": "GRWTSK/Algebra/CartanExists/Variant5c2a0a4b4a32993f4c347f40d35427e1f0e7bd695be3beaccede554120528059.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:da6f28aa6c39263be4bdb487d7d040810974f0646f32cc3672eef2a1f8e63446",
  "verification": {
    "reference": "docs/verification/Algebra/CartanExists/Variant5c2a0a4b4a32993f4c347f40d35427e1f0e7bd695be3beaccede554120528059.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:af22be88-d0f8-0538-8d95-79598447a57c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma lieCharpoly_natDegree [Nontrivial R] : (lieCharpoly R M x y).natDegree = finrank R M := by
  rw [lieCharpoly, (polyCharpoly_monic _ _).natDegree_map, polyCharpoly_natDegree]

variable {R} in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/CartanExists/Variant5c2a0a4b4a32993f4c347f40d35427e1f0e7bd695be3beaccede554120528059.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CartanExists/Variant5c2a0a4b4a32993f4c347f40d35427e1f0e7bd695be3beaccede554120528059.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5007f7bbfaa9f73d26a58c514882ae26079ee69e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
