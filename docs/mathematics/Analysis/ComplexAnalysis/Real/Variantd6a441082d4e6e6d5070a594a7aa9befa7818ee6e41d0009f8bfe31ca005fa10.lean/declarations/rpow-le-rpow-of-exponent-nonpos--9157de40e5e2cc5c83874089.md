# rpow_le_rpow_of_exponent_nonpos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:db6b34d2-45fb-db32-ce0f-cf7e370cf813",
  "kind": "theorem",
  "lexical_name": "rpow_le_rpow_of_exponent_nonpos",
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
  "slug": "rpow-le-rpow-of-exponent-nonpos--9157de40e5e2cc5c83874089",
  "source": {
    "blob": "e04d4237764c32cf42ff2599d709e7ea11b014b2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 525,
    "line": 515,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Real/Variantd6a441082d4e6e6d5070a594a7aa9befa7818ee6e41d0009f8bfe31ca005fa10.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9157de40e5e2cc5c83874089556a768c1b6baec890cea8e21773a0b3012f4299",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Real/Variantd6a441082d4e6e6d5070a594a7aa9befa7818ee6e41d0009f8bfe31ca005fa10.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db6b34d2-45fb-db32-ce0f-cf7e370cf813`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 515–525.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rpow_le_rpow_of_exponent_nonpos {x y : ℝ} (hy : 0 < y) (hxy : y ≤ x) (hz : z ≤ 0) :
    x ^ z ≤ y ^ z := by
  rcases ne_or_eq z 0 with hz_zero | rfl
  case inl =>
    rcases ne_or_eq x y with hxy' | rfl
    case inl =>
      exact le_of_lt <| rpow_lt_rpow_of_exponent_neg hy (Ne.lt_of_le (id (Ne.symm hxy')) hxy)
        (Ne.lt_of_le hz_zero hz)
    case inr => simp
  case inr => simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Real/Variantd6a441082d4e6e6d5070a594a7aa9befa7818ee6e41d0009f8bfe31ca005fa10.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Real/Variantd6a441082d4e6e6d5070a594a7aa9befa7818ee6e41d0009f8bfe31ca005fa10.lean#L515).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e04d4237764c32cf42ff2599d709e7ea11b014b2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
