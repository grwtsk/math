# writeExpression

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9c1e5ba18697236d8873eaebdd121481e71bb24460289733fc8c23c6211174fd",
  "kind": "def",
  "lexical_name": "writeExpression",
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
  "slug": "writeexpression--33de6995f774aa506bbeb52c",
  "source": {
    "blob": "68304a3532012629fcdf26bf5792bed658efccb6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 137,
    "line": 107,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TypeTheory/Observers/LeanCompiledTyping.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:33de6995f774aa506bbeb52c4e4c10ddbaf6981795ad392f3f94fd1bd50d7bcc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/Observers/LeanCompiledTyping.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9c1e5ba18697236d8873eaebdd121481e71bb24460289733fc8c23c6211174fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–137.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def writeExpression (w : ExpressionWriter) (e : Expr) (depth : Nat := 0) : IO Unit := do
  if depth > 256 then throw <| IO.userError "UNSUPPORTED_EXPRESSION_PRODUCER_DEPTH_256"
  let sub (e : Expr) := writeExpression w e (depth + 1)
  match e with
  | .bvar n => w.put "{\"index\":"; w.json (nat n); w.put ",\"tag\":\"bvar\"}"
  | .fvar n => w.put "{\"name\":"; w.json (nameJson n.name); w.put ",\"tag\":\"fvar\"}"
  | .mvar n => w.put "{\"name\":"; w.json (nameJson n.name); w.put ",\"tag\":\"mvar\"}"
  | .sort l => w.put "{\"level\":"; w.json (levelJson l); w.put ",\"tag\":\"sort\"}"
  | .const n ls =>
    w.put "{\"levels\":"; w.json (toJson (ls.map levelJson)); w.put ",\"name\":"
    w.json (nameJson n); w.put ",\"tag\":\"const\"}"
  | .app f a => w.put "{\"argument\":"; sub a; w.put ",\"function\":"; sub f; w.put ",\"tag\":\"app\"}"
  | .lam n t b bi | .forallE n t b bi =>
    w.put "{\"binder_info\":"; w.json (binderJson bi); w.put ",\"body\":"; sub b
    w.put ",\"name\":"; w.json (nameJson n)
    w.put (if e.isLambda then ",\"tag\":\"lam\",\"type\":" else ",\"tag\":\"forall\",\"type\":")
    sub t; w.put "}"
  | .letE n t v b nd =>
    w.put "{\"body\":"; sub b; w.put ",\"name\":"; w.json (nameJson n)
    w.put ",\"non_dependent\":"; w.json (toJson nd); w.put ",\"tag\":\"let\",\"type\":"
    sub t; w.put ",\"value\":"; sub v; w.put "}"
  | .lit (.natVal n) => w.put "{\"tag\":\"literal_nat\",\"value\":"; w.json (nat n); w.put "}"
  | .lit (.strVal s) => w.put "{\"tag\":\"literal_string\",\"value\":"; w.json (str s); w.put "}"
  | .mdata m e =>
    w.put "{\"entries\":"
    w.json (toJson (m.entries.map fun (k,v) => obj [("key", nameJson k), ("value", dataJson v)]))
    w.put ",\"expression\":"; sub e; w.put ",\"tag\":\"metadata\"}"
  | .proj n i e =>
    w.put "{\"expression\":"; sub e; w.put ",\"index\":"; w.json (nat i)
    w.put ",\"name\":"; w.json (nameJson n); w.put ",\"tag\":\"projection\"}"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/Observers/LeanCompiledTyping.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TypeTheory/Observers/LeanCompiledTyping.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68304a3532012629fcdf26bf5792bed658efccb6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
