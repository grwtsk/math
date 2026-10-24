# monomial_sum_index

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2996372b-6066-ecdb-d55b-8a0ebe9e204b",
  "kind": "theorem",
  "lexical_name": "monomial_sum_index",
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
  "slug": "monomial-sum-index--8c682ebe1d939bb016e89a55",
  "source": {
    "blob": "0b77a216da2c1603a6cdfad58ad88182643ff4e7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 340,
    "line": 337,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Varianta74d69a38ef13e4ca216819f5ee15c43a0ab77859b0c4c22af7610026f6bcc60.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c682ebe1d939bb016e89a5508e783f68c4c692e40002129ccd313b7dc7de73b",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/Basic/Varianta74d69a38ef13e4ca216819f5ee15c43a0ab77859b0c4c22af7610026f6bcc60.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2996372b-6066-ecdb-d55b-8a0ebe9e204b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 337–340.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem monomial_sum_index {α : Type*} (s : Finset α) (f : α → σ →₀ ℕ) (a : R) :
    monomial (∑ i ∈ s, f i) a = C a * ∏ i ∈ s, monomial (f i) 1 := by
  rw [← monomial_sum_one, C_mul', ← (monomial _).map_smul, smul_eq_mul, mul_one]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/Basic/Varianta74d69a38ef13e4ca216819f5ee15c43a0ab77859b0c4c22af7610026f6bcc60.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/Basic/Varianta74d69a38ef13e4ca216819f5ee15c43a0ab77859b0c4c22af7610026f6bcc60.lean#L337).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b77a216da2c1603a6cdfad58ad88182643ff4e7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
