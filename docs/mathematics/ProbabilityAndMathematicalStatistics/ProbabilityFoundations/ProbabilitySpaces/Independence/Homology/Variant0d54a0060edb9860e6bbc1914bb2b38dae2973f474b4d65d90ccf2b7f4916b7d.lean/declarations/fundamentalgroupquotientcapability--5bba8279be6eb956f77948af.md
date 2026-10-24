# FundamentalGroupQuotientCapability

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7acda8dc40411d270e0594d2fd6c1b764629b98649b306a1924717ec5957f1c1",
  "kind": "structure",
  "lexical_name": "FundamentalGroupQuotientCapability",
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
  "slug": "fundamentalgroupquotientcapability--5bba8279be6eb956f77948af",
  "source": {
    "blob": "254e789d0e653b48641b04e939635223a7a6abe9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 170,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Homology/Variant0d54a0060edb9860e6bbc1914bb2b38dae2973f474b4d65d90ccf2b7f4916b7d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5bba8279be6eb956f77948af42b735f38c8ea6b4ea4bfee94ddeeef30ecd9e30",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Homology/Variant0d54a0060edb9860e6bbc1914bb2b38dae2973f474b4d65d90ccf2b7f4916b7d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7acda8dc40411d270e0594d2fd6c1b764629b98649b306a1924717ec5957f1c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FundamentalGroupQuotientCapability
    (T : OrientedKnotFillingTheory.{u}) where
  ExteriorGroup : T.Knot → Type v
  FillingGroup : T.ClosedManifold → Type v
  PeripheralWord : T.Knot → Type v
  BasepointPath : T.Knot → Type v
  relationAt : ∀ {K : T.Knot},
    BasepointPath K → T.Slope K → PeripheralWord K
  NormalClosure : ∀ {K : T.Knot},
    ExteriorGroup K → PeripheralWord K → Type v
  QuotientPresentation : ∀ {K : T.Knot},
    ExteriorGroup K → Type v → Type v
  exteriorGroup : ∀ K, ExteriorGroup K
  quotientByPeripheralRelation : ∀ {K : T.Knot},
    BasepointPath K → T.Slope K → Type v
  quotient_definition : ∀ {K : T.Knot} (path : BasepointPath K)
      (r : T.Slope K),
    quotientByPeripheralRelation path r =
      QuotientPresentation (exteriorGroup K)
        (NormalClosure (exteriorGroup K) (relationAt path r))
  FillingGroupEquivalent : Type v → Type v → Prop
  filling_presentation : ∀ {K : T.Knot} (path : BasepointPath K)
      (r : T.Slope K),
    FillingGroupEquivalent (FillingGroup (T.Filling K r))
      (quotientByPeripheralRelation path r)
  NormalClosuresEqual : Type v → Type v → Prop
  ConjugatePeripheralWords : ∀ {K : T.Knot},
    PeripheralWord K → PeripheralWord K → Prop
  basepoint_change_conjugates : ∀ {K : T.Knot}
      (left right : BasepointPath K) (r : T.Slope K),
    ConjugatePeripheralWords (relationAt left r) (relationAt right r)
  conjugate_relations_have_equal_normal_closure : ∀ {K : T.Knot}
      {left right : PeripheralWord K},
    ConjugatePeripheralWords left right →
    NormalClosuresEqual
      (NormalClosure (exteriorGroup K) left)
      (NormalClosure (exteriorGroup K) right)

namespace FundamentalGroupQuotientCapability

variable {T : OrientedKnotFillingTheory.{u}}

/-- The filling group is presented by killing the retained peripheral relation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Homology/Variant0d54a0060edb9860e6bbc1914bb2b38dae2973f474b4d65d90ccf2b7f4916b7d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Independence/Homology/Variant0d54a0060edb9860e6bbc1914bb2b38dae2973f474b4d65d90ccf2b7f4916b7d.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `254e789d0e653b48641b04e939635223a7a6abe9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
