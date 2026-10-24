# genLTOne_zpowers_eq_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:df3f7c88-e307-8d62-457f-af890ae9a306",
  "kind": "lemma",
  "lexical_name": "genLTOne_zpowers_eq_top",
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
  "slug": "genltone-zpowers-eq-top--876dbb160844d0f38ca29ffe",
  "source": {
    "blob": "bb80831434b8cbe21d4b6b04c093397cdabe0928",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 59,
    "path": "GRWTSK/Algebra/GroupTheory/Cyclic/Variantf618d1ff1b7276f9d83aec1aea379fac75f5b97901fc74cbe4c2944a1588c6f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:876dbb160844d0f38ca29ffe9c7a8c4ef0916eda5e22dcd27977a10a7aba8e0a",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Cyclic/Variantf618d1ff1b7276f9d83aec1aea379fac75f5b97901fc74cbe4c2944a1588c6f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:df3f7c88-e307-8d62-457f-af890ae9a306`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma genLTOne_zpowers_eq_top (H : Subgroup G) [Nontrivial H] : Subgroup.zpowers H.genLTOne = H :=
  H.exists_generator_lt_one.choose_spec.2

end Subgroup

variable (G) [Nontrivial G]

/-- Given a cyclic linearly ordered commutative group, this is a generator that is `< 1`. -/
@[to_additive negGen "Given an additive cyclic linearly ordered commutative group, this is a
negative generator of it."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Cyclic/Variantf618d1ff1b7276f9d83aec1aea379fac75f5b97901fc74cbe4c2944a1588c6f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Cyclic/Variantf618d1ff1b7276f9d83aec1aea379fac75f5b97901fc74cbe4c2944a1588c6f3.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb80831434b8cbe21d4b6b04c093397cdabe0928` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
