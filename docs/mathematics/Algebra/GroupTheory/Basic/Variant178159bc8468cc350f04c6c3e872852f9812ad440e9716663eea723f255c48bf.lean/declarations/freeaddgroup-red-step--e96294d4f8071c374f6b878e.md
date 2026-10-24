# FreeAddGroup.Red.Step

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c75a87d0cc767e25e432d02dd839c429afccc6aa9732e028c7e8f4436f91023b",
  "kind": "inductive",
  "lexical_name": "FreeAddGroup.Red.Step",
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
  "slug": "freeaddgroup-red-step--e96294d4f8071c374f6b878e",
  "source": {
    "blob": "cbfcfb52e251c4e1efad45501fe0bd45c4e8d0df",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 63,
    "path": "GRWTSK/Algebra/GroupTheory/Basic/Variant178159bc8468cc350f04c6c3e872852f9812ad440e9716663eea723f255c48bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e96294d4f8071c374f6b878ee45cc0810fdaca4dfd863bf648c1e3586292d9ca",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Basic/Variant178159bc8468cc350f04c6c3e872852f9812ad440e9716663eea723f255c48bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c75a87d0cc767e25e432d02dd839c429afccc6aa9732e028c7e8f4436f91023b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive FreeAddGroup.Red.Step : List (α × Bool) → List (α × Bool) → Prop
  | not {L₁ L₂ x b} : FreeAddGroup.Red.Step (L₁ ++ (x, b) :: (x, not b) :: L₂) (L₁ ++ L₂)

attribute [simp] FreeAddGroup.Red.Step.not

/-- Reduction step for the multiplicative free group relation: `w * x * x⁻¹ * v ~> w * v` -/
@[to_additive FreeAddGroup.Red.Step]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Basic/Variant178159bc8468cc350f04c6c3e872852f9812ad440e9716663eea723f255c48bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Basic/Variant178159bc8468cc350f04c6c3e872852f9812ad440e9716663eea723f255c48bf.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cbfcfb52e251c4e1efad45501fe0bd45c4e8d0df` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
