# sheafifyStalkIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:71e3f6ba806482bade1ba57e8038a91eb83ac6c4ae4e5d95a9f4bb70c81007ed",
  "kind": "def",
  "lexical_name": "sheafifyStalkIso",
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
  "slug": "sheafifystalkiso--87f8c07c17031855a7b55d6d",
  "source": {
    "blob": "26839b93e0b43442b64ce1538482c5d97294db92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 130,
    "path": "GRWTSK/Topology/GeneralTopology/Sheafify/Variant0ded2e9f6a7381c8c7458e1cc941bd8ed4f6a60b58463ae0b5ef631e56c7dede.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:87f8c07c17031855a7b55d6dd4b876fc326a26a481d803ba531c1871d24448c7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Sheafify/Variant0ded2e9f6a7381c8c7458e1cc941bd8ed4f6a60b58463ae0b5ef631e56c7dede.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:71e3f6ba806482bade1ba57e8038a91eb83ac6c4ae4e5d95a9f4bb70c81007ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 130–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sheafifyStalkIso (x : X) : F.sheafify.presheaf.stalk x ≅ F.stalk x :=
  (Equiv.ofBijective _ ⟨stalkToFiber_injective _ _, stalkToFiber_surjective _ _⟩).toIso

-- PROJECT functoriality, and that sheafification is the left adjoint of the forgetful functor.
end TopCat.Presheaf
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Sheafify/Variant0ded2e9f6a7381c8c7458e1cc941bd8ed4f6a60b58463ae0b5ef631e56c7dede.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Sheafify/Variant0ded2e9f6a7381c8c7458e1cc941bd8ed4f6a60b58463ae0b5ef631e56c7dede.lean#L130).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26839b93e0b43442b64ce1538482c5d97294db92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
