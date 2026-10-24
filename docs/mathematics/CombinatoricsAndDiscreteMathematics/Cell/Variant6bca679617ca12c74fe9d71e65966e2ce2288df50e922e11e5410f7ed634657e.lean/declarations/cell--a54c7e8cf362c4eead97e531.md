# Cell

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ce2c5d16761edfa0a9dc22d50e508614f35ba47d52ee41e22879be1096470ef1",
  "kind": "structure",
  "lexical_name": "Cell",
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
  "slug": "cell--a54c7e8cf362c4eead97e531",
  "source": {
    "blob": "a03f389e467532715a4b29f2001b02bc4443bb73",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 49,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Cell/Variant6bca679617ca12c74fe9d71e65966e2ce2288df50e922e11e5410f7ed634657e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a54c7e8cf362c4eead97e5318c03a4c9e6daefbc3be9251f9f15007fc5353e75",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Cell/Variant6bca679617ca12c74fe9d71e65966e2ce2288df50e922e11e5410f7ed634657e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ce2c5d16761edfa0a9dc22d50e508614f35ba47d52ee41e22879be1096470ef1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Cell (concept : Record) where
  Axis : Type
  instFintypeAxis : Fintype Axis
  instDecidableEqAxis : DecidableEq Axis

  /-- Embedding of the mandatory core axes into the concept-specific axis type. -/
  coreAxis : CoreAxis → Axis
  coreAxis_injective : Function.Injective coreAxis

  required : Finset Axis
  bits : Axis → Bool
  certificate : (axis : Axis) → AxisEvidence concept Axis axis

  definitionDigest : Digest
  boundaryDigest : Digest
  incidenceDigest : Digest
  authorityDigest : Digest
  provenanceDigest : Digest

  definitionDigest_eq : definitionDigest = concept.definitionDigest
  boundaryDigest_eq : boundaryDigest = concept.boundaryDigest
  incidenceDigest_eq : incidenceDigest = concept.incidenceDigest
  authorityDigest_eq : authorityDigest = concept.authorityDigest
  provenanceDigest_eq : provenanceDigest = concept.provenanceDigest

  core_required : ∀ axis, coreAxis axis ∈ required

attribute [instance] Cell.instFintypeAxis Cell.instDecidableEqAxis

namespace Cell

/-- Every required obligation has been discharged. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Cell/Variant6bca679617ca12c74fe9d71e65966e2ce2288df50e922e11e5410f7ed634657e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Cell/Variant6bca679617ca12c74fe9d71e65966e2ce2288df50e922e11e5410f7ed634657e.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a03f389e467532715a4b29f2001b02bc4443bb73` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
