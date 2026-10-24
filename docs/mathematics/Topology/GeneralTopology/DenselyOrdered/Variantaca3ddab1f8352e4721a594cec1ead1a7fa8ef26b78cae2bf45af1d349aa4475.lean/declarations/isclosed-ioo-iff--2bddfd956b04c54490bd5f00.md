# isClosed_Ioo_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:36f38490-7828-0939-e3e3-06280631d38b",
  "kind": "theorem",
  "lexical_name": "isClosed_Ioo_iff",
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
  "slug": "isclosed-ioo-iff--2bddfd956b04c54490bd5f00",
  "source": {
    "blob": "8853c94337063b4122b45b773ba5a70050b23fe5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 419,
    "line": 413,
    "path": "GRWTSK/Topology/GeneralTopology/DenselyOrdered/Variantaca3ddab1f8352e4721a594cec1ead1a7fa8ef26b78cae2bf45af1d349aa4475.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2bddfd956b04c54490bd5f008c11bdc1def5175720f38f3b26a51b597e433b95",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DenselyOrdered/Variantaca3ddab1f8352e4721a594cec1ead1a7fa8ef26b78cae2bf45af1d349aa4475.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:36f38490-7828-0939-e3e3-06280631d38b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 413–419.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isClosed_Ioo_iff {a b : α} : IsClosed (Set.Ioo a b) ↔ b ≤ a := by
  refine ⟨fun h => le_of_not_lt fun hab => ?_, by simp_all⟩
  have := h.closure_eq
  rw [closure_Ioo hab.ne, Icc_eq_Ioo_same_iff] at this
  exact this hab.le

end DenselyOrdered
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DenselyOrdered/Variantaca3ddab1f8352e4721a594cec1ead1a7fa8ef26b78cae2bf45af1d349aa4475.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DenselyOrdered/Variantaca3ddab1f8352e4721a594cec1ead1a7fa8ef26b78cae2bf45af1d349aa4475.lean#L413).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8853c94337063b4122b45b773ba5a70050b23fe5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
