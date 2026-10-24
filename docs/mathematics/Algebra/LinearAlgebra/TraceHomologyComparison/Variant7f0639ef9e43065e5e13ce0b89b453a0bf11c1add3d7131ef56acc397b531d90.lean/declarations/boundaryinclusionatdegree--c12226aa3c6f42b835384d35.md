# boundaryInclusionAtDegree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7b6ce5a9bee067f91919df4cd48b3e8fc12ce7c79c9eb97bdc783c4e131c6b33",
  "kind": "def",
  "lexical_name": "boundaryInclusionAtDegree",
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
  "slug": "boundaryinclusionatdegree--c12226aa3c6f42b835384d35",
  "source": {
    "blob": "189d9844c0b3a5531319d2edbfc4c7cb0f600bb3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 202,
    "path": "GRWTSK/Algebra/LinearAlgebra/TraceHomologyComparison/Variant7f0639ef9e43065e5e13ce0b89b453a0bf11c1add3d7131ef56acc397b531d90.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c12226aa3c6f42b835384d35ec169f5e2846e83f1b36ae435c84b37bf477c71d",
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

Occurrence: `declaration:7b6ce5a9bee067f91919df4cd48b3e8fc12ce7c79c9eb97bdc783c4e131c6b33`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def boundaryInclusionAtDegree
    (S : TracePairHomologySemantics.{uH, uK, uS} T R)
    {M N : T.Manifold} (trace : T.Trace M N) (end_) (k) (hk : 0 < k) :
    letI := S.boundaryAddCommGroup trace end_ k
    letI := S.boundaryModule trace end_ k
    letI := S.absoluteAddCommGroup trace k
    letI := S.absoluteModule trace k
    S.BoundaryHomology trace end_ k →ₗ[R] S.AbsoluteHomology trace k := by
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
  exact (S.lesSegment trace end_ k hk).boundaryInclusionAtDegree

/-- The absolute-to-relative morphism for the actual pair `(trace, boundary end_)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TraceHomologyComparison/Variant7f0639ef9e43065e5e13ce0b89b453a0bf11c1add3d7131ef56acc397b531d90.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TraceHomologyComparison/Variant7f0639ef9e43065e5e13ce0b89b453a0bf11c1add3d7131ef56acc397b531d90.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `189d9844c0b3a5531319d2edbfc4c7cb0f600bb3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
