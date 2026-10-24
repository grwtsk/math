# pole_radical_action_coefficients

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "db268f85f1f613fa368117b5982239e216f876b4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 399,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/87/87c5b33d455d88bec8187ef711990a777dd0e0a548168a775fac4e53e94fe69f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7a4ec1b0-e8fd-4795-29a9-6ae950aba6a3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:389c9f53-ae88-226b-4300-11b2112fee99",
  "kind": "theorem",
  "lexical_name": "pole_radical_action_coefficients",
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
  "slug": "pole-radical-action-coefficients--3dda8569873865e2b3c83f28",
  "source": {
    "blob": "db268f85f1f613fa368117b5982239e216f876b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 409,
    "line": 399,
    "path": "GRWTSK/Algebra/RingTheory/PoleAlgebra/Variant87c5b33d455d88bec8187ef711990a777dd0e0a548168a775fac4e53e94fe69f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3dda8569873865e2b3c83f28989877089270c6285673d3cc7356fe526a678348",
  "verification": {
    "reference": "docs/verification/Algebra/RingTheory/PoleAlgebra/Variant87c5b33d455d88bec8187ef711990a777dd0e0a548168a775fac4e53e94fe69f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:389c9f53-ae88-226b-4300-11b2112fee99`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 399–409.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pole_radical_action_coefficients (z : PoleOperatorAlgebra) :
    (((poleDualEquiv (poleInfinitesimal * z)).1.fst,
        (poleDualEquiv (poleInfinitesimal * z)).1.snd),
      ((poleDualEquiv (poleInfinitesimal * z)).2.fst,
        (poleDualEquiv (poleInfinitesimal * z)).2.snd)) =
      ((0, (poleDualEquiv z).1.fst), (0, -(poleDualEquiv z).2.fst)) := by
  rw [map_mul, pole_dual_equiv_infinitesimal]
  simp

/-- Every algebra representation of the quotient annihilates its defining polynomial.
Thus arbitrary source tests with a nonzero `P(D)` image require a different operator domain. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/RingTheory/PoleAlgebra/Variant87c5b33d455d88bec8187ef711990a777dd0e0a548168a775fac4e53e94fe69f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingTheory/PoleAlgebra/Variant87c5b33d455d88bec8187ef711990a777dd0e0a548168a775fac4e53e94fe69f.lean#L399).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db268f85f1f613fa368117b5982239e216f876b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
