# compositionEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:caafb6281e914ad191262753e3cf766711854b0ad484aee05608cb49501a7d7a",
  "kind": "def",
  "lexical_name": "compositionEquiv",
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
  "slug": "compositionequiv--086b789f417314342dab08fb",
  "source": {
    "blob": "34bd286bc74e0bc9295299ed82a8be1cb03b4328",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1045,
    "line": 1036,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Composition/Variant551a16d7b32284012b7c62031d5ab669c3181497bdca2a053cee7cc7e2543b1a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:086b789f417314342dab08fbd07b94a35263da622df6a269b1f1b3657b3e376b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Composition/Variant551a16d7b32284012b7c62031d5ab669c3181497bdca2a053cee7cc7e2543b1a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:caafb6281e914ad191262753e3cf766711854b0ad484aee05608cb49501a7d7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1036–1045.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def compositionEquiv (n : ℕ) : Composition n ≃ CompositionAsSet n where
  toFun c := c.toCompositionAsSet
  invFun c := c.toComposition
  left_inv c := by
    ext1
    exact c.toCompositionAsSet_blocks
  right_inv c := by
    ext1
    exact c.toComposition_boundaries

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Composition/Variant551a16d7b32284012b7c62031d5ab669c3181497bdca2a053cee7cc7e2543b1a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Composition/Variant551a16d7b32284012b7c62031d5ab669c3181497bdca2a053cee7cc7e2543b1a.lean#L1036).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `34bd286bc74e0bc9295299ed82a8be1cb03b4328` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
