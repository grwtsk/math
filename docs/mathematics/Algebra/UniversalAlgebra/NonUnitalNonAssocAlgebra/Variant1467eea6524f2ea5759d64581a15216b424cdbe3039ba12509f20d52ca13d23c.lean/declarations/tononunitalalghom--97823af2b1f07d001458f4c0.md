# toNonUnitalAlgHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0f6113ae525d6a0913a77767e704b69a4434226dee7e9d51b4573cb7fbafc918",
  "kind": "def",
  "lexical_name": "toNonUnitalAlgHom",
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
  "slug": "tononunitalalghom--97823af2b1f07d001458f4c0",
  "source": {
    "blob": "8f755767122d057c0f90cc3c6cc488ada416888c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 91,
    "path": "GRWTSK/Algebra/UniversalAlgebra/NonUnitalNonAssocAlgebra/Variant1467eea6524f2ea5759d64581a15216b424cdbe3039ba12509f20d52ca13d23c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:97823af2b1f07d001458f4c0e4ea5b1b3510bdd009c7ae8fc6a9e6978e99d067",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/NonUnitalNonAssocAlgebra/Variant1467eea6524f2ea5759d64581a15216b424cdbe3039ba12509f20d52ca13d23c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0f6113ae525d6a0913a77767e704b69a4434226dee7e9d51b4573cb7fbafc918`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toNonUnitalAlgHom (f : L →ₗ⁅R⁆ L₂) : CommutatorRing L →ₙₐ[R] CommutatorRing L₂ :=
  { f with
    toFun := f
    map_zero' := f.map_zero
    map_mul' := f.map_lie }
#align lie_hom.to_non_unital_alg_hom LieHom.toNonUnitalAlgHom

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/NonUnitalNonAssocAlgebra/Variant1467eea6524f2ea5759d64581a15216b424cdbe3039ba12509f20d52ca13d23c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/NonUnitalNonAssocAlgebra/Variant1467eea6524f2ea5759d64581a15216b424cdbe3039ba12509f20d52ca13d23c.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f755767122d057c0f90cc3c6cc488ada416888c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
