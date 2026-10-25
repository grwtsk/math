# isMatchCongrEqConst

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f9e8ebb8529060ce5a00ee6170ba4e117f6b95cadece60790ac7d999be068530",
  "kind": "def",
  "lexical_name": "isMatchCongrEqConst",
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
  "slug": "ismatchcongreqconst--6bc9259504b15071eaf978f5",
  "source": {
    "blob": "9d947cf9bc70039e5adf3ad5b7759178dd0d52bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 185,
    "line": 152,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchTheorem/Variant7862e0cc7cb98de3bcf3970865c0d8ef0926cd7112c0ec42a4d5d16d8502db50.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6bc9259504b15071eaf978f59974bd5e8f6ac138443b0ee4f4d2fd361f6e9b87",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchTheorem/Variant7862e0cc7cb98de3bcf3970865c0d8ef0926cd7112c0ec42a4d5d16d8502db50.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f9e8ebb8529060ce5a00ee6170ba4e117f6b95cadece60790ac7d999be068530`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–185.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private def isMatchCongrEqConst (e : Expr) : CoreM Bool := do
  let .const declName _ := e | return false
  isMatchCongrEqDeclName declName

/--
Given the type of a `match` congruence equation, annotate the discriminants using
the gadgets `Grind.genPattern` and `Grind.genHEqPattern`.
For example, consider the following `match` congruence theorem type
```
forall
  (motive : Option Nat → Sort u_1) (a✝ : Option Nat)
  (h_1 : a✝ = none → motive none)
  (h_2 : (val : Nat) → a✝ = some val → motive (some val))
  (val✝ : Nat)
  (heq_1 : a✝ = some val✝),
  g.match_1 motive a✝ h_1 h_2 ≍ h_2 val✝ heq_1
```
This function returns the type
```
forall
  (motive : Option Nat → Sort u_1) (a✝ : Option Nat)
  (h_1 : a✝ = none → motive none)
  (h_2 : (val : Nat) → a✝ = some val → motive (some val))
  (val✝ : Nat)
  (heq_1 : a✝ = some val✝),
  g.match_1 motive (Grind.genPattern (Option Nat) heq_1 a✝ (some val✝)) h_1 h_2
  ≍ h_2 val✝ heq_1
```
The gadget is used to infer a `generalize` pattern. The following term is used
during E-matching `g.match_1 motive (Grind.genPattern (Option Nat) heq_1 a✝ (some val✝)) h_1 h_2`
when matching `Grind.genPattern (Option Nat) heq_1 a✝ (some val✝)` the matcher uses
`(some val✝)` as the actual pattern, but also assigns `heq_1` `a✝` using the information stored
in the equivalence class.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchTheorem/Variant7862e0cc7cb98de3bcf3970865c0d8ef0926cd7112c0ec42a4d5d16d8502db50.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EMatchTheorem/Variant7862e0cc7cb98de3bcf3970865c0d8ef0926cd7112c0ec42a4d5d16d8502db50.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d947cf9bc70039e5adf3ad5b7759178dd0d52bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
