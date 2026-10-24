# existsUnique_true_in_column

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:16bc73b1-d340-deaf-f41b-d5fc9c10fd33",
  "kind": "theorem",
  "lexical_name": "existsUnique_true_in_column",
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
  "slug": "existsunique-true-in-column--020ced08f8f7ba11d9384ea4",
  "source": {
    "blob": "adec12146ff8387d3d1e8458b26ba8d615909ece",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 73,
    "path": "GRWTSK/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant3fe87eee19f8fad0/CertifiedPermutationProjection.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:020ced08f8f7ba11d9384ea4af457bc06b538a2792e6f2efa58382a03a12cdeb",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant3fe87eee19f8fad0/CertifiedPermutationProjection.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:16bc73b1-d340-deaf-f41b-d5fc9c10fd33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem existsUnique_true_in_column (j : Fin P.width) :
    ∃! i, P.actionMatrix i j = true := by
  let i := P.encode (P.source.act (P.encode.symm j))
  refine ⟨i, (P.action_spec i j).mpr rfl, ?_⟩
  intro k hk
  exact ((P.action_spec k j).mp hk).symm

/-- Involutivity supplies the unique preimage selected in every row. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant3fe87eee19f8fad0/CertifiedPermutationProjection.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FiniteBooleanStructure/Variant3fe87eee19f8fad0/CertifiedPermutationProjection.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `adec12146ff8387d3d1e8458b26ba8d615909ece` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
