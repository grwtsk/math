# automorphic_obstructions_share_canonical_record

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c36fdd38-a0ac-1163-0587-89c50667603f",
  "kind": "theorem",
  "lexical_name": "automorphic_obstructions_share_canonical_record",
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
  "slug": "automorphic-obstructions-share-canonical-record--aeb62e2177f565b3f0226d7d",
  "source": {
    "blob": "ce4c94fcf8492a6413fa4d99064a35802139102f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 51,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/CanonicalObstruction/Variant90c3f7b86299a44dc2d2bb22f3e6e4a4aaa973dfa442f7aa07d9dff2cf2a11d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:aeb62e2177f565b3f0226d7d5aba9719b21bee8bc1a0120a6ffcda615b87f951",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/CanonicalObstruction/Variant90c3f7b86299a44dc2d2bb22f3e6e4a4aaa973dfa442f7aa07d9dff2cf2a11d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c36fdd38-a0ac-1163-0587-89c50667603f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem automorphic_obstructions_share_canonical_record
    {G Partial Full Constraint Raw : Type}
    [Group G]
    [Fintype G]
    [DecidableEq Constraint]
    [MulAction G Raw]
    (semantics : CompletionSemantics Partial Full Constraint)
    (equivariance :
      CompletionEquivariance
        G Partial Full Constraint semantics)
    (context :
      CanonicalObstructionContext
        G Partial Full Constraint Raw
        semantics equivariance)
    (registry core : Finset Constraint)
    (state : Partial)
    (primitive :
      PrimitiveObstructionCertificate
        semantics registry state core)
    (groupElement : G) :
    context.canonicalizer.canonicalize
        (context.rawOf
          (equivariance.actPartial groupElement state)
          (equivariance.actRegistry groupElement core)) =
      context.canonicalizer.canonicalize
        (context.rawOf state core) := by
  cases context.primitiveTransport
      registry core state primitive groupElement with
  | mk transported =>
      have transportedInfeasible :=
        primitive_core_is_infeasible
          semantics transported
      rw [context.raw_equivariant]
      exact canon_smul
        context.canonicalizer groupElement
        (context.rawOf state core)

end Mathematics.BinaryFrontier
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/CanonicalObstruction/Variant90c3f7b86299a44dc2d2bb22f3e6e4a4aaa973dfa442f7aa07d9dff2cf2a11d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/CanonicalObstruction/Variant90c3f7b86299a44dc2d2bb22f3e6e4a4aaa973dfa442f7aa07d9dff2cf2a11d7.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce4c94fcf8492a6413fa4d99064a35802139102f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
