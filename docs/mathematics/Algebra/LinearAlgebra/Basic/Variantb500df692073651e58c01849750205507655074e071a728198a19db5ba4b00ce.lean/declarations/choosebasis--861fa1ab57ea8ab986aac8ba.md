# chooseBasis

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aef8457438eec23f82f2a905c711cc1e63b6c1055f6fb86e91746fb5d4367160",
  "kind": "def",
  "lexical_name": "chooseBasis",
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
  "slug": "choosebasis--861fa1ab57ea8ab986aac8ba",
  "source": {
    "blob": "5db080d44568aba8ce9bb41b2abca26779b39f28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 83,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantb500df692073651e58c01849750205507655074e071a728198a19db5ba4b00ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:861fa1ab57ea8ab986aac8bae711610d719a97f98101395d8fa5e4a82135a6d2",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variantb500df692073651e58c01849750205507655074e071a728198a19db5ba4b00ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:aef8457438eec23f82f2a905c711cc1e63b6c1055f6fb86e91746fb5d4367160`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def chooseBasis : Basis (ChooseBasisIndex R M) R M :=
  ((Module.free_iff_set R M).mp ‹_›).choose_spec.some

/-- The isomorphism `M ≃ₗ[R] (ChooseBasisIndex R M →₀ R)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variantb500df692073651e58c01849750205507655074e071a728198a19db5ba4b00ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variantb500df692073651e58c01849750205507655074e071a728198a19db5ba4b00ce.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5db080d44568aba8ce9bb41b2abca26779b39f28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
