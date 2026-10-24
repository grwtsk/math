# filesystemFirstReturn_induces_homologyIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3cab35a97c204da74417c52fe79e07cf5cd9270120aa9f134eb64aa3c9fe7eda",
  "kind": "def",
  "lexical_name": "filesystemFirstReturn_induces_homologyIso",
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
  "slug": "filesystemfirstreturn-induces-homologyiso--61aa5bb10dea77030359fe10",
  "source": {
    "blob": "74e45cd5e714c148d3dc9864b7affbb39764210f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 72,
    "path": "GRWTSK/Algebra/Transport/Variant9237cf688dae2fd3e06b5c1b2000f9376bc364620dccd155f56c36abf8076732.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:61aa5bb10dea77030359fe10da134a02991803b8b6b2b17083d6ad99ad0ec15a",
  "verification": {
    "reference": "docs/verification/Algebra/Transport/Variant9237cf688dae2fd3e06b5c1b2000f9376bc364620dccd155f56c36abf8076732.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3cab35a97c204da74417c52fe79e07cf5cd9270120aa9f134eb64aa3c9fe7eda`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def filesystemFirstReturn_induces_homologyIso
    {Snapshot : Type u}
    {F : Type v}
    [Field F] [Fintype F] [Algebra BinMatGalois.GF2 F]
    {r : Nat}
    (C : FilesystemMatrixCodec Snapshot r)
    (E : RowFieldEncoding F r)
    (rowPerm : ∀ k, Equiv.Perm (Fin k → F))
    (M : FilesystemEditPresentation Snapshot)
    (A : M.Action (filesystemFirstReturnPerm C E rowPerm))
    (q : Nat) :
    M.toChainComplex.homology q ≅ M.toChainComplex.homology q :=
  (A.toHomologicalLift).homologyIso q

/--
The induced filesystem first-return homology automorphism preserves and
reflects integral torsion classes.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Transport/Variant9237cf688dae2fd3e06b5c1b2000f9376bc364620dccd155f56c36abf8076732.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Transport/Variant9237cf688dae2fd3e06b5c1b2000f9376bc364620dccd155f56c36abf8076732.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74e45cd5e714c148d3dc9864b7affbb39764210f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
