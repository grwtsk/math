# harmonicPartial_le_finiteHarmonicEulerProduct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:02968fff-8c95-8459-9e06-cad392992eec",
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
  "slug": "harmonicpartial-le-finiteharmoniceulerproduct--03a3110f8d9161422c0037a1",
  "source": {
    "blob": "7f953d9761bf00ed90f742ff7be64dd956fbd0b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 48,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EulerPrimeReciprocalDivergence/Variantdc61b474bca87d6d9df892b8b4adbba20de863273fe6e0410cc1d1e6e43c9503.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:03a3110f8d9161422c0037a1f5c515c23556f0c13e0b2ebde362dd067b3a6db2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/EulerPrimeReciprocalDivergence/Variantdc61b474bca87d6d9df892b8b4adbba20de863273fe6e0410cc1d1e6e43c9503.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:02968fff-8c95-8459-9e06-cad392992eec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–62.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/EulerPrimeReciprocalDivergence/Variantdc61b474bca87d6d9df892b8b4adbba20de863273fe6e0410cc1d1e6e43c9503.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/EulerPrimeReciprocalDivergence/Variantdc61b474bca87d6d9df892b8b4adbba20de863273fe6e0410cc1d1e6e43c9503.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f953d9761bf00ed90f742ff7be64dd956fbd0b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
