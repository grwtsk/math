# FiniteRelaxationOperator.markovRowMass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e78c4092dec075731ac434e60661ffedd1310e3c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 124,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/97/979ec9a20422044ba0497c0a66c00f45aa3ece3e5da93eb7f4cb50cc58ec49fd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:64825a72-90d0-61aa-6f1e-75277712e678",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7becd2db-f52f-7bca-a92c-8714ed068ebb",
  "kind": "theorem",
  "lexical_name": "FiniteRelaxationOperator.markovRowMass",
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
  "slug": "finiterelaxationoperator-markovrowmass--5906bff2ce8b0f86b514ae4a",
  "source": {
    "blob": "e78c4092dec075731ac434e60661ffedd1310e3c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 124,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Relaxation/Variant979ec9a20422044ba0497c0a66c00f45aa3ece3e5da93eb7f4cb50cc58ec49fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5906bff2ce8b0f86b514ae4ae1708bdba40a186bb8b1bd58db00a7d358b1a436",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/Relaxation/Variant979ec9a20422044ba0497c0a66c00f45aa3ece3e5da93eb7f4cb50cc58ec49fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7becd2db-f52f-7bca-a92c-8714ed068ebb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem FiniteRelaxationOperator.markovRowMass
    (R : FiniteRelaxationOperator) :
    WalshFourier.markovStayNumerator R.dimension R.epsilon +
        R.dimension * WalshFourier.markovEdgeNumerator R.dimension R.epsilon =
      R.epsilon.denominator :=
  WalshFourier.markov_rowMass_numerator
    R.dimension R.epsilon R.markovTransition

end WalshFourier

end Boolean.Cube
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/Relaxation/Variant979ec9a20422044ba0497c0a66c00f45aa3ece3e5da93eb7f4cb50cc58ec49fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Relaxation/Variant979ec9a20422044ba0497c0a66c00f45aa3ece3e5da93eb7f4cb50cc58ec49fd.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e78c4092dec075731ac434e60661ffedd1310e3c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
