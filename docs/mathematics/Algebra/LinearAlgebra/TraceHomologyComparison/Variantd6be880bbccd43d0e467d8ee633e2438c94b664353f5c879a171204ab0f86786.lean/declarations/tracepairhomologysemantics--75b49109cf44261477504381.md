# TracePairHomologySemantics

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ee7769386129f6fc7cea01ae025f82d46ea2966b15dce42d1efc4d21c9a131be",
  "kind": "structure",
  "lexical_name": "TracePairHomologySemantics",
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
  "slug": "tracepairhomologysemantics--75b49109cf44261477504381",
  "source": {
    "blob": "b0a2d9df8391e5abbf5cb5d2f32abd396616e3f1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 127,
    "path": "GRWTSK/Algebra/LinearAlgebra/TraceHomologyComparison/Variantd6be880bbccd43d0e467d8ee633e2438c94b664353f5c879a171204ab0f86786.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:75b49109cf442614775043819d3344065f74461a40c49264ad4f169e8fb45254",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TraceHomologyComparison/Variantd6be880bbccd43d0e467d8ee633e2438c94b664353f5c879a171204ab0f86786.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ee7769386129f6fc7cea01ae025f82d46ea2966b15dce42d1efc4d21c9a131be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure TracePairHomologySemantics
    (T : SmoothFramedSurgeryTheory)
    (R : Type uH) [CommRing R] where
  RelativeHomology :
    {M N : T.Manifold} → T.Trace M N → TracePairEnd → Nat → Type uK
  relativeAddCommGroup : ∀ {M N} (trace : T.Trace M N) (end_) (k),
    AddCommGroup (RelativeHomology trace end_ k)
  relativeModule : ∀ {M N} (trace : T.Trace M N) (end_) (k),
    letI := relativeAddCommGroup trace end_ k
    Module R (RelativeHomology trace end_ k)
  /-- Absolute homology of the actual supplied trace. -/
  AbsoluteHomology :
    {M N : T.Manifold} → T.Trace M N → Nat → Type uK
  absoluteAddCommGroup : ∀ {M N} (trace : T.Trace M N) (k),
    AddCommGroup (AbsoluteHomology trace k)
  absoluteModule : ∀ {M N} (trace : T.Trace M N) (k),
    letI := absoluteAddCommGroup trace k
    Module R (AbsoluteHomology trace k)
  /-- Homology of the actual incoming or outgoing boundary manifold. -/
  BoundaryHomology :
    {M N : T.Manifold} → T.Trace M N → TracePairEnd → Nat → Type uK
  boundaryAddCommGroup : ∀ {M N} (trace : T.Trace M N) (end_) (k),
    AddCommGroup (BoundaryHomology trace end_ k)
  boundaryModule : ∀ {M N} (trace : T.Trace M N) (end_) (k),
    letI := boundaryAddCommGroup trace end_ k
    Module R (BoundaryHomology trace end_ k)
  /--
  The supplied segment is definitionally the LES segment of the actual pair
  `(trace, boundaryManifold trace end_)` in source degree `k`.
  -/
  lesSegment : ∀ {M N} (trace : T.Trace M N) (end_) (k) (_hk : 0 < k),
    letI := boundaryAddCommGroup trace end_ k
    letI := boundaryModule trace end_ k
    letI := absoluteAddCommGroup trace k
    letI := absoluteModule trace k
    letI := relativeAddCommGroup trace end_ k
    letI := relativeModule trace end_ k
    letI := boundaryAddCommGroup trace end_ (k - 1)
    letI := boundaryModule trace end_ (k - 1)
    letI := absoluteAddCommGroup trace (k - 1)
    letI := absoluteModule trace (k - 1)
    OrientedLongExactSegment R
      (BoundaryHomology trace end_ k)
      (AbsoluteHomology trace k)
      (RelativeHomology trace end_ k)
      (BoundaryHomology trace end_ (k - 1))
      (AbsoluteHomology trace (k - 1))
  /-- Geometric interpretation of an incoming boundary-homology class. -/
  RepresentsAttachingSphere : ∀ {M N} (trace : T.Trace M N)
      (boundaryDegree : Nat),
    BoundaryHomology trace .incoming boundaryDegree → Prop
  /-- Geometric interpretation of an outgoing belt-sphere class. -/
  RepresentsBeltSphere : ∀ {M N} (trace : T.Trace M N)
      (boundaryDegree : Nat),
    BoundaryHomology trace .outgoing boundaryDegree → Prop

namespace TracePairHomologySemantics

variable {T : SmoothFramedSurgeryTheory} {R : Type uH} [CommRing R]

/-- The connecting arrow is definitionally the oriented arrow in the LES segment. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TraceHomologyComparison/Variantd6be880bbccd43d0e467d8ee633e2438c94b664353f5c879a171204ab0f86786.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TraceHomologyComparison/Variantd6be880bbccd43d0e467d8ee633e2438c94b664353f5c879a171204ab0f86786.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0a2d9df8391e5abbf5cb5d2f32abd396616e3f1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
