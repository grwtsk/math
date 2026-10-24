# TotalSpace.trivialSnd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b5a07a6293c2440e5deef7611625f2d5b0007436cb82ded217936e1b0261858e",
  "kind": "def",
  "lexical_name": "TotalSpace.trivialSnd",
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
  "slug": "totalspace-trivialsnd--2e06aecd3fec5aeaf2c4f8a5",
  "source": {
    "blob": "18e49d126b4964f6862159d15ade94902b7a529f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 119,
    "path": "GRWTSK/Algebra/LinearAlgebra/Bundle/Variant83d31897b6ce3531f67028ede3e8499acf6fa8aa8f7868c3b302b22c4dc440c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2e06aecd3fec5aeaf2c4f8a5d4f5c4ff02a843a6aaef846bc0b68b0597bb8bf7",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Bundle/Variant83d31897b6ce3531f67028ede3e8499acf6fa8aa8f7868c3b302b22c4dc440c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b5a07a6293c2440e5deef7611625f2d5b0007436cb82ded217936e1b0261858e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def TotalSpace.trivialSnd (B : Type*) (F : Type*) : TotalSpace F (Bundle.Trivial B F) → F :=
  TotalSpace.snd
#align bundle.total_space.trivial_snd Bundle.TotalSpace.trivialSnd

/-- A trivial bundle is equivalent to the product `B × F`. -/
@[simps (config := { attrs := [`simp, `mfld_simps] })]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Bundle/Variant83d31897b6ce3531f67028ede3e8499acf6fa8aa8f7868c3b302b22c4dc440c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Bundle/Variant83d31897b6ce3531f67028ede3e8499acf6fa8aa8f7868c3b302b22c4dc440c2.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18e49d126b4964f6862159d15ade94902b7a529f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
