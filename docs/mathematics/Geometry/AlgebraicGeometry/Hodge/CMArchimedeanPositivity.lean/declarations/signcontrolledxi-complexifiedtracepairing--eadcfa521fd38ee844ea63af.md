# SignControlledXi.complexifiedTracePairing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c16422b9df23891b0a3a585e0314e7bf03ccf85c75d3ca8e87242b7ae2fcf72d",
  "kind": "def",
  "lexical_name": "SignControlledXi.complexifiedTracePairing",
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
  "slug": "signcontrolledxi-complexifiedtracepairing--eadcfa521fd38ee844ea63af",
  "source": {
    "blob": "7b28a2ea77e43563b25646a5fcacfe4d937fefcb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 398,
    "line": 387,
    "path": "GRWTSK/AlgebraicGeometry/Hodge/CMArchimedeanPositivity.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eadcfa521fd38ee844ea63af868a6d4e8e1b92210e037e484fedf2d68def43d0",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Hodge/CMArchimedeanPositivity.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c16422b9df23891b0a3a585e0314e7bf03ccf85c75d3ca8e87242b7ae2fcf72d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 387–398.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def SignControlledXi.complexifiedTracePairing
    {v : CMNumberFieldIndex.OddSignRow E}
    (X : SignControlledXi E v)
    (z w : (E ≃ₐ[ℚ] E) → ℂ) : ℂ :=
  ∑ σ,
    complexEmbeddingAt E σ X.xi * z σ *
      w ((centralInvolution E).conj σ)

/-- On coordinates coming from rational CM-field vectors, the coordinate
pairing is exactly the rational trace pairing after base change to the chosen
complex embedding.  This is the local scalar-extension comparison, not merely
a dimension or sign analogy. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Hodge/CMArchimedeanPositivity.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/Hodge/CMArchimedeanPositivity.lean#L387).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b28a2ea77e43563b25646a5fcacfe4d937fefcb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
