# PatternArgKind

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b16e25aec0e06292fd5ee441d660ea2e113dfa4ea2ccc5c054bf33ca904f8b65",
  "kind": "inductive",
  "lexical_name": "PatternArgKind",
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
  "slug": "patternargkind--b25fb35cc29e55809570868b",
  "source": {
    "blob": "9d947cf9bc70039e5adf3ad5b7759178dd0d52bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 562,
    "line": 508,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchTheorem/Variant7862e0cc7cb98de3bcf3970865c0d8ef0926cd7112c0ec42a4d5d16d8502db50.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b25fb35cc29e55809570868b56e8c86c922bf67afd16bf44fd030db66ca6815c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchTheorem/Variant7862e0cc7cb98de3bcf3970865c0d8ef0926cd7112c0ec42a4d5d16d8502db50.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b16e25aec0e06292fd5ee441d660ea2e113dfa4ea2ccc5c054bf33ca904f8b65`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 508–562.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
inductive PatternArgKind where
  | /-- Argument is relevant for E-matching. -/
    relevant
  | /-- Instance implicit arguments are considered support and handled using `isDefEq`. -/
    instImplicit
  | /-- Proofs are ignored during E-matching. Lean is proof irrelevant. -/
    proof
  | /--
    Types and type formers are mostly ignored during E-matching, and processed using
    `isDefEq`. However, if the argument is of the form `C ..` where `C` is inductive type
    we process it as part of the pattern. Suppose we have `as bs : List α`, and a pattern
    candidate expression `as ++ bs`, i.e., `@HAppend.hAppend (List α) (List α) (List α) inst as bs`.
    If we completely ignore the types, the pattern will just be
    ```
    @HAppend.hAppend _ _ _ _ #1 #0
    ```
    This is not ideal because the E-matcher will try it in any goal that contains `++`,
    even if it does not even mention lists.
    -/
    typeFormer
  | /--
    `outParam` arguments are uniquely determined by type class resolution and should not
    be part of the e-matching pattern. Including them is redundant (the instance, which is
    already wildcarded, determines the `outParam` value) and harmful when the normalizer
    changes their syntactic form.

    **Motivation.** Consider the `ToInt` class used by the `grind` linear arithmetic module:
    ```
    class ToInt (α : Type) (range : outParam IntInterval) where ...
    instance : ToInt (Fin n) (.co 0 n) where ...
    @[grind =] theorem toInt_fin (x : Fin n) : ToInt.toInt x = x.val
    ```
    The elaborated pattern for `toInt_fin` is:
    ```
    @ToInt.toInt (Fin #1) (IntInterval.co 0 (NatCast.natCast #1)) _ #0
    ```
    The `range` argument `IntInterval.co 0 (NatCast.natCast #1)` is included in the pattern
    because the pattern generator treats it as relevant. However, the `grind` normalizer pushes
    `NatCast.natCast` inside arithmetic operations, rewriting `↑(n + 1)` to `↑n + 1`. So when
    `grind` processes `Fin (n + 1)`, the e-graph contains:
    ```
    @ToInt.toInt (Fin (n + 1)) (IntInterval.co 0 (↑n + 1)) inst x
    ```
    The pattern expects `NatCast.natCast #1` at the second position of `IntInterval.co`, but
    the e-graph has `HAdd.hAdd (NatCast.natCast n) 1` — a different head symbol. The pattern
    cannot match, and `toInt_fin` never fires.

    Since `outParam` arguments are determined by type class resolution (just like instance
    arguments, which are already wildcarded), they can be safely ignored in patterns. This is
    justified by the same reasoning: after e-matching finds candidate substitutions, the
    instantiation step checks all arguments via `isDefEq`, preserving soundness.
    -/
    outParam
    deriving Repr

````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchTheorem/Variant7862e0cc7cb98de3bcf3970865c0d8ef0926cd7112c0ec42a4d5d16d8502db50.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchTheorem/Variant7862e0cc7cb98de3bcf3970865c0d8ef0926cd7112c0ec42a4d5d16d8502db50.lean#L508).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d947cf9bc70039e5adf3ad5b7759178dd0d52bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
