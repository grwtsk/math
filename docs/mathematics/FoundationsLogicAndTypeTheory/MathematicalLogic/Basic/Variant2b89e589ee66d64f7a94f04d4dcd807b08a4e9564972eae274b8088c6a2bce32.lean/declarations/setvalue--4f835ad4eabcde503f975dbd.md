# setValue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ffab0aa11b65311803d84eff5ef38592668df87873499e9d6eed85838fba0b3a",
  "kind": "def",
  "lexical_name": "setValue",
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
  "slug": "setvalue--4f835ad4eabcde503f975dbd",
  "source": {
    "blob": "28475ff9dc119f4d9e359b8e4444e22b9ad97217",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 195,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2b89e589ee66d64f7a94f04d4dcd807b08a4e9564972eae274b8088c6a2bce32.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4f835ad4eabcde503f975dbda7b1cd5b347490e71b438ff8865ab242140765a0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2b89e589ee66d64f7a94f04d4dcd807b08a4e9564972eae274b8088c6a2bce32.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ffab0aa11b65311803d84eff5ef38592668df87873499e9d6eed85838fba0b3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def setValue {α β} (f : α ↪ β) (a : α) (b : β) [∀ a', Decidable (a' = a)]
    [∀ a', Decidable (f a' = b)] : α ↪ β :=
  ⟨fun a' => if a' = a then b else if f a' = b then f a else f a', by
    intro x y (h : ite _ _ _ = ite _ _ _)
    -- TODO: once we have `cc` we can avoid all the manual cases below by doing
    -- split_ifs at h <;> (try subst b) <;> (try simp only [f.injective.eq_iff] at *) <;> cc
    split_ifs at h with h₁ h₂ _ _ h₅ h₆ <;>
        (try subst b) <;>
        (try simp only [f.injective.eq_iff] at *)
    · rw[h₁,h₂]
    · rw[h₁,h]
    · rw[h₅,←h]
    · exact h₆.symm
    · exfalso; exact h₅ h.symm
    · exfalso; exact h₁ h
    · exact h ⟩
#align function.embedding.set_value Function.Embedding.setValue

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2b89e589ee66d64f7a94f04d4dcd807b08a4e9564972eae274b8088c6a2bce32.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2b89e589ee66d64f7a94f04d4dcd807b08a4e9564972eae274b8088c6a2bce32.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28475ff9dc119f4d9e359b8e4444e22b9ad97217` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
