# ordConnected_iff_upperClosure_inter_lowerClosure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "af3a86ead9675b99b63d6f847cd1550e457ab80c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1465,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/33/33967a32505c700884f1e089f27e17a8218fdbc54d16f6394ab6f4298333c552.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f65a5fb3-e496-4459-c0fc-f827e5ea1589",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c9d817bd-7d81-4d46-f448-43e4219e9d3b",
  "kind": "theorem",
  "lexical_name": "ordConnected_iff_upperClosure_inter_lowerClosure",
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
  "slug": "ordconnected-iff-upperclosure-inter-lowerclosure--e4eda924d799b24b7e1f8614",
  "source": {
    "blob": "af3a86ead9675b99b63d6f847cd1550e457ab80c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1472,
    "line": 1465,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant33967a32505c700884f1e089f27e17a8218fdbc54d16f6394ab6f4298333c552.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e4eda924d799b24b7e1f8614be69ee859ee166f4a9883acfe91d198672faa1cd",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant33967a32505c700884f1e089f27e17a8218fdbc54d16f6394ab6f4298333c552.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c9d817bd-7d81-4d46-f448-43e4219e9d3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1465–1472.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ordConnected_iff_upperClosure_inter_lowerClosure :
    s.OrdConnected ↔ ↑(upperClosure s) ∩ ↑(lowerClosure s) = s := by
  refine' ⟨Set.OrdConnected.upperClosure_inter_lowerClosure, fun h => _⟩
  rw [← h]
  exact (UpperSet.upper _).ordConnected.inter (LowerSet.lower _).ordConnected
#align ord_connected_iff_upper_closure_inter_lower_closure ordConnected_iff_upperClosure_inter_lowerClosure

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant33967a32505c700884f1e089f27e17a8218fdbc54d16f6394ab6f4298333c552.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Basic/Variant33967a32505c700884f1e089f27e17a8218fdbc54d16f6394ab6f4298333c552.lean#L1465).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `af3a86ead9675b99b63d6f847cd1550e457ab80c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
