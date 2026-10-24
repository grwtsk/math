# ComparatorGatedDyadicFrequencyIdentity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:38c6a7be4dc2efdd708fef9e18e47e600f31f16fdedc3df5f89ec8d9b93d60ad",
  "kind": "structure",
  "lexical_name": "ComparatorGatedDyadicFrequencyIdentity",
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
  "slug": "comparatorgateddyadicfrequencyidentity--f4620c8cd0927cb582150eae",
  "source": {
    "blob": "b0da7748fa4f0b76fd2f9d29ee6c60eb7b696f84",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 131,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/ComparatorGatedDyadicFrequencyPFF/Variant5d7524c8534b01b819f8e66a9b9f03f258ac5d1e04864cc2a45b7bc093fa49f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f4620c8cd0927cb582150eae11cb22bf0ac7b56be77909dfa6dc2d91818fb072",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/ComparatorGatedDyadicFrequencyPFF/Variant5d7524c8534b01b819f8e66a9b9f03f258ac5d1e04864cc2a45b7bc093fa49f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:38c6a7be4dc2efdd708fef9e18e47e600f31f16fdedc3df5f89ec8d9b93d60ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ComparatorGatedDyadicFrequencyIdentity
    (Target : Type u)
    (C : RuleComparator Target) where
  expr : FrequencyExpression Target
  uniformIdentity :
    ∀ w : BinaryWord,
      C.Accepts (expr.cylinder w) (expr.dyadic (fairDyadicMass w))
  splitIdentity :
    ∀ w : BinaryWord,
      C.Accepts
        (expr.cylinder w)
        (expr.add
          (expr.cylinder (w ++ [false]))
          (expr.cylinder (w ++ [true])))

namespace ComparatorGatedDyadicFrequencyIdentity

variable {Target : Type u}
variable {C : RuleComparator Target}

/-- Accepted uniform identities become equalities through comparator soundness. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/ComparatorGatedDyadicFrequencyPFF/Variant5d7524c8534b01b819f8e66a9b9f03f258ac5d1e04864cc2a45b7bc093fa49f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/ComparatorGatedDyadicFrequencyPFF/Variant5d7524c8534b01b819f8e66a9b9f03f258ac5d1e04864cc2a45b7bc093fa49f3.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0da7748fa4f0b76fd2f9d29ee6c60eb7b696f84` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
