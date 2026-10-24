# zeroAtImInftySubmodule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9c38c1e5a8eda92ca88e2d8649aeb3b0f71e473a6c3857f3d9c6eb2b3a72c2cf",
  "kind": "def",
  "lexical_name": "zeroAtImInftySubmodule",
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
  "slug": "zeroatiminftysubmodule--d24a3c703bcf02dd799c622e",
  "source": {
    "blob": "e45ce4f90fbd5ddb4bbc7ab4d265d99276880950",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 57,
    "path": "GRWTSK/Algebra/LinearAlgebra/FunctionsBoundedAtInfty/Variant7c04ace202318ec869b6cecb5c69b71965e40ef3a73113fdeaea88a37a6f30d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d24a3c703bcf02dd799c622ec42b74fcf9c18c5582ebe9aba60b256c8c02a2dd",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/FunctionsBoundedAtInfty/Variant7c04ace202318ec869b6cecb5c69b71965e40ef3a73113fdeaea88a37a6f30d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9c38c1e5a8eda92ca88e2d8649aeb3b0f71e473a6c3857f3d9c6eb2b3a72c2cf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def zeroAtImInftySubmodule (α : Type*) [NormedField α] : Submodule α (ℍ → α) :=
  zeroAtFilterSubmodule atImInfty
#align upper_half_plane.zero_at_im_infty_submodule UpperHalfPlane.zeroAtImInftySubmodule

/-- Subalgebra of functions that are bounded at infinity. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/FunctionsBoundedAtInfty/Variant7c04ace202318ec869b6cecb5c69b71965e40ef3a73113fdeaea88a37a6f30d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/FunctionsBoundedAtInfty/Variant7c04ace202318ec869b6cecb5c69b71965e40ef3a73113fdeaea88a37a6f30d9.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e45ce4f90fbd5ddb4bbc7ab4d265d99276880950` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
