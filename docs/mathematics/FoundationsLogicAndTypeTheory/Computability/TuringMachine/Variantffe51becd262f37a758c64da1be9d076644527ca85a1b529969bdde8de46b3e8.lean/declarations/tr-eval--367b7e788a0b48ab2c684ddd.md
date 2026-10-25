# tr_eval'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7fd8eda6-4cd7-8523-267a-0205431c2759",
  "kind": "theorem",
  "lexical_name": "tr_eval'",
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
  "slug": "tr-eval--367b7e788a0b48ab2c684ddd",
  "source": {
    "blob": "8e5b31d39d6dea47790cb5fec7eafa75b7029607",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1033,
    "line": 982,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Variantffe51becd262f37a758c64da1be9d076644527ca85a1b529969bdde8de46b3e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:367b7e788a0b48ab2c684dddaa0f3456a7e502fd6f1541f986b5b637d8c6420b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Variantffe51becd262f37a758c64da1be9d076644527ca85a1b529969bdde8de46b3e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7fd8eda6-4cd7-8523-267a-0205431c2759`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 982–1033.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tr_eval' {σ₁ σ₂} (f₁ : σ₁ → Option σ₁) (f₂ : σ₂ → Option σ₂) (tr : σ₁ → σ₂)
    (H : Respects f₁ f₂ fun a b ↦ tr a = b) (a₁) : eval f₂ (tr a₁) = tr <$> eval f₁ a₁ :=
  Part.ext fun b₂ ↦
    ⟨fun h ↦
      let ⟨b₁, bb, hb⟩ := tr_eval_rev H rfl h
      (Part.mem_map_iff _).2 ⟨b₁, hb, bb⟩,
      fun h ↦ by
      rcases(Part.mem_map_iff _).1 h with ⟨b₁, ab, bb⟩
      rcases tr_eval H rfl ab with ⟨_, rfl, h⟩
      rwa [bb] at h⟩
#align turing.tr_eval' Turing.tr_eval'

/-!
## The TM0 model

A TM0 turing machine is essentially a Post-Turing machine, adapted for type theory.

A Post-Turing machine with symbol type `Γ` and label type `Λ` is a function
`Λ → Γ → Option (Λ × Stmt)`, where a `Stmt` can be either `move left`, `move right` or `write a`
for `a : Γ`. The machine works over a "tape", a doubly-infinite sequence of elements of `Γ`, and
an instantaneous configuration, `Cfg`, is a label `q : Λ` indicating the current internal state of
the machine, and a `Tape Γ` (which is essentially `ℤ →₀ Γ`). The evolution is described by the
`step` function:

* If `M q T.head = none`, then the machine halts.
* If `M q T.head = some (q', s)`, then the machine performs action `s : Stmt` and then transitions
  to state `q'`.

The initial state takes a `List Γ` and produces a `Tape Γ` where the head of the list is the head
of the tape and the rest of the list extends to the right, with the left side all blank. The final
state takes the entire right side of the tape right or equal to the current position of the
machine. (This is actually a `ListBlank Γ`, not a `List Γ`, because we don't know, at this level
of generality, where the output ends. If equality to `default : Γ` is decidable we can trim the list
to remove the infinite tail of blanks.)
-/


namespace TM0

-- "TM0"
set_option linter.uppercaseLean3 false

section

variable (Γ : Type*) [Inhabited Γ]

-- type of tape symbols
variable (Λ : Type*) [Inhabited Λ]

-- type of "labels" or TM states
/-- A Turing machine "statement" is just a command to either move
  left or right, or write a symbol on the tape. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Variantffe51becd262f37a758c64da1be9d076644527ca85a1b529969bdde8de46b3e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/TuringMachine/Variantffe51becd262f37a758c64da1be9d076644527ca85a1b529969bdde8de46b3e8.lean#L982).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e5b31d39d6dea47790cb5fec7eafa75b7029607` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
