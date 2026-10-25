# cycleCount_validPacketFiber_eq_ambientValid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2c4e00c2-ffac-5dab-0014-4b62dbca96ec",
  "kind": "theorem",
  "lexical_name": "cycleCount_validPacketFiber_eq_ambientValid",
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
  "slug": "cyclecount-validpacketfiber-eq-ambientvalid--290ea1b30f6834d61b20b002",
  "source": {
    "blob": "333d3aff796274670f6a3cea724b357aa6fbeca9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 320,
    "line": 305,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FirstReturn/Variant896888641da14dcac2d2a7f22dc0f80a69d52ccba51b3237156e1ad7e287544c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:290ea1b30f6834d61b20b002bcb4356f3e0a86e694242960825306367e8cb256",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/FirstReturn/Variant896888641da14dcac2d2a7f22dc0f80a69d52ccba51b3237156e1ad7e287544c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c4e00c2-ffac-5dab-0014-4b62dbca96ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 305–320.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem cycleCount_validPacketFiber_eq_ambientValid
    (C : FilesystemMatrixCodec Snapshot r)
    (E : RowFieldEncoding F r)
    (rowPerm : ∀ k, Equiv.Perm (Fin k → F))
    (k t : Nat) :
    FinitePermutationDynamics.cycleCount
        (validPacketFiberFirstReturnPerm C E rowPerm k) t =
      FinitePermutationDynamics.cycleCount
        (ambientValidFirstReturnPerm C E rowPerm k) t := by
  simpa [validPacketFiberFirstReturnPerm,
    FinitePermutationDynamics.transport] using
    (FinitePermutationDynamics.cycleCount_transport
      (validPacketFiberEquivAmbientImage C E k).symm
      (ambientValidFirstReturnPerm C E rowPerm k) t)

/-- Euler-factor exponent data agree between packets and the ambient image. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/FirstReturn/Variant896888641da14dcac2d2a7f22dc0f80a69d52ccba51b3237156e1ad7e287544c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/FirstReturn/Variant896888641da14dcac2d2a7f22dc0f80a69d52ccba51b3237156e1ad7e287544c.lean#L305).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `333d3aff796274670f6a3cea724b357aa6fbeca9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
