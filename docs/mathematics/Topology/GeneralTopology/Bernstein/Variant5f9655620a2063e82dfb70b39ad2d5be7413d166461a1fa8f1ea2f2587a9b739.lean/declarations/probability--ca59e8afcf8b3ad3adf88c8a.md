# probability

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "80e7503ea36b85c631a0b5dc32471b1d9b0882f4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 104,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5f/5f9655620a2063e82dfb70b39ad2d5be7413d166461a1fa8f1ea2f2587a9b739.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:93687b97-a99b-a199-49a4-cb7b96132bb7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e1b6482a-e079-3364-fce2-3bfea511c520",
  "kind": "theorem",
  "lexical_name": "probability",
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
  "slug": "probability--ca59e8afcf8b3ad3adf88c8a",
  "source": {
    "blob": "80e7503ea36b85c631a0b5dc32471b1d9b0882f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 104,
    "path": "GRWTSK/Topology/GeneralTopology/Bernstein/Variant5f9655620a2063e82dfb70b39ad2d5be7413d166461a1fa8f1ea2f2587a9b739.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ca59e8afcf8b3ad3adf88c8a07f35f7cf1fd8ec380a2695615cb6724bfc2b29c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Bernstein/Variant5f9655620a2063e82dfb70b39ad2d5be7413d166461a1fa8f1ea2f2587a9b739.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e1b6482a-e079-3364-fce2-3bfea511c520`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem probability (n : ℕ) (x : I) : (∑ k : Fin (n + 1), bernstein n k x) = 1 := by
  have := bernsteinPolynomial.sum ℝ n
  apply_fun fun p => Polynomial.aeval (x : ℝ) p at this
  simp? [map_sum, Finset.sum_range] at this says
    simp only [Finset.sum_range, map_sum, Polynomial.coe_aeval_eq_eval, Polynomial.eval_one] at this
  exact this

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Bernstein/Variant5f9655620a2063e82dfb70b39ad2d5be7413d166461a1fa8f1ea2f2587a9b739.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Bernstein/Variant5f9655620a2063e82dfb70b39ad2d5be7413d166461a1fa8f1ea2f2587a9b739.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80e7503ea36b85c631a0b5dc32471b1d9b0882f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
