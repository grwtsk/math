# toRootSystem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:373162fd8c80082e9b0c40b8896b8005918c6459833e1d03c8f7b92a407050cf",
  "kind": "def",
  "lexical_name": "toRootSystem",
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
  "slug": "torootsystem--9451eba7432c9c4d5cbc500c",
  "source": {
    "blob": "e2c5ac948c66c8b8598abd233f8487d9a4ee95ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 101,
    "path": "GRWTSK/Algebra/LinearAlgebra/Irreducible/Varianta4601f7973cea6f092ad0da863865abf2b4b770bc077211f518b9b4593fe3a97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9451eba7432c9c4d5cbc500c5593ba17991d3a92b91dec3667233a0cdc2c8ee4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Irreducible/Varianta4601f7973cea6f092ad0da863865abf2b4b770bc077211f518b9b4593fe3a97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:373162fd8c80082e9b0c40b8896b8005918c6459833e1d03c8f7b92a407050cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toRootSystem [Nonempty ι] [NeZero (2 : R)] [P.IsIrreducible] : RootSystem ι R M N :=
  { toRootPairing := P
    span_root_eq_top := IsIrreducible.eq_top_of_invtSubmodule_reflection
      (P.rootSpan R) P.rootSpan_mem_invtSubmodule_reflection (P.rootSpan_ne_bot R)
    span_coroot_eq_top := IsIrreducible.eq_top_of_invtSubmodule_coreflection
      (P.corootSpan R) P.corootSpan_mem_invtSubmodule_coreflection (P.corootSpan_ne_bot R) }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Irreducible/Varianta4601f7973cea6f092ad0da863865abf2b4b770bc077211f518b9b4593fe3a97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Irreducible/Varianta4601f7973cea6f092ad0da863865abf2b4b770bc077211f518b9b4593fe3a97.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2c5ac948c66c8b8598abd233f8487d9a4ee95ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
