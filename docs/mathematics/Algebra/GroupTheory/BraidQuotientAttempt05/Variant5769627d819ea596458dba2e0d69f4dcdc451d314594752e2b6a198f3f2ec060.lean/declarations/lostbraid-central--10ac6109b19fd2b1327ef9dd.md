# lostBraid_central

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d414a4a0-a33f-b1e8-76c4-a43cbd480c92",
  "kind": "theorem",
  "lexical_name": "lostBraid_central",
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
  "slug": "lostbraid-central--10ac6109b19fd2b1327ef9dd",
  "source": {
    "blob": "690bd82f7fabe7f6ca8aa679002e5e4a704a0008",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 156,
    "path": "GRWTSK/Algebra/GroupTheory/BraidQuotientAttempt05/Variant5769627d819ea596458dba2e0d69f4dcdc451d314594752e2b6a198f3f2ec060.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:10ac6109b19fd2b1327ef9ddfb03cff55c43da36822b1cfa67ad4bd2673720a1",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/BraidQuotientAttempt05/Variant5769627d819ea596458dba2e0d69f4dcdc451d314594752e2b6a198f3f2ec060.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d414a4a0-a33f-b1e8-76c4-a43cbd480c92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 156–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lostBraid_central (x:B3) : lostBraid*x = x*lostBraid := by
  rw [lostBraid_eq_fullTwist_square,pow_two]
  calc
    (fullTwist*fullTwist)*x = fullTwist*(fullTwist*x) := mul_assoc _ _ _
    _ = fullTwist*(x*fullTwist) := congrArg (fun y:B3=>fullTwist*y) (fullTwist_central x)
    _ = (fullTwist*x)*fullTwist := (mul_assoc _ _ _).symm
    _ = (x*fullTwist)*fullTwist := congrArg (fun y:B3=>y*fullTwist) (fullTwist_central x)
    _ = x*(fullTwist*fullTwist) := mul_assoc _ _ _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/BraidQuotientAttempt05/Variant5769627d819ea596458dba2e0d69f4dcdc451d314594752e2b6a198f3f2ec060.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/BraidQuotientAttempt05/Variant5769627d819ea596458dba2e0d69f4dcdc451d314594752e2b6a198f3f2ec060.lean#L156).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `690bd82f7fabe7f6ca8aa679002e5e4a704a0008` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
