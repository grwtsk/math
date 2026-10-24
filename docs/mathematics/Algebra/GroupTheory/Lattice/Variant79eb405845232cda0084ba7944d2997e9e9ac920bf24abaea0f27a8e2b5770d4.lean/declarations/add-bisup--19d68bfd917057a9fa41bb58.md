# add_biSup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:76b59403-beff-b2f8-ebe5-fe35dc7e40b0",
  "kind": "lemma",
  "lexical_name": "add_biSup",
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
  "slug": "add-bisup--19d68bfd917057a9fa41bb58",
  "source": {
    "blob": "1513287dae7b698eeeaef0c842127ccbedf3a269",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 227,
    "path": "GRWTSK/Algebra/GroupTheory/Lattice/Variant79eb405845232cda0084ba7944d2997e9e9ac920bf24abaea0f27a8e2b5770d4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:19d68bfd917057a9fa41bb5811fadc9a3ab1273c4241e34cc0c19e204286cbab",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Lattice/Variant79eb405845232cda0084ba7944d2997e9e9ac920bf24abaea0f27a8e2b5770d4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:76b59403-beff-b2f8-ebe5-fe35dc7e40b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma add_biSup {ι : Type*} {s : Set ι} (hs : s.Nonempty) (f : ι → ℕ∞) :
    a + ⨆ i ∈ s, f i = ⨆ i ∈ s, a + f i := add_biSup' hs _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Lattice/Variant79eb405845232cda0084ba7944d2997e9e9ac920bf24abaea0f27a8e2b5770d4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Lattice/Variant79eb405845232cda0084ba7944d2997e9e9ac920bf24abaea0f27a8e2b5770d4.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1513287dae7b698eeeaef0c842127ccbedf3a269` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
