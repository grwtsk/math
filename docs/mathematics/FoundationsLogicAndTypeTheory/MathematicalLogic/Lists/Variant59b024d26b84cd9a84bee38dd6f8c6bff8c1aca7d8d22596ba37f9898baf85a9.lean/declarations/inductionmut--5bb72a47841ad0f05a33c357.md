# inductionMut

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aeae8a5533bfcbcb3c722f99068e6446e72752320ef5ef1cc7590c40433ed9a4",
  "kind": "def",
  "lexical_name": "inductionMut",
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
  "slug": "inductionmut--5bb72a47841ad0f05a33c357",
  "source": {
    "blob": "14758f1ff276b38974f4974f3c19c5fe426581a0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 261,
    "line": 242,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant59b024d26b84cd9a84bee38dd6f8c6bff8c1aca7d8d22596ba37f9898baf85a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5bb72a47841ad0f05a33c35738cd677c8fa628adccf805fc5ddd450a23510a77",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant59b024d26b84cd9a84bee38dd6f8c6bff8c1aca7d8d22596ba37f9898baf85a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:aeae8a5533bfcbcb3c722f99068e6446e72752320ef5ef1cc7590c40433ed9a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 242–261.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def inductionMut (C : Lists α → Sort*) (D : Lists' α true → Sort*)
    (C0 : ∀ a, C (atom a)) (C1 : ∀ l, D l → C (of' l))
    (D0 : D Lists'.nil) (D1 : ∀ a l, C a → D l → D (Lists'.cons a l)) :
    PProd (∀ l, C l) (∀ l, D l) := by
  suffices ∀ {b} (l : Lists' α b),
      PProd (C ⟨_, l⟩)
        (match b, l with
        | true, l => D l
        | false, _ => PUnit)
    by exact ⟨fun ⟨b, l⟩ => (this _).1, fun l => (this l).2⟩
  intro b l
  induction l with
  | atom => exact ⟨C0 _, ⟨⟩⟩
  | nil => exact ⟨C1 _ D0, D0⟩
  | cons' a l IH₁ IH =>
    have : D (Lists'.cons' a l) := D1 ⟨_, _⟩ _ IH₁.1 IH.2
    exact ⟨C1 _ this, this⟩

/-- Membership of ZFA list. A ZFA list belongs to a proper ZFA list if it belongs to the latter as a
proper ZFA prelist. An atom has no members. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant59b024d26b84cd9a84bee38dd6f8c6bff8c1aca7d8d22596ba37f9898baf85a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variant59b024d26b84cd9a84bee38dd6f8c6bff8c1aca7d8d22596ba37f9898baf85a9.lean#L242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14758f1ff276b38974f4974f3c19c5fe426581a0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
