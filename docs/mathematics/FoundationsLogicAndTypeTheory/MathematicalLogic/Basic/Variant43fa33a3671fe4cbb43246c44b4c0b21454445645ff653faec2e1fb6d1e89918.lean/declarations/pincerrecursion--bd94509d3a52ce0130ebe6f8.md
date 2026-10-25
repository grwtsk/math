# pincerRecursion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dc32116a09176875d56a2d61ccfb64ad959d89710a0cd6e890564066e56fe6c4",
  "kind": "def",
  "lexical_name": "pincerRecursion",
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
  "slug": "pincerrecursion--bd94509d3a52ce0130ebe6f8",
  "source": {
    "blob": "098ebfc22e883c6693f8a11bd08dca22b9a9302f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 576,
    "line": 561,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant43fa33a3671fe4cbb43246c44b4c0b21454445645ff653faec2e1fb6d1e89918.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bd94509d3a52ce0130ebe6f8291107ca7aa2aa503a6b4f8600aebd3ed441a05b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant43fa33a3671fe4cbb43246c44b4c0b21454445645ff653faec2e1fb6d1e89918.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dc32116a09176875d56a2d61ccfb64ad959d89710a0cd6e890564066e56fe6c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 561–576.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pincerRecursion {P : ℕ → ℕ → Sort*} (Ha0 : ∀ a : ℕ, P a 0) (H0b : ∀ b : ℕ, P 0 b)
    (H : ∀ x y : ℕ, P x y.succ → P x.succ y → P x.succ y.succ) : ∀ n m : ℕ, P n m
  | a, 0 => Ha0 a
  | 0, b => H0b b
  | Nat.succ a, Nat.succ b => H _ _ (pincerRecursion Ha0 H0b H _ _) (pincerRecursion Ha0 H0b H _ _)
termination_by pincerRecursion Ha0 Hab H n m => n + m
#align nat.pincer_recursion Nat.pincerRecursion

-- Porting note:
-- we can't put this on the definition itself because of
-- https://github.com/leanprover/lean4/issues/1900
attribute [elab_as_elim] pincerRecursion

/-- Recursion starting at a non-zero number: given a map `C k → C (k+1)` for each `k ≥ n`,
there is a map from `C n` to each `C m`, `n ≤ m`. -/
@[elab_as_elim]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant43fa33a3671fe4cbb43246c44b4c0b21454445645ff653faec2e1fb6d1e89918.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant43fa33a3671fe4cbb43246c44b4c0b21454445645ff653faec2e1fb6d1e89918.lean#L561).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `098ebfc22e883c6693f8a11bd08dca22b9a9302f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
