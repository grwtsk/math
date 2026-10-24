# finiteHarmonicEulerProduct_expands

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3fa2f7f6e0ba752c2c3aa555662e027b22870e15",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 22,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e4/e4e1bca2bc7db470972126e21dc16394afa42174bdf06ee4356e3837266d79d3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0d8a9da9-76c0-9f4d-3952-40c8c306cbb8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:20723acd-f92a-f59b-cfc3-e6e912e0e4bd",
  "kind": "theorem",
  "lexical_name": "finiteHarmonicEulerProduct_expands",
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
  "slug": "finiteharmoniceulerproduct-expands--319d6debd4f359bc4cdb7f1d",
  "source": {
    "blob": "3fa2f7f6e0ba752c2c3aa555662e027b22870e15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 22,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EulerPrimeReciprocalDivergence/Variante4e1bca2bc7db470972126e21dc16394afa42174bdf06ee4356e3837266d79d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:319d6debd4f359bc4cdb7f1dfca71ed3071c5f87e11e0a7ab5df99e83d9b663b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/EulerPrimeReciprocalDivergence/Variante4e1bca2bc7db470972126e21dc16394afa42174bdf06ee4356e3837266d79d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:20723acd-f92a-f59b-cfc3-e6e912e0e4bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finiteHarmonicEulerProduct_expands
    (N : Nat) :
    finiteHarmonicEulerProduct N =
      ∑ n ∈ boundedSmoothNumbers (primesUpTo N) N,
        posWeightReal 1 n := by
  unfold finiteHarmonicEulerProduct
  exact
    finiteZetaEulerProductReal_expands_boundedSmoothNumbers
      (primesUpTo N) N 1
      (by intro p hp; exact primesUpTo_prime hp)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/EulerPrimeReciprocalDivergence/Variante4e1bca2bc7db470972126e21dc16394afa42174bdf06ee4356e3837266d79d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/EulerPrimeReciprocalDivergence/Variante4e1bca2bc7db470972126e21dc16394afa42174bdf06ee4356e3837266d79d3.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3fa2f7f6e0ba752c2c3aa555662e027b22870e15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
