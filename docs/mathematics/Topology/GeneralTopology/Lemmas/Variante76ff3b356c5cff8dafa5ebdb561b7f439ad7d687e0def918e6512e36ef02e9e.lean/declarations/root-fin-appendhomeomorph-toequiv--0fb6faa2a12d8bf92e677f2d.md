# _root_.Fin.appendHomeomorph_toEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6baab7e4c182041ffe730e81632aaec349057894",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 308,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e7/e76ff3b356c5cff8dafa5ebdb561b7f439ad7d687e0def918e6512e36ef02e9e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a816e64b-bb99-129b-4f41-b1fdad94c94f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ee95318b-aebb-c641-1459-79e47c4f7fdd",
  "kind": "theorem",
  "lexical_name": "_root_.Fin.appendHomeomorph_toEquiv",
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
  "slug": "root-fin-appendhomeomorph-toequiv--0fb6faa2a12d8bf92e677f2d",
  "source": {
    "blob": "6baab7e4c182041ffe730e81632aaec349057894",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 317,
    "line": 308,
    "path": "GRWTSK/Topology/GeneralTopology/Lemmas/Variante76ff3b356c5cff8dafa5ebdb561b7f439ad7d687e0def918e6512e36ef02e9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0fb6faa2a12d8bf92e677f2db5b17c49fb0459aae9a4999d6ac9783cf9f6cb14",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lemmas/Variante76ff3b356c5cff8dafa5ebdb561b7f439ad7d687e0def918e6512e36ef02e9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee95318b-aebb-c641-1459-79e47c4f7fdd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 308–317.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.Fin.appendHomeomorph_toEquiv (m n : ℕ) :
    (Fin.appendHomeomorph (X := X) m n).toEquiv = Fin.appendEquiv m n :=
  rfl

section Distrib

variable {ι : Type*} {X : ι → Type*} [∀ i, TopologicalSpace (X i)]

/-- `(Σ i, X i) × Y` is homeomorphic to `Σ i, (X i × Y)`. -/
@[simps! apply symm_apply toEquiv]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lemmas/Variante76ff3b356c5cff8dafa5ebdb561b7f439ad7d687e0def918e6512e36ef02e9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lemmas/Variante76ff3b356c5cff8dafa5ebdb561b7f439ad7d687e0def918e6512e36ef02e9e.lean#L308).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6baab7e4c182041ffe730e81632aaec349057894` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
