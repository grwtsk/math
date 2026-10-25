# bisectRootGoCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2afbb241a6eb3969968daee79c2e5ae73832cae08443c1e193d5e8e53a570319",
  "kind": "def",
  "lexical_name": "bisectRootGoCore",
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
  "slug": "bisectrootgocore--0d430d6924d38f818ae098d8",
  "source": {
    "blob": "5184af2a459a9ee0e3b81eef1221c21e11ccc4c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 919,
    "line": 890,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bridge/Variant220c758a389d1b42bbc0d20970e32515b43481b5555e9b495b1544e402d36920.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0d430d6924d38f818ae098d822bd946e2044eba1a0b98f589c77ecc70827c460",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bridge/Variant220c758a389d1b42bbc0d20970e32515b43481b5555e9b495b1544e402d36920.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2afbb241a6eb3969968daee79c2e5ae73832cae08443c1e193d5e8e53a570319`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 890–919.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def bisectRootGoCore (e : LExpr) (tol : ℚ) (maxIter : Nat)
    (work : List (IntervalRat × RootStatusCore)) (iter : Nat)
    (done : List (IntervalRat × RootStatusCore)) (cfg : EvalConfig) : BisectionResultCore :=
  match iter, work with
  | 0, _ =>
    { intervals := done ++ work
      iterations := maxIter }
  | _, [] =>
    { intervals := done
      iterations := maxIter - iter }
  | n + 1, (J, _) :: rest =>
    let status := checkRootStatusCore e J cfg
    match status with
    | RootStatusCore.noRoot =>
      -- Discard this interval
      bisectRootGoCore e tol maxIter rest n done cfg
    | RootStatusCore.hasRoot =>
      if J.width ≤ tol then
        bisectRootGoCore e tol maxIter rest n ((J, RootStatusCore.hasRoot) :: done) cfg
      else
        let (J₁, J₂) := J.bisect
        bisectRootGoCore e tol maxIter ((J₁, .unknown) :: (J₂, .unknown) :: rest) n done cfg
    | RootStatusCore.unknown =>
      if J.width ≤ tol then
        bisectRootGoCore e tol maxIter rest n ((J, RootStatusCore.unknown) :: done) cfg
      else
        let (J₁, J₂) := J.bisect
        bisectRootGoCore e tol maxIter ((J₁, .unknown) :: (J₂, .unknown) :: rest) n done cfg

/-- Computable bisection root finding -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bridge/Variant220c758a389d1b42bbc0d20970e32515b43481b5555e9b495b1544e402d36920.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bridge/Variant220c758a389d1b42bbc0d20970e32515b43481b5555e9b495b1544e402d36920.lean#L890).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5184af2a459a9ee0e3b81eef1221c21e11ccc4c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
