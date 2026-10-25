# phaseWeight_reflection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:287f2941-0ca2-cf74-bc62-13e78d4047ba",
  "kind": "theorem",
  "lexical_name": "phaseWeight_reflection",
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
  "slug": "phaseweight-reflection--fd5e8421a28c8896f9c466a3",
  "source": {
    "blob": "ded047a5d4708a95540aa3e615646575f9006094",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 26,
    "line": 21,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModularWeight/Variantb765c5ecc1e4a5a21097a4707fef5f7df21271a16efeb034fdf261a0b74c925e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd5e8421a28c8896f9c466a38e8f23b69ac36eec684e9947112300c75685e82b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModularWeight/Variantb765c5ecc1e4a5a21097a4707fef5f7df21271a16efeb034fdf261a0b74c925e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:287f2941-0ca2-cf74-bc62-13e78d4047ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–26.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem phaseWeight_reflection (n : Nat) (h : n ≤ 60) :
    phaseWeight n = phaseWeight (phaseMirror n) := by
  unfold phaseWeight phaseMirror
  rw [Nat.sub_sub_self h]
  exact congrArg (fun x => 4 + 2 * (x / 5)) (Nat.min_comm n (60 - n))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModularWeight/Variantb765c5ecc1e4a5a21097a4707fef5f7df21271a16efeb034fdf261a0b74c925e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ModularWeight/Variantb765c5ecc1e4a5a21097a4707fef5f7df21271a16efeb034fdf261a0b74c925e.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ded047a5d4708a95540aa3e615646575f9006094` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
