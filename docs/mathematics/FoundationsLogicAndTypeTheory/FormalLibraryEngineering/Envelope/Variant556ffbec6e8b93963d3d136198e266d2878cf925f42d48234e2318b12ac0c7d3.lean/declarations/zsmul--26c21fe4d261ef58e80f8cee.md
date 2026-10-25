# zsmul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4c257ba4a5eae13096ee3ba8cab9573fc7b42c58fdee8d6292b17bd2077a877c",
  "kind": "def",
  "lexical_name": "zsmul",
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
  "slug": "zsmul--26c21fe4d261ef58e80f8cee",
  "source": {
    "blob": "c5ecc6373aff39b2d2e9968d2e422d2518b4a883",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 82,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Envelope/Variant556ffbec6e8b93963d3d136198e266d2878cf925f42d48234e2318b12ac0c7d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:26c21fe4d261ef58e80f8ceeb3bd083608dafeaa2eff9522b133d43566636b04",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Envelope/Variant556ffbec6e8b93963d3d136198e266d2878cf925f42d48234e2318b12ac0c7d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4c257ba4a5eae13096ee3ba8cab9573fc7b42c58fdee8d6292b17bd2077a877c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[local simp] def zsmul (n : Int) (q : Q α) : (Q α) :=
  q.liftOn (fun (a, b) => if n < 0 then Q.mk (n.natAbs • b, n.natAbs • a) else Q.mk (n.natAbs • a, n.natAbs • b))
    (by intro (a₁, b₁) (a₂, b₂)
        simp; intro k h;
        split
        · apply Quot.sound; simp
          refine ⟨n.natAbs • k, ?_⟩
          replace h := congrArg (fun x : α => n.natAbs • x) h
          simpa [NatModule.nsmul_add] using h.symm
        · apply Quot.sound; simp
          refine ⟨n.natAbs • k, ?_⟩
          replace h := congrArg (fun x : α => n.natAbs • x) h
          simpa [NatModule.nsmul_add] using h)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Envelope/Variant556ffbec6e8b93963d3d136198e266d2878cf925f42d48234e2318b12ac0c7d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Envelope/Variant556ffbec6e8b93963d3d136198e266d2878cf925f42d48234e2318b12ac0c7d3.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5ecc6373aff39b2d2e9968d2e422d2518b4a883` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
