# _root_.GRWTSK.Algebra.LinearAlgebra.VecEmpty.Variant84187f87592e4168281b66fc0eb97474cd386bd5cba913cf202e15a19aa798d7.PiFin.toExpr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4effc02c4fdf4532eea10732d1d0b750f94967475c95a84e61a3725b824c2f12",
  "kind": "instance",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.VecEmpty.Variant84187f87592e4168281b66fc0eb97474cd386bd5cba913cf202e15a19aa798d7.PiFin.toExpr",
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
  "slug": "root-grwtsk-algebra-linearalgebra-vecempty-variant84187f87592e4168281b66--ee843f9acf4a4929a2f276c4",
  "source": {
    "blob": "235ee4351dd3b285928c42c2ac75a6317901333f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 268,
    "line": 230,
    "path": "GRWTSK/Algebra/LinearAlgebra/VecNotation/Variant33bc1e7bc568ee1789fa9782316ff5b01d33bb488e764c86e16be714c7c5d979.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ee843f9acf4a4929a2f276c4075594f2c7701e26d454fde3e3a0a60c2baa58c3",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/VecNotation/Variant33bc1e7bc568ee1789fa9782316ff5b01d33bb488e764c86e16be714c7c5d979.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4effc02c4fdf4532eea10732d1d0b750f94967475c95a84e61a3725b824c2f12`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–268.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected instance _root_.GRWTSK.Algebra.LinearAlgebra.VecEmpty.Variant84187f87592e4168281b66fc0eb97474cd386bd5cba913cf202e15a19aa798d7.PiFin.toExpr [ToLevel.{u}] [ToExpr α] (n : ℕ) : ToExpr (Fin n → α) :=
  have lu := toLevel.{u}
  have eα : Q(Type $lu) := toTypeExpr α
  have toTypeExpr := q(Fin $n → $eα)
  match n with
  | 0 => { toTypeExpr, toExpr := fun _ => q(@vecEmpty $eα) }
  | n + 1 =>
    { toTypeExpr, toExpr := fun v =>
      have := PiFin.toExpr n
      have eh : Q($eα) := toExpr (vecHead v)
      have et : Q(Fin $n → $eα) := toExpr (vecTail v)
      q(vecCons $eh $et) }
#align pi_fin.reflect PiFin.toExpr

-- Porting note: the next decl is commented out. TODO(eric-wieser)

-- /-- Convert a vector of pexprs to the pexpr constructing that vector.-/
-- unsafe def _root_.pi_fin.to_pexpr : ∀ {n}, (Fin n → pexpr) → pexpr
--   | 0, v => ``(![])
--   | n + 1, v => ``(vecCons $(v 0) $(_root_.pi_fin.to_pexpr <| vecTail v))
-- #align pi_fin.to_pexpr pi_fin.to_pexpr

/-! ### `bit0` and `bit1` indices
The following definitions and `simp` lemmas are used to allow
numeral-indexed element of a vector given with matrix notation to
be extracted by `simp` in Lean 3 (even when the numeral is larger than the
number of elements in the vector, which is taken modulo that number
of elements by virtue of the semantics of `bit0` and `bit1` and of
addition on `Fin n`).
-/


/-- `vecAppend ho u v` appends two vectors of lengths `m` and `n` to produce
one of length `o = m + n`. This is a variant of `Fin.append` with an additional `ho` argument,
which provides control of definitional equality for the vector length.

This turns out to be helpful when providing simp lemmas to reduce `![a, b, c] n`, and also means
that `vecAppend ho u v 0` is valid. `Fin.append u v 0` is not valid in this case because there is
no `Zero (Fin (m + n))` instance. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/VecNotation/Variant33bc1e7bc568ee1789fa9782316ff5b01d33bb488e764c86e16be714c7c5d979.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/VecNotation/Variant33bc1e7bc568ee1789fa9782316ff5b01d33bb488e764c86e16be714c7c5d979.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `235ee4351dd3b285928c42c2ac75a6317901333f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
