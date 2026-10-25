# mem.decidable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:29e6e3ad677d66a9865fecd8989be807d732de56ff0232c857f9e2628da99bac",
  "kind": "def",
  "lexical_name": "mem.decidable",
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
  "slug": "mem-decidable--4fc59a0ba1a9cbd087914779",
  "source": {
    "blob": "66e1cea3a626b79a5705df59aa64caa95c060851",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 397,
    "line": 378,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variantc14aa679afeb94e167cf852d46a5ede71075c1bb037a64520f6821e2c20ea2c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4fc59a0ba1a9cbd087914779155bb110239e95497305d548c28990b38315ae34",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variantc14aa679afeb94e167cf852d46a5ede71075c1bb037a64520f6821e2c20ea2c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:29e6e3ad677d66a9865fecd8989be807d732de56ff0232c857f9e2628da99bac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 378–397.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
  def mem.decidable : ∀ (a : Lists α) (l : Lists' α true), Decidable (a ∈ l)
    | a, Lists'.nil => isFalse <| by rintro ⟨_, ⟨⟩, _⟩
    | a, Lists'.cons' b l₂ => by
      haveI :=
        have : sizeOf (⟨_, b⟩ : Lists α) < 1 + 1 + sizeOf b + sizeOf l₂ := by simp [sizeof_pos]
        Equiv.decidable a ⟨_, b⟩
      haveI :=
        have :
          SizeOf.sizeOf a + SizeOf.sizeOf l₂ <
            SizeOf.sizeOf a + SizeOf.sizeOf (Lists'.cons' b l₂) := by
          decreasing_tactic
        mem.decidable a l₂
      refine decidable_of_iff' (a ~ ⟨_, b⟩ ∨ a ∈ l₂) ?_
      rw [← Lists'.mem_cons]; rfl
  termination_by x y => sizeOf x + sizeOf y
end

attribute [instance] Equiv.decidable Subset.decidable mem.decidable

/-- Copy over the decidability to the `Setoid` instance. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variantc14aa679afeb94e167cf852d46a5ede71075c1bb037a64520f6821e2c20ea2c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lists/Variantc14aa679afeb94e167cf852d46a5ede71075c1bb037a64520f6821e2c20ea2c7.lean#L378).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66e1cea3a626b79a5705df59aa64caa95c060851` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
