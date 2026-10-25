# instLawfulMonad

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3ff6d70f49991f1329cc099687be92037c141b86b0e2c38bd7a7564c5960e1ac",
  "kind": "instance",
  "lexical_name": "instLawfulMonad",
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
  "slug": "instlawfulmonad--0e8371b0c1c9d5ea2ccf56fa",
  "source": {
    "blob": "50a384c11172638310db8f08d82afd895ccfedcd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 138,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Erased/Variant125036201a88771f87923be6448ca68e15ab56b02e600f3120423c18c67048ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0e8371b0c1c9d5ea2ccf56fabd5abefa4cf7e8424e29f6deb5db0fbdb7a7fb3e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Erased/Variant125036201a88771f87923be6448ca68e15ab56b02e600f3120423c18c67048ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3ff6d70f49991f1329cc099687be92037c141b86b0e2c38bd7a7564c5960e1ac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected instance instLawfulMonad : LawfulMonad Erased :=
  { id_map := by intros; ext; simp
    map_const := by intros; ext; simp [Functor.mapConst]
    pure_bind := by intros; ext; simp
    bind_assoc := by intros; ext; simp
    bind_pure_comp := by intros; ext; simp
    bind_map := by intros; ext; simp [Seq.seq]
    seqLeft_eq := by intros; ext; simp [Seq.seq, Functor.mapConst, SeqLeft.seqLeft]
    seqRight_eq := by intros; ext; simp [Seq.seq, Functor.mapConst, SeqRight.seqRight]
    pure_seq := by intros; ext; simp [Seq.seq, Functor.mapConst, SeqRight.seqRight] }

end Erased
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Erased/Variant125036201a88771f87923be6448ca68e15ab56b02e600f3120423c18c67048ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Erased/Variant125036201a88771f87923be6448ca68e15ab56b02e600f3120423c18c67048ec.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `50a384c11172638310db8f08d82afd895ccfedcd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
