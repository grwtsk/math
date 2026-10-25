# recOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3efde5eee61c92a2240dc15444667d5533d5a29c7fabb91034248a790ab070a4",
  "kind": "def",
  "lexical_name": "recOn",
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
  "slug": "recon--788a741a97e8fd8ad84fe6ac",
  "source": {
    "blob": "78e96d284523ba03b17d77bc31a38269fdecef44",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1220,
    "line": 1214,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variant98d5b0aa3707c15596a0acaa0228fd50fb8e57a226743c7c9a112f1ffe10cc8a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:788a741a97e8fd8ad84fe6ac15ccf06236522c957420638ed641765ff17fef0e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variant98d5b0aa3707c15596a0acaa0228fd50fb8e57a226743c7c9a112f1ffe10cc8a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3efde5eee61c92a2240dc15444667d5533d5a29c7fabb91034248a790ab070a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1214–1220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def recOn {C : NONote → Sort*} (o : NONote) (H0 : C 0)
    (H1 : ∀ e n a h, C e → C a → C (oadd e n a h)) : C o := by
  obtain ⟨o, h⟩ := o; induction o with
  | zero => exact H0
  | oadd e n a IHe IHa => exact H1 ⟨e, h.fst⟩ n ⟨a, h.snd⟩ h.snd' (IHe _) (IHa _)

/-- Addition of ordinal notations -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variant98d5b0aa3707c15596a0acaa0228fd50fb8e57a226743c7c9a112f1ffe10cc8a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Notation/Variant98d5b0aa3707c15596a0acaa0228fd50fb8e57a226743c7c9a112f1ffe10cc8a.lean#L1214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78e96d284523ba03b17d77bc31a38269fdecef44` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
