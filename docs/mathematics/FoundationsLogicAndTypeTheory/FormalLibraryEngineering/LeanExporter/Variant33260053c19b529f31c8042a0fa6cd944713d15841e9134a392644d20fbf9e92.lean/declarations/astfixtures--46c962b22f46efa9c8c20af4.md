# astFixtures

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:81579cc3587a680dccb0c726cd46f137f42733ae61de56327dbb7d202f69faec",
  "kind": "def",
  "lexical_name": "astFixtures",
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
  "slug": "astfixtures--46c962b22f46efa9c8c20af4",
  "source": {
    "blob": "74b4f1654ea1ebba23cbfec9c874371d8cb453be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 293,
    "line": 263,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanExporter/Variant33260053c19b529f31c8042a0fa6cd944713d15841e9134a392644d20fbf9e92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:46c962b22f46efa9c8c20af4c5d161dd63bc36596fd83bd49760ad8c15473fb4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanExporter/Variant33260053c19b529f31c8042a0fa6cd944713d15841e9134a392644d20fbf9e92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:81579cc3587a680dccb0c726cd46f137f42733ae61de56327dbb7d202f69faec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 263–293.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def astFixtures : Except String Json := do
  let explicit := Expr.lam `x (.sort .zero) (.bvar 0) .default
  let alpha := Expr.lam `renamed (.sort .zero) (.bvar 0) .default
  let implicit := Expr.lam `x (.sort .zero) (.bvar 0) .implicit
  let forallExplicit := Expr.forallE `x (.sort .zero) (.bvar 0) .default
  let forallImplicit := Expr.forallE `x (.sort .zero) (.bvar 0) .implicit
  let errorOf (e : Expr) := match expression [] e with
    | .error message => str message
    | .ok _ => str "ERROR: unsafe expression was accepted"
  let universeA ← expression [`u] (.sort (.succ (.param `u)))
  let universeB ← expression [`v] (.sort (.succ (.param `v)))
  let layout := Expr.letE `local (.const `Nat []) (.lit (.natVal 9007199254740993))
    (.app (.const `Nat.succ []) (.bvar 0)) true
  return obj [("schema_version", num 1), ("descriptor", str "formal-research-lean-ast-fixtures-v1"),
    ("binder_explicit", ← expression [] explicit), ("binder_alpha", ← expression [] alpha),
    ("metadata_omitted", ← expression [] (.mdata {} explicit)),
    ("binder_implicit", ← expression [] implicit), ("binder_pair", ← expression [] (.app explicit implicit)),
    ("forall_pair", ← expression [] (.app forallExplicit forallImplicit)),
    ("universe_a", universeA), ("universe_b", universeB),
    ("level_constructors", ← expression [`u] (.const (.num `Fixture 42)
      [.zero, .succ .zero, .max .zero (.param `u), .imax (.param `u) .zero])),
    ("let_literal", ← expression [] layout),
    ("projection_string", ← expression [] (.proj `Prod 1 (.lit (.strVal "λé é\n")))),
    ("free_variable", errorOf (.fvar ⟨`free⟩)),
    ("metavariable", errorOf (.mvar ⟨`unknown⟩)),
    ("loose_bound_variable", errorOf (.bvar 0)),
    ("undeclared_universe", errorOf (.sort (.param `unknown))),
    ("universe_metavariable", errorOf (.sort (.mvar ⟨`unknown⟩)))]

end StateExporter

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanExporter/Variant33260053c19b529f31c8042a0fa6cd944713d15841e9134a392644d20fbf9e92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LeanExporter/Variant33260053c19b529f31c8042a0fa6cd944713d15841e9134a392644d20fbf9e92.lean#L263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74b4f1654ea1ebba23cbfec9c874371d8cb453be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
