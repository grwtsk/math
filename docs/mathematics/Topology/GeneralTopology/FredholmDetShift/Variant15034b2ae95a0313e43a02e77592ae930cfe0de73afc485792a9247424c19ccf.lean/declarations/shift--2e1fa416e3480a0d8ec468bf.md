# shift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:17b1898a1a5a9bbb069c35aeefbfb94d76ffe43879e1d8803798aeb724da6029",
  "kind": "def",
  "lexical_name": "shift",
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
  "slug": "shift--2e1fa416e3480a0d8ec468bf",
  "source": {
    "blob": "6c3eac756cd6d3d081d523017134232781c14964",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 46,
    "path": "GRWTSK/Topology/GeneralTopology/FredholmDetShift/Variant15034b2ae95a0313e43a02e77592ae930cfe0de73afc485792a9247424c19ccf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2e1fa416e3480a0d8ec468bfd88a770c7603157950d86a43cec174f8afbcbe8b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/FredholmDetShift/Variant15034b2ae95a0313e43a02e77592ae930cfe0de73afc485792a9247424c19ccf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:17b1898a1a5a9bbb069c35aeefbfb94d76ffe43879e1d8803798aeb724da6029`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def shift (λ : 𝕜) : 𝕜 :=
  fredholmDet (shiftOp T λ)

/-! --------------------------------------------------------------------!
    2.  Zero set equals the spectrum
    -------------------------------------------------------------------- -/

/--
For a compact-resolvent operator `T`,
`shift T λ = 0` **iff** `λ` belongs to the spectrum of `T`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/FredholmDetShift/Variant15034b2ae95a0313e43a02e77592ae930cfe0de73afc485792a9247424c19ccf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/FredholmDetShift/Variant15034b2ae95a0313e43a02e77592ae930cfe0de73afc485792a9247424c19ccf.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c3eac756cd6d3d081d523017134232781c14964` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
