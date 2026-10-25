# shiftLeft_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:de04a5e5-259b-35b4-d2c0-cf702860e711",
  "kind": "theorem",
  "lexical_name": "shiftLeft_succ",
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
  "slug": "shiftleft-succ--d7feca2066d863e05e1f6104",
  "source": {
    "blob": "ca6c99c1d585a7d01fd30d3ae709464cf5cdcead",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 126,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant15beb00cee0b068ea1cb188ffaafe61550668d10bfc1d17f582718d60d9db0b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7feca2066d863e05e1f610420ee23e4b860f9ddf95cc16bc07d903a13ca5787",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant15beb00cee0b068ea1cb188ffaafe61550668d10bfc1d17f582718d60d9db0b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:de04a5e5-259b-35b4-d2c0-cf702860e711`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shiftLeft_succ (m : Int) (n : Nat) : m <<< (n + 1) = (m <<< n) * 2 := by
  change Int.shiftLeft _ _ = Int.shiftLeft _ _ * 2
  match m with
  | (m : Nat) =>
    dsimp only [Int.shiftLeft, Int.ofNat_eq_natCast]
    rw [Nat.shiftLeft_succ, Nat.mul_comm, natCast_mul, ofNat_two]
  | Int.negSucc m =>
    dsimp only [Int.shiftLeft]
    rw [Nat.shiftLeft_succ, Nat.mul_comm, Int.negSucc_eq]
    have := Nat.le_shiftLeft (a := m + 1) (b := n)
    omega

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant15beb00cee0b068ea1cb188ffaafe61550668d10bfc1d17f582718d60d9db0b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant15beb00cee0b068ea1cb188ffaafe61550668d10bfc1d17f582718d60d9db0b2.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca6c99c1d585a7d01fd30d3ae709464cf5cdcead` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
