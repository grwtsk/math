# harmonicPartial_le_finiteHarmonicEulerProduct

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
      "line": 40,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e4/e4e1bca2bc7db470972126e21dc16394afa42174bdf06ee4356e3837266d79d3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b4952f95-34c7-1778-c358-6ca04f5ee0a6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:40cf1fe2-81e4-15b6-a592-1e2ebfce8a88",
  "kind": "theorem",
  "lexical_name": "harmonicPartial_le_finiteHarmonicEulerProduct",
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
  "slug": "harmonicpartial-le-finiteharmoniceulerproduct--4b1492fe3f88cc655ce7f236",
  "source": {
    "blob": "3fa2f7f6e0ba752c2c3aa555662e027b22870e15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 40,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EulerPrimeReciprocalDivergence/Variante4e1bca2bc7db470972126e21dc16394afa42174bdf06ee4356e3837266d79d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b1492fe3f88cc655ce7f236ec23335e0324b66cf65ade1270211425bc37d6ce",
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

Occurrence: `result:40cf1fe2-81e4-15b6-a592-1e2ebfce8a88`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem harmonicPartial_le_finiteHarmonicEulerProduct
    (N : Nat) :
    harmonicPartial N ≤ finiteHarmonicEulerProduct N := by
  have h := zetaPartialReal_le_zetaEulerApproxReal 1 N
  have hleft :
      harmonicPartial N = zetaPartialReal 1 N := by
    unfold harmonicPartial zetaPartialReal
    refine Finset.sum_congr rfl ?_
    intro n hn
    exact (posWeightReal_one_eq_inv_nat (lt_of_lt_of_le Nat.zero_lt_one (Finset.mem_Icc.mp hn).1)).symm
  have hright :
      finiteHarmonicEulerProduct N = zetaEulerApproxReal 1 N := rfl
  simpa [hleft, hright]
    using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/EulerPrimeReciprocalDivergence/Variante4e1bca2bc7db470972126e21dc16394afa42174bdf06ee4356e3837266d79d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/EulerPrimeReciprocalDivergence/Variante4e1bca2bc7db470972126e21dc16394afa42174bdf06ee4356e3837266d79d3.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3fa2f7f6e0ba752c2c3aa555662e027b22870e15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
