# boundConfig

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e94f88de7083124542117ac8569003e6e8040305e16f40b68c19086f1081c38c",
  "kind": "def",
  "lexical_name": "boundConfig",
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
  "slug": "boundconfig--f5c7aabfa81bf28230d3c87f",
  "source": {
    "blob": "66bc71632031e01e3c10d5081fd11d1c7f60cd71",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 214,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant8bf73e693c915ca147273629363f1b39ba31c24833cd1f55005179a9118c57cb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f5c7aabfa81bf28230d3c87ff0fdb352169d80027e9dff88319aa42f5701d8db",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant8bf73e693c915ca147273629363f1b39ba31c24833cd1f55005179a9118c57cb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e94f88de7083124542117ac8569003e6e8040305e16f40b68c19086f1081c38c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def boundConfig : Aesop.Options := {
  enableSimp := false,
  terminal := true
}

end Mathlib.Tactic.Bound

/-- `bound` tactic for proving inequalities via straightforward recursion on expression structure.

An example use case is

```
-- Calc example: A weak lower bound for `z ↦ z^2 + c`
lemma le_sqr_add (c z : ℝ) (cz : ‖c‖ ≤ ‖z‖) (z3 : 3 ≤ ‖z‖) :
    2 * ‖z‖ ≤ ‖z^2 + c‖ := by
  calc ‖z^2 + c‖
    _ ≥ ‖z^2‖ - ‖c‖ := by bound
    _ ≥ ‖z^2‖ - ‖z‖ := by  bound
    _ ≥ (‖z‖ - 1) * ‖z‖ := by
      rw [mul_comm, mul_sub_one, ← pow_two, ← norm_pow]
    _ ≥ 2 * ‖z‖ := by bound
```

`bound` is built on top of `aesop`, and uses
1. Apply lemmas registered via the `@[bound]` attribute
2. Forward lemmas registered via the `@[bound_forward]` attribute
3. Local hypotheses from the context
4. Optionally: additional hypotheses provided as `bound [h₀, h₁]` or similar. These are added to the
   context as if by `have := hᵢ`.

The functionality of `bound` overlaps with `positivity` and `gcongr`, but can jump back and forth
between `0 ≤ x` and `x ≤ y`-type inequalities.  For example, `bound` proves
  `0 ≤ c → b ≤ a → 0 ≤ a * c - b * c`
by turning the goal into `b * c ≤ a * c`, then using `mul_le_mul_of_nonneg_right`.  `bound` also
contains lemmas for goals of the form `1 ≤ x, 1 < x, x ≤ 1, x < 1`.  Conversely, `gcongr` can prove
inequalities for more types of relations, supports all `positivity` functionality, and is likely
faster since it is more specialized (not built atop `aesop`). -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant8bf73e693c915ca147273629363f1b39ba31c24833cd1f55005179a9118c57cb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Bound/Variant8bf73e693c915ca147273629363f1b39ba31c24833cd1f55005179a9118c57cb.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66bc71632031e01e3c10d5081fd11d1c7f60cd71` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
