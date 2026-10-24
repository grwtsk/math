# bisectRootGo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:71fd56cdc29cf183b4aa720e703c15e27e0b8815f01941673940ee1f427a6359",
  "kind": "def",
  "lexical_name": "bisectRootGo",
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
  "slug": "bisectrootgo--d2b0d01f60e817755a7f9265",
  "source": {
    "blob": "781efbca1cefe925ae0a4bb5573a26ee4e906ed4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 69,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bisection/Variant1f1ca1dccb6b3654df80b8a2cfd63be5af2bba66ee7192f958d26e65fcbd7151.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d2b0d01f60e817755a7f9265c30616abf0967955efa06f29c521c8f90995c68c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bisection/Variant1f1ca1dccb6b3654df80b8a2cfd63be5af2bba66ee7192f958d26e65fcbd7151.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:71fd56cdc29cf183b4aa720e703c15e27e0b8815f01941673940ee1f427a6359`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def bisectRootGo (e : Expr) (tol : ℚ) (maxIter : ℕ)
    (work : List (IntervalRat × RootStatus)) (iter : ℕ)
    (done : List (IntervalRat × RootStatus)) : BisectionResult :=
  match iter, work with
  | 0, _ =>
    { intervals := done ++ work
      iterations := maxIter }
  | _, [] =>
    { intervals := done
      iterations := maxIter - iter }
  | n + 1, (J, _) :: rest =>
    let status := checkRootStatus e J
    match status with
    | RootStatus.noRoot =>
      -- Discard this interval
      bisectRootGo e tol maxIter rest n done
    | RootStatus.hasRoot =>
      if J.width ≤ tol then
        -- Small enough, we're done with this one
        bisectRootGo e tol maxIter rest n ((J, RootStatus.hasRoot) :: done)
      else
        -- Bisect and continue
        let (J₁, J₂) := J.bisect
        bisectRootGo e tol maxIter ((J₁, RootStatus.unknown) :: (J₂, RootStatus.unknown) :: rest) n done
    | RootStatus.uniqueRoot =>
      bisectRootGo e tol maxIter rest n ((J, RootStatus.uniqueRoot) :: done)
    | RootStatus.unknown =>
      if J.width ≤ tol then
        bisectRootGo e tol maxIter rest n ((J, RootStatus.unknown) :: done)
      else
        let (J₁, J₂) := J.bisect
        bisectRootGo e tol maxIter ((J₁, RootStatus.unknown) :: (J₂, RootStatus.unknown) :: rest) n done

/-- Bisection root finding.

Repeatedly bisects the interval, discarding subintervals that
provably contain no roots.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bisection/Variant1f1ca1dccb6b3654df80b8a2cfd63be5af2bba66ee7192f958d26e65fcbd7151.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Bisection/Variant1f1ca1dccb6b3654df80b8a2cfd63be5af2bba66ee7192f958d26e65fcbd7151.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `781efbca1cefe925ae0a4bb5573a26ee4e906ed4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
