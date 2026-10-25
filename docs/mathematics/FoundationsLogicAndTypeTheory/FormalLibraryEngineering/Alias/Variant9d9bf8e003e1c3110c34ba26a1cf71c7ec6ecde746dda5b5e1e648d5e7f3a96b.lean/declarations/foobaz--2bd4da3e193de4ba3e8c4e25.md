# foobaz

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6a4d14e9d4183c2afd7218d27ab55882b94a17f7457e07bba83695075f43b7e9",
  "kind": "def",
  "lexical_name": "foobaz",
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
  "slug": "foobaz--2bd4da3e193de4ba3e8c4e25",
  "source": {
    "blob": "f63c7a65e960124ef114b813a268eb52113faa53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 66,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alias/Variant9d9bf8e003e1c3110c34ba26a1cf71c7ec6ecde746dda5b5e1e648d5e7f3a96b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2bd4da3e193de4ba3e8c4e2514c8f27ed5ea00fa350d625e5232ec55c09dbfa2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alias/Variant9d9bf8e003e1c3110c34ba26a1cf71c7ec6ecde746dda5b5e1e648d5e7f3a96b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6a4d14e9d4183c2afd7218d27ab55882b94a17f7457e07bba83695075f43b7e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def foobaz : Nat → Nat := id
alias foobaz1 := foobaz

/--
error: failed to compile definition, consider marking it as 'noncomputable' because
it depends on 'A.foobaz1', and it does not have executable code
-/
#guard_msgs in def foobaz2 (n : Nat) := foobaz1 n

noncomputable alias foobaz3 := id
/--
error: failed to compile definition, consider marking it as 'noncomputable' because
it depends on 'A.foobaz3', and it does not have executable code
-/
#guard_msgs in def foobaz4 (n : Nat) := foobaz3 n

/- Test unsafe -/

/-- doc string for barbaz -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alias/Variant9d9bf8e003e1c3110c34ba26a1cf71c7ec6ecde746dda5b5e1e648d5e7f3a96b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Alias/Variant9d9bf8e003e1c3110c34ba26a1cf71c7ec6ecde746dda5b5e1e648d5e7f3a96b.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f63c7a65e960124ef114b813a268eb52113faa53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
