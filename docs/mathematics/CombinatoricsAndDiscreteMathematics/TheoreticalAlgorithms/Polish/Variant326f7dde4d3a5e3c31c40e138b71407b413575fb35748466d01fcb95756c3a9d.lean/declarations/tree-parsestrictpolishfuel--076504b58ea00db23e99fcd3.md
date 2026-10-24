# Tree.parseStrictPolishFuel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:da27e39dcd0df2df641fb7941361c39b658ce435193580abcdf78902dd174ba4",
  "kind": "def",
  "lexical_name": "Tree.parseStrictPolishFuel",
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
  "slug": "tree-parsestrictpolishfuel--076504b58ea00db23e99fcd3",
  "source": {
    "blob": "26ba18397eff1c3a59f405db87f5f36188640aeb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 107,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Polish/Variant326f7dde4d3a5e3c31c40e138b71407b413575fb35748466d01fcb95756c3a9d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:076504b58ea00db23e99fcd3e8f38693fc6f060e6a867fbb12ba943cde7c2166",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Polish/Variant326f7dde4d3a5e3c31c40e138b71407b413575fb35748466d01fcb95756c3a9d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:da27e39dcd0df2df641fb7941361c39b658ce435193580abcdf78902dd174ba4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Tree.parseStrictPolishFuel :
    Nat →
    List (Prefix.StrictToken α) →
    Option (Tree α × List (Prefix.StrictToken α))
  | 0, _ => none
  | _ + 1, [] => none
  | _ + 1, .atom a :: rest => some (.var a, rest)
  | _ + 1, .zero :: rest => some (.falsum, rest)
  | _ + 1, .one :: rest => some (.truth, rest)
  | fuel + 1, .op .N :: rest => do
      let (p, rest') ← Tree.parseStrictPolishFuel fuel rest
      some (.neg p, rest')
  | fuel + 1, .op .K :: rest => do
      let (p, rest₁) ← Tree.parseStrictPolishFuel fuel rest
      let (q, rest₂) ← Tree.parseStrictPolishFuel fuel rest₁
      some (.conj p q, rest₂)
  | fuel + 1, .op .A :: rest => do
      let (p, rest₁) ← Tree.parseStrictPolishFuel fuel rest
      let (q, rest₂) ← Tree.parseStrictPolishFuel fuel rest₁
      some (.disj p q, rest₂)
  | fuel + 1, .op .C :: rest => do
      let (p, rest₁) ← Tree.parseStrictPolishFuel fuel rest
      let (q, rest₂) ← Tree.parseStrictPolishFuel fuel rest₁
      some (.impl p q, rest₂)
  | fuel + 1, .op .E :: rest => do
      let (p, rest₁) ← Tree.parseStrictPolishFuel fuel rest
      let (q, rest₂) ← Tree.parseStrictPolishFuel fuel rest₁
      some (.eqv p q, rest₂)
  | fuel + 1, .op .D :: rest => do
      let (p, rest₁) ← Tree.parseStrictPolishFuel fuel rest
      let (q, rest₂) ← Tree.parseStrictPolishFuel fuel rest₁
      some (.nand p q, rest₂)

/--
Parse a complete strict Polish token stream.

Returns `none` if the stream is malformed or has trailing tokens.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Polish/Variant326f7dde4d3a5e3c31c40e138b71407b413575fb35748466d01fcb95756c3a9d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Polish/Variant326f7dde4d3a5e3c31c40e138b71407b413575fb35748466d01fcb95756c3a9d.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `26ba18397eff1c3a59f405db87f5f36188640aeb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
