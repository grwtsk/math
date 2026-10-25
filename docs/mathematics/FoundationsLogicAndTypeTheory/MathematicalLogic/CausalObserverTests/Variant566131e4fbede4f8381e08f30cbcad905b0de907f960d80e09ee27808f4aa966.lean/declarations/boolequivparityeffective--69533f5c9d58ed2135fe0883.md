# boolEquivParityEffective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b468809e495bf66f43a31e68a91daf9b6b528141edc68c46ab07b0bd6b64fd59",
  "kind": "def",
  "lexical_name": "boolEquivParityEffective",
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
  "slug": "boolequivparityeffective--69533f5c9d58ed2135fe0883",
  "source": {
    "blob": "a3af8826f1ed220cf619c262d0b7db61cbc9e892",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 156,
    "line": 138,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/CausalObserverTests/Variant566131e4fbede4f8381e08f30cbcad905b0de907f960d80e09ee27808f4aa966.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:69533f5c9d58ed2135fe08836325cf94bfd421f535a17e554f8574effb045434",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/CausalObserverTests/Variant566131e4fbede4f8381e08f30cbcad905b0de907f960d80e09ee27808f4aa966.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b468809e495bf66f43a31e68a91daf9b6b528141edc68c46ab07b0bd6b64fd59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–156.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def boolEquivParityEffective :
    Bool ≃ parityRepresentation.EffectiveMemory where
  toFun
    | false => ⟨false, ⟨(0 : Fin 4), by
        change fin4Parity 0 = false
        native_decide⟩⟩
    | true => ⟨true, ⟨(1 : Fin 4), by
        change fin4Parity 1 = true
        native_decide⟩⟩
  invFun memory := memory.1
  left_inv := by
    intro parity
    cases parity <;> rfl
  right_inv := by
    rintro ⟨parity, hparity⟩
    apply Subtype.ext
    cases parity <;> rfl

/-- The explicit two-state model composed with causal minimality. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/CausalObserverTests/Variant566131e4fbede4f8381e08f30cbcad905b0de907f960d80e09ee27808f4aa966.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/CausalObserverTests/Variant566131e4fbede4f8381e08f30cbcad905b0de907f960d80e09ee27808f4aa966.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3af8826f1ed220cf619c262d0b7db61cbc9e892` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
