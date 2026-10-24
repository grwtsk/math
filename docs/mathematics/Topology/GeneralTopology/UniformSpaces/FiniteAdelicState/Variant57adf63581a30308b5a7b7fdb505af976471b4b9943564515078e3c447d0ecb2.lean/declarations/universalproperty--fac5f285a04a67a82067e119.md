# universalProperty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:45ba0554-83fd-1777-edc8-b99339bdab33",
  "kind": "theorem",
  "lexical_name": "universalProperty",
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
  "slug": "universalproperty--fac5f285a04a67a82067e119",
  "source": {
    "blob": "1cac0703d08d10fee7234f2d7c68643416bcf7ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 188,
    "line": 156,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/FiniteAdelicState/Variant57adf63581a30308b5a7b7fdb505af976471b4b9943564515078e3c447d0ecb2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fac5f285a04a67a82067e119fb860ee143737aaaf31f295f684a74eaa40a7ba8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/FiniteAdelicState/Variant57adf63581a30308b5a7b7fdb505af976471b4b9943564515078e3c447d0ecb2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:45ba0554-83fd-1777-edc8-b99339bdab33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–188.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem universalProperty
    {Target : Type w}
    [UniformSpace Target] [CompleteSpace Target] [T0Space Target]
    (completion : RestrictedAdelicCompletion.{u, v} finiteState)
    (map : FiniteCarrier → Target)
    (map_uniform : UniformContinuous map) :
    ∃! extension : completion.completion.space → Target,
      UniformContinuous extension ∧
      ∀ point,
        extension (completion.finiteEmbedding point) = map point := by
  letI : UniformSpace completion.completion.space :=
    completion.completion.uniformStruct
  letI : CompleteSpace completion.completion.space :=
    completion.completion.complete
  letI : T0Space completion.completion.space :=
    completion.completion.separation
  refine
    ⟨completion.completion.extend map,
      ⟨completion.completion.uniformContinuous_extend,
        fun point ↦ completion.completion.extend_coe map_uniform point⟩,
      ?_⟩
  intro candidate candidateProperties
  exact
    (completion.completion.extend_unique
      map_uniform
      candidateProperties.1
      (fun point ↦ (candidateProperties.2 point).symm)).symm

/--
Any two certified completion carriers of the same finite state are canonically
uniformly equivalent.  This follows from the fixed completion structure, not
from matching digests.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/FiniteAdelicState/Variant57adf63581a30308b5a7b7fdb505af976471b4b9943564515078e3c447d0ecb2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/FiniteAdelicState/Variant57adf63581a30308b5a7b7fdb505af976471b4b9943564515078e3c447d0ecb2.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1cac0703d08d10fee7234f2d7c68643416bcf7ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
