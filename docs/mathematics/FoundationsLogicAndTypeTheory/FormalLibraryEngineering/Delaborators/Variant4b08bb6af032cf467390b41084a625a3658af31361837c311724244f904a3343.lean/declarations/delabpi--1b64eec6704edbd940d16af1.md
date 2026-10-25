# delabPi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b2a49b23ed7f12ef6b5d611ba24f5a817f8dee6202d689a53c0901296f5bed6f",
  "kind": "def",
  "lexical_name": "delabPi",
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
  "slug": "delabpi--1b64eec6704edbd940d16af1",
  "source": {
    "blob": "519f146c25ec91da1ffba492dc1820a84e8a14dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 53,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Delaborators/Variant4b08bb6af032cf467390b41084a625a3658af31361837c311724244f904a3343.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1b64eec6704edbd940d16af1d2a400b24376bb39c209edff6215b84c345f78b1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Delaborators/Variant4b08bb6af032cf467390b41084a625a3658af31361837c311724244f904a3343.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b2a49b23ed7f12ef6b5d611ba24f5a817f8dee6202d689a53c0901296f5bed6f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def delabPi : Delab := whenPPOption getPPBinderPredicates <| whenPPOption Lean.getPPNotation do
  let stx ← delabForall
  match stx with
  | `(∀ ($i:ident : $_), $j:ident ∈ $s → $body) =>
    if i == j then `(∀ $i:ident ∈ $s, $body) else pure stx
  | `(∀ ($x:ident : $_), $y:ident > $z → $body) =>
    if x == y then `(∀ $x:ident > $z, $body) else pure stx
  | `(∀ ($x:ident : $_), $y:ident < $z → $body) =>
    if x == y then `(∀ $x:ident < $z, $body) else pure stx
  | `(∀ ($x:ident : $_), $y:ident ≥ $z → $body) =>
    if x == y then `(∀ $x:ident ≥ $z, $body) else pure stx
  | `(∀ ($x:ident : $_), $y:ident ≤ $z → $body) =>
    if x == y then `(∀ $x:ident ≤ $z, $body) else pure stx
  | `(Π ($i:ident : $_), $j:ident ∈ $s → $body) =>
    if i == j then `(Π $i:ident ∈ $s, $body) else pure stx
  | `(∀ ($i:ident : $_), $j:ident ∉ $s → $body) =>
    if i == j then `(∀ $i:ident ∉ $s, $body) else pure stx
  | `(∀ ($i:ident : $_), $j:ident ⊆ $s → $body) =>
    if i == j then `(∀ $i:ident ⊆ $s, $body) else pure stx
  | `(∀ ($i:ident : $_), $j:ident ⊂ $s → $body) =>
    if i == j then `(∀ $i:ident ⊂ $s, $body) else pure stx
  | `(∀ ($i:ident : $_), $j:ident ⊇ $s → $body) =>
    if i == j then `(∀ $i:ident ⊇ $s, $body) else pure stx
  | `(∀ ($i:ident : $_), $j:ident ⊃ $s → $body) =>
    if i == j then `(∀ $i:ident ⊃ $s, $body) else pure stx
  | _ => pure stx

/-- Override the Lean 4 pi notation delaborator with one that uses `Π` and prints
cute binders such as `∀ ε > 0`.
Note that this takes advantage of the fact that `(x : α) → p x` notation is
never used for propositions, so we can match on this result and rewrite it. -/
@[scoped delab forallE]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Delaborators/Variant4b08bb6af032cf467390b41084a625a3658af31361837c311724244f904a3343.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Delaborators/Variant4b08bb6af032cf467390b41084a625a3658af31361837c311724244f904a3343.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `519f146c25ec91da1ffba492dc1820a84e8a14dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
