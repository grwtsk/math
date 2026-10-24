# funUnique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0c8e963198b3243e2335d78150bfbe879c0be4f0f9dadd19f3678d9ba65255e4",
  "kind": "def",
  "lexical_name": "funUnique",
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
  "slug": "fununique--bd48faa56a0d46aa6c06d603",
  "source": {
    "blob": "203d7f99c5bf94f4d20c2169cb1294b674bb2f1f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 390,
    "line": 384,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Equiv/Variant9d0e3fa5e2809b7aa718df61822e5fc424c3b8f5196ad9da313baa6ef6949f20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bd48faa56a0d46aa6c06d6033bd327416de9be85d4b02975c2865c4c9c676187",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Equiv/Variant9d0e3fa5e2809b7aa718df61822e5fc424c3b8f5196ad9da313baa6ef6949f20.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0c8e963198b3243e2335d78150bfbe879c0be4f0f9dadd19f3678d9ba65255e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 384–390.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def funUnique (ι α : Type*) [Unique ι] [UniformSpace α] : (ι → α) ≃ᵤ α where
  toEquiv := Equiv.funUnique ι α
  uniformContinuous_toFun := Pi.uniformContinuous_proj _ _
  uniformContinuous_invFun := uniformContinuous_pi.mpr fun _ => uniformContinuous_id

/-- Uniform isomorphism between dependent functions `Π i : Fin 2, α i` and `α 0 × α 1`. -/
@[simps! -fullyApplied]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Equiv/Variant9d0e3fa5e2809b7aa718df61822e5fc424c3b8f5196ad9da313baa6ef6949f20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Equiv/Variant9d0e3fa5e2809b7aa718df61822e5fc424c3b8f5196ad9da313baa6ef6949f20.lean#L384).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `203d7f99c5bf94f4d20c2169cb1294b674bb2f1f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
