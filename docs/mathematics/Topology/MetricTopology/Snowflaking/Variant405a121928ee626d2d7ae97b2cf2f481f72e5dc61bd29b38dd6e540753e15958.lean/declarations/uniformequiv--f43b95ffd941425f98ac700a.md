# uniformEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6dbb7501e22dda63ede3bfe4ce3efb05a25653a452d25ca378dd169cdbb6d268",
  "kind": "def",
  "lexical_name": "uniformEquiv",
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
  "slug": "uniformequiv--f43b95ffd941425f98ac700a",
  "source": {
    "blob": "0594db49b9c1a76f005afb893b0996977af34fde",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 281,
    "line": 262,
    "path": "GRWTSK/Topology/MetricTopology/Snowflaking/Variant405a121928ee626d2d7ae97b2cf2f481f72e5dc61bd29b38dd6e540753e15958.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f43b95ffd941425f98ac700af90650e9d7e8cd3bff39330886f19fc6cf3b14fe",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Snowflaking/Variant405a121928ee626d2d7ae97b2cf2f481f72e5dc61bd29b38dd6e540753e15958.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6dbb7501e22dda63ede3bfe4ce3efb05a25653a452d25ca378dd169cdbb6d268`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 262–281.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def uniformEquiv : Snowflaking X α hα₀ hα₁ ≃ᵤ X where
  toEquiv := ofSnowflaking
  uniformContinuous_toFun := uniformContinuous_ofSnowflaking
  uniformContinuous_invFun := uniformContinuous_toSnowflaking

end UniformSpace

/-!
### Extended distance and a (pseudo) extended metric space structure

Th extended distance on `Snowflaking X α hα₀ hα₁`
is given by `edist x y = (edist x.ofSnowflaking y.ofSnowflaking) ^ α`.

If the original space is a (pseudo) extended metric space, then so is `Snowflaking X α hα₀ hα₁`.
-/

section EDist

variable [EDist X]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Snowflaking/Variant405a121928ee626d2d7ae97b2cf2f481f72e5dc61bd29b38dd6e540753e15958.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Snowflaking/Variant405a121928ee626d2d7ae97b2cf2f481f72e5dc61bd29b38dd6e540753e15958.lean#L262).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0594db49b9c1a76f005afb893b0996977af34fde` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
