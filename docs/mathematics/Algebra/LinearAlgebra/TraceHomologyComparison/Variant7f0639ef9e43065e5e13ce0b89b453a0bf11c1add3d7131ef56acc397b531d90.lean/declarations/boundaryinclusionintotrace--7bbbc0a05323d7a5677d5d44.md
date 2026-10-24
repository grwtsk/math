# boundaryInclusionIntoTrace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b58be183c45a181648bb3b198fbdc34c0a517e2f30716addfe5d2c9c64588d35",
  "kind": "def",
  "lexical_name": "boundaryInclusionIntoTrace",
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
  "slug": "boundaryinclusionintotrace--7bbbc0a05323d7a5677d5d44",
  "source": {
    "blob": "189d9844c0b3a5531319d2edbfc4c7cb0f600bb3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 265,
    "line": 244,
    "path": "GRWTSK/Algebra/LinearAlgebra/TraceHomologyComparison/Variant7f0639ef9e43065e5e13ce0b89b453a0bf11c1add3d7131ef56acc397b531d90.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7bbbc0a05323d7a5677d5d44f08c8eee5a6c440f422ef0c6a2f1a5424b4822b5",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TraceHomologyComparison/Variant7f0639ef9e43065e5e13ce0b89b453a0bf11c1add3d7131ef56acc397b531d90.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b58be183c45a181648bb3b198fbdc34c0a517e2f30716addfe5d2c9c64588d35`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 244–265.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def boundaryInclusionIntoTrace
    (S : TracePairHomologySemantics.{uH, uK, uS} T R)
    {M N : T.Manifold} (trace : T.Trace M N) (end_) (k) (hk : 0 < k) :
    letI := S.boundaryAddCommGroup trace end_ (k - 1)
    letI := S.boundaryModule trace end_ (k - 1)
    letI := S.absoluteAddCommGroup trace (k - 1)
    letI := S.absoluteModule trace (k - 1)
    S.BoundaryHomology trace end_ (k - 1) →ₗ[R]
      S.AbsoluteHomology trace (k - 1) := by
  letI := S.boundaryAddCommGroup trace end_ k
  letI := S.boundaryModule trace end_ k
  letI := S.absoluteAddCommGroup trace k
  letI := S.absoluteModule trace k
  letI := S.relativeAddCommGroup trace end_ k
  letI := S.relativeModule trace end_ k
  letI := S.boundaryAddCommGroup trace end_ (k - 1)
  letI := S.boundaryModule trace end_ (k - 1)
  letI := S.absoluteAddCommGroup trace (k - 1)
  letI := S.absoluteModule trace (k - 1)
  exact (S.lesSegment trace end_ k hk).boundaryInclusionIntoTrace

/-- A candidate is the LES connecting arrow exactly when it is the selected oriented map. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TraceHomologyComparison/Variant7f0639ef9e43065e5e13ce0b89b453a0bf11c1add3d7131ef56acc397b531d90.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TraceHomologyComparison/Variant7f0639ef9e43065e5e13ce0b89b453a0bf11c1add3d7131ef56acc397b531d90.lean#L244).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `189d9844c0b3a5531319d2edbfc4c7cb0f600bb3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
