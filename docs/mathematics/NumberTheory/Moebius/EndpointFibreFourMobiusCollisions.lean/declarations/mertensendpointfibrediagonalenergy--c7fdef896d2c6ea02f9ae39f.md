# mertensEndpointFibreDiagonalEnergy

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f6a02160af2cc78bf27ba54f8c413ad2377cf5d4c26aab7123c19cbf44e07883",
  "kind": "def",
  "lexical_name": "mertensEndpointFibreDiagonalEnergy",
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
  "slug": "mertensendpointfibrediagonalenergy--c7fdef896d2c6ea02f9ae39f",
  "source": {
    "blob": "51aac37245b50e6bcb14dfc10b9d35f026a6b7da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 229,
    "path": "GRWTSK/NumberTheory/Moebius/EndpointFibreFourMobiusCollisions.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c7fdef896d2c6ea02f9ae39f0fda80abea6cbf3973e3503de3f4d659bc63e621",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/EndpointFibreFourMobiusCollisions.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f6a02160af2cc78bf27ba54f8c413ad2377cf5d4c26aab7123c19cbf44e07883`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mertensEndpointFibreDiagonalEnergy
    (b : ℕ) : ℝ :=
  ∑ n ∈ Finset.Ico 1 b,
    ∑ p ∈ mertensEndpointStratumPairSet b n .diagonal,
      mertensEndpointFourMobiusTerm b n p.1 p.2

/-- Signed sum of both oriented cross-collision strata. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/EndpointFibreFourMobiusCollisions.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/EndpointFibreFourMobiusCollisions.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51aac37245b50e6bcb14dfc10b9d35f026a6b7da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
