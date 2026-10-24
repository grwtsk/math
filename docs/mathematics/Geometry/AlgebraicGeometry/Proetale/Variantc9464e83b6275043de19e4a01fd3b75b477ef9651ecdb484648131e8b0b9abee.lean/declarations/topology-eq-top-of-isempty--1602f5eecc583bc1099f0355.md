# topology_eq_top_of_isEmpty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "db285a707da165c2056821cf895e473f519c8f5f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 184,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c9/c9464e83b6275043de19e4a01fd3b75b477ef9651ecdb484648131e8b0b9abee.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6e056324-ddb9-3692-7926-30436df917e9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:62f6fae2-3cdb-df0e-67be-1e1c7780567d",
  "kind": "lemma",
  "lexical_name": "topology_eq_top_of_isEmpty",
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
  "slug": "topology-eq-top-of-isempty--1602f5eecc583bc1099f0355",
  "source": {
    "blob": "db285a707da165c2056821cf895e473f519c8f5f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 184,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Proetale/Variantc9464e83b6275043de19e4a01fd3b75b477ef9651ecdb484648131e8b0b9abee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1602f5eecc583bc1099f03553ea5b4521cc0b5101ea0654f8cd064d0bbb349b5",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Proetale/Variantc9464e83b6275043de19e4a01fd3b75b477ef9651ecdb484648131e8b0b9abee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:62f6fae2-3cdb-df0e-67be-1e1c7780567d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma topology_eq_top_of_isEmpty [IsEmpty S] : topology S = ⊤ := by
  rw [GrothendieckTopology.eq_top_iff]
  intro X
  have : IsEmpty X.left := X.hom.base.1.1.isEmpty (β := S)
  exact bot_mem_topology _

end ProEt

end AlgebraicGeometry.Scheme
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Proetale/Variantc9464e83b6275043de19e4a01fd3b75b477ef9651ecdb484648131e8b0b9abee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Proetale/Variantc9464e83b6275043de19e4a01fd3b75b477ef9651ecdb484648131e8b0b9abee.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db285a707da165c2056821cf895e473f519c8f5f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
