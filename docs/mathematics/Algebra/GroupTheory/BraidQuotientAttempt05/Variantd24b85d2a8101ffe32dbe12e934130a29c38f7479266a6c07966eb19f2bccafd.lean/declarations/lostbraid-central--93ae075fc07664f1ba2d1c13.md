# lostBraid_central

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e4e42e24-1e96-a37e-bd65-6930996b6c6f",
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
  "slug": "lostbraid-central--93ae075fc07664f1ba2d1c13",
  "source": {
    "blob": "668345986739a2f4df06c651dee5ba6fdc05eb85",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 164,
    "path": "GRWTSK/Algebra/GroupTheory/BraidQuotientAttempt05/Variantd24b85d2a8101ffe32dbe12e934130a29c38f7479266a6c07966eb19f2bccafd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93ae075fc07664f1ba2d1c13e28618d1c13c8886f1c23a2585e141ed9b20021e",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/BraidQuotientAttempt05/Variantd24b85d2a8101ffe32dbe12e934130a29c38f7479266a6c07966eb19f2bccafd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e4e42e24-1e96-a37e-bd65-6930996b6c6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–172.

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

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/BraidQuotientAttempt05/Variantd24b85d2a8101ffe32dbe12e934130a29c38f7479266a6c07966eb19f2bccafd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/BraidQuotientAttempt05/Variantd24b85d2a8101ffe32dbe12e934130a29c38f7479266a6c07966eb19f2bccafd.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `668345986739a2f4df06c651dee5ba6fdc05eb85` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
