# zsmul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b87e282b12f811321d2f02fc9c8bdc41a983a8ed888942f2d5af9bc600f8ad5a",
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
  "slug": "zsmul--5aaf86ee45a2fbecd935f32e",
  "source": {
    "blob": "2ff7f7bf838b15fae12a1e8356af7b27065496ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 90,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Envelope/Variante36a69fe2fe657d4662c223192c1cf240b3e0ddb7ef5a25ed87800cffd3dae4c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5aaf86ee45a2fbecd935f32e320e17e3ddb94e1ad3402a43a9bea6643e06f5ce",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Envelope/Variante36a69fe2fe657d4662c223192c1cf240b3e0ddb7ef5a25ed87800cffd3dae4c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b87e282b12f811321d2f02fc9c8bdc41a983a8ed888942f2d5af9bc600f8ad5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–103.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Envelope/Variante36a69fe2fe657d4662c223192c1cf240b3e0ddb7ef5a25ed87800cffd3dae4c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Envelope/Variante36a69fe2fe657d4662c223192c1cf240b3e0ddb7ef5a25ed87800cffd3dae4c.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ff7f7bf838b15fae12a1e8356af7b27065496ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
