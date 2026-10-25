# normLtAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:604789a8e83d8fab5deb77e8387c30af1691def64bf51df7e397be242192dece",
  "kind": "def",
  "lexical_name": "normLtAux",
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
  "slug": "normltaux--5a9f3082b83892dfe6df6389",
  "source": {
    "blob": "b62558e7dda80db4c65b32a34c06dfe02b1bae88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 300,
    "line": 275,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Level/Variant560a7b5fde58937f69e9cf85b96d33f0aafcac2a9aec64776347de5e611d1303.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5a9f3082b83892dfe6df63892674649c136bab37c696e749ad5385aff4c7f1c9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Level/Variant560a7b5fde58937f69e9cf85b96d33f0aafcac2a9aec64776347de5e611d1303.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:604789a8e83d8fab5deb77e8387c30af1691def64bf51df7e397be242192dece`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 275–300.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def normLtAux : Level → Nat → Level → Nat → Bool
  | succ l₁, k₁, l₂, k₂ => normLtAux l₁ (k₁+1) l₂ k₂
  | l₁, k₁, succ l₂, k₂ => normLtAux l₁ k₁ l₂ (k₂+1)
  | l₁@(max l₁₁ l₁₂), k₁, l₂@(max l₂₁ l₂₂), k₂ =>
    if l₁ == l₂ then k₁ < k₂
    else if l₁₁ != l₂₁ then normLtAux l₁₁ 0 l₂₁ 0
    else normLtAux l₁₂ 0 l₂₂ 0
  | l₁@(imax l₁₁ l₁₂), k₁, l₂@(imax l₂₁ l₂₂), k₂ =>
    if l₁ == l₂ then k₁ < k₂
    else if l₁₁ != l₂₁ then normLtAux l₁₁ 0 l₂₁ 0
    else normLtAux l₁₂ 0 l₂₂ 0
  | param n₁, k₁, param n₂, k₂ => if n₁ == n₂ then k₁ < k₂ else Name.lt n₁ n₂ -- use `Name.lt` because it is lexicographical
  /-
    We also use `Name.lt` in the following case to make sure universe parameters in a declaration
    are not affected by shifted indices. We used to use `Name.quickLt` which is not stable over shifted indices (the hashcodes change),
    and changes to the elaborator could affect the universe parameters and break code that relies on an explicit order.
    Example: test `tests/lean/343.lean`.
   -/
  | mvar n₁, k₁, mvar n₂, k₂ => if n₁ == n₂ then k₁ < k₂ else Name.lt n₁.name n₂.name
  | l₁, k₁, l₂, k₂ => if l₁ == l₂ then k₁ < k₂ else ctorToNat l₁ < ctorToNat l₂

/--
  A total order on level expressions that has the following properties
  - `succ l` is an immediate successor of `l`.
  - `zero` is the minimal element.
 This total order is used in the normalization procedure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Level/Variant560a7b5fde58937f69e9cf85b96d33f0aafcac2a9aec64776347de5e611d1303.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Level/Variant560a7b5fde58937f69e9cf85b96d33f0aafcac2a9aec64776347de5e611d1303.lean#L275).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b62558e7dda80db4c65b32a34c06dfe02b1bae88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
