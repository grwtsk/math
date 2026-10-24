# toFiberBundle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a7d8668d793052365a9a7c917c0235f7511452cd07c562573a887815466fca71",
  "kind": "def",
  "lexical_name": "toFiberBundle",
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
  "slug": "tofiberbundle--62e3fa46f14be18b754aad84",
  "source": {
    "blob": "34f734bf8c82a2c5da569b500ff6e1956cc31e9d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 826,
    "line": 815,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant5f370b33045327d65bf31526de4fa2a438aa532077067593cd3e3c3bd7c920e7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:62e3fa46f14be18b754aad8467c97d6389bf0d4ec25a577de889e4412e2c24a7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant5f370b33045327d65bf31526de4fa2a438aa532077067593cd3e3c3bd7c920e7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a7d8668d793052365a9a7c917c0235f7511452cd07c562573a887815466fca71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 815–826.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toFiberBundle : @FiberBundle B F _ _ E a.totalSpaceTopology _ :=
  let _ := a.totalSpaceTopology
  { totalSpaceMk_isInducing' := fun b ↦ a.inducing_totalSpaceMk_of_inducing_comp b
      (a.totalSpaceMk_isInducing b)
    trivializationAtlas' :=
      { e | ∃ (e₀ : _) (he₀ : e₀ ∈ a.pretrivializationAtlas),
        e = a.trivializationOfMemPretrivializationAtlas he₀ },
    trivializationAt' := fun x ↦
      a.trivializationOfMemPretrivializationAtlas (a.pretrivialization_mem_atlas x),
    mem_baseSet_trivializationAt' := a.mem_base_pretrivializationAt
    trivialization_mem_atlas' := fun x ↦ ⟨_, a.pretrivialization_mem_atlas x, rfl⟩ }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant5f370b33045327d65bf31526de4fa2a438aa532077067593cd3e3c3bd7c920e7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant5f370b33045327d65bf31526de4fa2a438aa532077067593cd3e3c3bd7c920e7.lean#L815).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34f734bf8c82a2c5da569b500ff6e1956cc31e9d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
