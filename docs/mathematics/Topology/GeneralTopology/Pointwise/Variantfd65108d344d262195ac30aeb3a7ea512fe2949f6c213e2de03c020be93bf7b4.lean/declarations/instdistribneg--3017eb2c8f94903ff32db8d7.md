# instDistribNeg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:201eec7a8b45cca90260a13857211a971d3372f25ac0b4919d88253b6dfedb1f",
  "kind": "def",
  "lexical_name": "instDistribNeg",
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
  "slug": "instdistribneg--3017eb2c8f94903ff32db8d7",
  "source": {
    "blob": "f4606c09dc8cb8ebe3f8fae988111847aac8890a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 691,
    "line": 674,
    "path": "GRWTSK/Topology/GeneralTopology/Pointwise/Variantfd65108d344d262195ac30aeb3a7ea512fe2949f6c213e2de03c020be93bf7b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3017eb2c8f94903ff32db8d7c9db0157710b31de1f738a575b395a55154056c8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Pointwise/Variantfd65108d344d262195ac30aeb3a7ea512fe2949f6c213e2de03c020be93bf7b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:201eec7a8b45cca90260a13857211a971d3372f25ac0b4919d88253b6dfedb1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 674–691.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def instDistribNeg [Mul α] [HasDistribNeg α] : HasDistribNeg (Filter α) :=
  { Filter.instInvolutiveNeg with
    neg_mul := fun _ _ => map₂_map_left_comm neg_mul
    mul_neg := fun _ _ => map_map₂_right_comm mul_neg }

scoped[Pointwise] attribute [instance] Filter.commMonoid Filter.addCommMonoid Filter.divisionMonoid
  Filter.subtractionMonoid Filter.divisionCommMonoid Filter.subtractionCommMonoid
  Filter.instDistribNeg

section Distrib

variable [Distrib α] {f g h : Filter α}

/-!
Note that `Filter α` is not a `Distrib` because `f * g + f * h` has cross terms that `f * (g + h)`
lacks.
-/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Pointwise/Variantfd65108d344d262195ac30aeb3a7ea512fe2949f6c213e2de03c020be93bf7b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Pointwise/Variantfd65108d344d262195ac30aeb3a7ea512fe2949f6c213e2de03c020be93bf7b4.lean#L674).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4606c09dc8cb8ebe3f8fae988111847aac8890a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
