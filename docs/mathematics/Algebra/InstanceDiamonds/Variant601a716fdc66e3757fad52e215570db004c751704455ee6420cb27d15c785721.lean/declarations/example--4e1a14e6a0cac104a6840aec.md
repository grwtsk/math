# Anonymous example

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:10538496ef634a8bce41e39873a12b9468ba15e633242def888c03a9a33e18b7",
  "kind": "example",
  "lexical_name": null,
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
  "slug": "example--4e1a14e6a0cac104a6840aec",
  "source": {
    "blob": "263154924ccbb27c5cd8224d707e883a4eb9ccad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 252,
    "line": 235,
    "path": "GRWTSK/Algebra/InstanceDiamonds/Variant601a716fdc66e3757fad52e215570db004c751704455ee6420cb27d15c785721.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4e1a14e6a0cac104a6840aec3cd86454bbaeb7efae9626f6888d3e1b5c67573e",
  "verification": {
    "reference": "docs/verification/Algebra/InstanceDiamonds/Variant601a716fdc66e3757fad52e215570db004c751704455ee6420cb27d15c785721.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `example` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:10538496ef634a8bce41e39873a12b9468ba15e633242def888c03a9a33e18b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 235–252.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
example : ZMod.commRing 0 = Int.instCommRing := by
  with_reducible_and_instances rfl

end ZMod

/-! ## Instances involving structures over `ℝ` and `ℂ`

Given a scalar action on `ℝ`, we have an instance which produces the corresponding scalar action on
`ℂ`. In the other direction, if there is a scalar action of `ℂ` on some type, we can get a
corresponding action of `ℝ` on that type via `RestrictScalars`.

Obviously, this has the potential to cause diamonds when we can go in both directions. This shows
that at least some potential diamonds are avoided. -/

section complexToReal

-- fails `with_reducible_and_instances` https://github.com/leanprover-community/mathlib4/issues/10906
-- the two ways to get `Algebra ℝ ℂ` are definitionally equal
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/InstanceDiamonds/Variant601a716fdc66e3757fad52e215570db004c751704455ee6420cb27d15c785721.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/InstanceDiamonds/Variant601a716fdc66e3757fad52e215570db004c751704455ee6420cb27d15c785721.lean#L235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `263154924ccbb27c5cd8224d707e883a4eb9ccad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
