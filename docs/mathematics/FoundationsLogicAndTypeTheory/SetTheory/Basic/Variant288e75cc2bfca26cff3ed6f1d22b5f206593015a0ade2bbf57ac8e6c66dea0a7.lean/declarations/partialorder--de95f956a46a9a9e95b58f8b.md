# partialOrder

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dd64474e0a5b50ba2334655443ea5b17a81c64fbe4e7a699e9c75cbef2782fe3",
  "kind": "instance",
  "lexical_name": "partialOrder",
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
  "slug": "partialorder--de95f956a46a9a9e95b58f8b",
  "source": {
    "blob": "3e85583c4ae05dc9f06d3e3680c3196b8476d462",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 292,
    "line": 271,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Basic/Variant288e75cc2bfca26cff3ed6f1d22b5f206593015a0ade2bbf57ac8e6c66dea0a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:de95f956a46a9a9e95b58f8b5086ddeece1b455fbcfd05edf2a5798272dc6281",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Basic/Variant288e75cc2bfca26cff3ed6f1d22b5f206593015a0ade2bbf57ac8e6c66dea0a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dd64474e0a5b50ba2334655443ea5b17a81c64fbe4e7a699e9c75cbef2782fe3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 271–292.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance partialOrder : PartialOrder Ordinal where
  le a b :=
    Quotient.liftOn₂ a b (fun ⟨_, r, _⟩ ⟨_, s, _⟩ => Nonempty (r ≼i s))
      fun _ _ _ _ ⟨f⟩ ⟨g⟩ => propext
        ⟨fun ⟨h⟩ => ⟨f.symm.toInitialSeg.trans <| h.trans g.toInitialSeg⟩, fun ⟨h⟩ =>
          ⟨f.toInitialSeg.trans <| h.trans g.symm.toInitialSeg⟩⟩
  lt a b :=
    Quotient.liftOn₂ a b (fun ⟨_, r, _⟩ ⟨_, s, _⟩ => Nonempty (r ≺i s))
      fun _ _ _ _ ⟨f⟩ ⟨g⟩ => propext
        ⟨fun ⟨h⟩ => ⟨PrincipalSeg.relIsoTrans f.symm <| h.transRelIso g⟩,
          fun ⟨h⟩ => ⟨PrincipalSeg.relIsoTrans f <| h.transRelIso g.symm⟩⟩
  le_refl := Quot.ind fun ⟨_, _, _⟩ => ⟨InitialSeg.refl _⟩
  le_trans a b c :=
    Quotient.inductionOn₃ a b c fun _ _ _ ⟨f⟩ ⟨g⟩ => ⟨f.trans g⟩
  lt_iff_le_not_ge a b :=
    Quotient.inductionOn₂ a b fun _ _ =>
      ⟨fun ⟨f⟩ => ⟨⟨f⟩, fun ⟨g⟩ => (f.transInitial g).irrefl⟩, fun ⟨⟨f⟩, h⟩ =>
        f.principalSumRelIso.recOn (fun g => ⟨g⟩) fun g => (h ⟨g.symm.toInitialSeg⟩).elim⟩
  le_antisymm a b :=
    Quotient.inductionOn₂ a b fun _ _ ⟨h₁⟩ ⟨h₂⟩ =>
      Quot.sound ⟨InitialSeg.antisymm h₁ h₂⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Basic/Variant288e75cc2bfca26cff3ed6f1d22b5f206593015a0ade2bbf57ac8e6c66dea0a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Basic/Variant288e75cc2bfca26cff3ed6f1d22b5f206593015a0ade2bbf57ac8e6c66dea0a7.lean#L271).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e85583c4ae05dc9f06d3e3680c3196b8476d462` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
