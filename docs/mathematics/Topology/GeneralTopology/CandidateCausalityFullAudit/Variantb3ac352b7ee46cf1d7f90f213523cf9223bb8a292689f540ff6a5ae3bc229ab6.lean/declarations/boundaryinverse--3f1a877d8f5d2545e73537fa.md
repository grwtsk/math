# boundaryInverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5cb8e246fa5cb5e2d49ba8f11207c5de704fa998614eb3f0323b96b316b38e9d",
  "kind": "def",
  "lexical_name": "boundaryInverse",
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
  "slug": "boundaryinverse--3f1a877d8f5d2545e73537fa",
  "source": {
    "blob": "5bd37c0c2eaae974e96e5b3f98eae13b3c42461a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 18,
    "line": 14,
    "path": "GRWTSK/Topology/GeneralTopology/CandidateCausalityFullAudit/Variantb3ac352b7ee46cf1d7f90f213523cf9223bb8a292689f540ff6a5ae3bc229ab6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3f1a877d8f5d2545e73537fa15f732e256c44a2fe8f0a6ae19686d6bed86ab2d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CandidateCausalityFullAudit/Variantb3ac352b7ee46cf1d7f90f213523cf9223bb8a292689f540ff6a5ae3bc229ab6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5cb8e246fa5cb5e2d49ba8f11207c5de704fa998614eb3f0323b96b316b38e9d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 14–18.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def boundaryInverse (F : ℂ → ℂ) (x : ℝ) : ℂ :=
  (1 / (2 * Real.pi) : ℂ) *
    ∫ t : ℝ, Complex.exp ((x : ℂ) * ((t : ℂ) * Complex.I)) * F ((t : ℂ) * Complex.I)

/-- A uniformly admitted analytic right-half-plane function has a causal inverse boundary. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CandidateCausalityFullAudit/Variantb3ac352b7ee46cf1d7f90f213523cf9223bb8a292689f540ff6a5ae3bc229ab6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CandidateCausalityFullAudit/Variantb3ac352b7ee46cf1d7f90f213523cf9223bb8a292689f540ff6a5ae3bc229ab6.lean#L14).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5bd37c0c2eaae974e96e5b3f98eae13b3c42461a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
