# sheafToTypes

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e4efc57912aab9366aba7b4cde2680395f9a3860d19635f6d7639d773bc3f716",
  "kind": "def",
  "lexical_name": "sheafToTypes",
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
  "slug": "sheaftotypes--40dc54453e841d122e64b24e",
  "source": {
    "blob": "760428ab0d2c8cc28a59f89cba44f4e7125e512c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 88,
    "path": "GRWTSK/Topology/GeneralTopology/SheafOfFunctions/Variantf1c03acf1d50a026d22d3b82d38947d5ef46bb8854427bf18c1e79360042093e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:40dc54453e841d122e64b24e3e92ab66398d93598bffb377e52b5634a58b0e9c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/SheafOfFunctions/Variantf1c03acf1d50a026d22d3b82d38947d5ef46bb8854427bf18c1e79360042093e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e4efc57912aab9366aba7b4cde2680395f9a3860d19635f6d7639d773bc3f716`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sheafToTypes (T : X → Type*) : Sheaf (Type _) X :=
  ⟨presheafToTypes X T, Presheaf.toTypes_isSheaf _ _⟩

/-- The sheaf of not-necessarily-continuous functions on `X` with values in a type `T`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/SheafOfFunctions/Variantf1c03acf1d50a026d22d3b82d38947d5ef46bb8854427bf18c1e79360042093e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/SheafOfFunctions/Variantf1c03acf1d50a026d22d3b82d38947d5ef46bb8854427bf18c1e79360042093e.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `760428ab0d2c8cc28a59f89cba44f4e7125e512c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
