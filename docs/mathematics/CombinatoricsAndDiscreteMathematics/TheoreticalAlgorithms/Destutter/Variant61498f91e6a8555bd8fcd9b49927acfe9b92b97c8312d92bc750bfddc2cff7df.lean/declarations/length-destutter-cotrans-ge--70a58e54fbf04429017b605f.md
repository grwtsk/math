# length_destutter'_cotrans_ge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:daf18aab-d814-2196-a2af-c5606aad292f",
  "kind": "theorem",
  "lexical_name": "length_destutter'_cotrans_ge",
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
  "slug": "length-destutter-cotrans-ge--70a58e54fbf04429017b605f",
  "source": {
    "blob": "facaf115db116f3a7685a840ea1d2c4d769dded5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 184,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Destutter/Variant61498f91e6a8555bd8fcd9b49927acfe9b92b97c8312d92bc750bfddc2cff7df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70a58e54fbf04429017b605f26850db99da67bf4e87df40205eb4dd7057cdf17",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Destutter/Variant61498f91e6a8555bd8fcd9b49927acfe9b92b97c8312d92bc750bfddc2cff7df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:daf18aab-d814-2196-a2af-c5606aad292f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem length_destutter'_cotrans_ge [i : IsTrans α Rᶜ] :
    ∀ {a} {l : List α}, ¬R b a → (l.destutter' R b).length ≤ (l.destutter' R a).length
  | a, [], hba => by simp
  | a, c :: l, hba => by
    by_cases hbc : R b c
    case pos =>
      have hac : ¬Rᶜ a c := (mt (_root_.trans hba)) (not_not.2 hbc)
      simp_rw [destutter', if_pos (not_not.1 hac), if_pos hbc, length_cons, le_refl]
    case neg =>
      simp only [destutter', if_neg hbc]
      by_cases hac : R a c
      case pos =>
        simp only [if_pos hac, length_cons]
        exact Nat.le_succ_of_le (length_destutter'_cotrans_ge hbc)
      case neg =>
        simp only [if_neg hac]
        exact length_destutter'_cotrans_ge hba

/-- `List.destutter'` on a relation like `≠`, whose negation is an equivalence, gives the same
length if the first elements are not related. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Destutter/Variant61498f91e6a8555bd8fcd9b49927acfe9b92b97c8312d92bc750bfddc2cff7df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Destutter/Variant61498f91e6a8555bd8fcd9b49927acfe9b92b97c8312d92bc750bfddc2cff7df.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `facaf115db116f3a7685a840ea1d2c4d769dded5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
