# MarkovKernel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:14d87a784d44aa4d0b189e740cc606e588ae2044ef8a5457e65837e1a0d03354",
  "kind": "structure",
  "lexical_name": "MarkovKernel",
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
  "slug": "markovkernel--011d1fe41fdf1b20eb32e862",
  "source": {
    "blob": "5e843a4de1406b7e0d9ffd05f3ce2ec5c09a4002",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 23,
    "line": 18,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Kernel/Variant5a2846abbecb6e9d4cb945988278e08baf69eab0e6aa65e5a55788e4c94816ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:011d1fe41fdf1b20eb32e86292e5f4cc963c1ae8b51c5e6caaf9223cf742819b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Kernel/Variant5a2846abbecb6e9d4cb945988278e08baf69eab0e6aa65e5a55788e4c94816ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:14d87a784d44aa4d0b189e740cc606e588ae2044ef8a5457e65837e1a0d03354`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–23.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure MarkovKernel (X : Type) [Fintype X] where
  transition : X → X → ℝ
  nonnegative : ∀ source target, 0 ≤ transition source target
  rowMass : ∀ source, ∑ target, transition source target = 1
  kernelRevision : SpectralId

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Kernel/Variant5a2846abbecb6e9d4cb945988278e08baf69eab0e6aa65e5a55788e4c94816ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Kernel/Variant5a2846abbecb6e9d4cb945988278e08baf69eab0e6aa65e5a55788e4c94816ef.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5e843a4de1406b7e0d9ffd05f3ce2ec5c09a4002` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
