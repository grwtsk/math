# serializationControls

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:57dc3228d1ba19ced283a7470cd6f5d7d8a8ad612612c5a95f198ce9b44b6b82",
  "kind": "def",
  "lexical_name": "serializationControls",
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
  "slug": "serializationcontrols--f6cf88ab65168245bf7be1fe",
  "source": {
    "blob": "68304a3532012629fcdf26bf5792bed658efccb6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 152,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TypeTheory/Observers/LeanCompiledTyping.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f6cf88ab65168245bf7be1feb0465a627ab1eb8bfc3024ca4ec3b9d02552acd6",
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

Occurrence: `declaration:57dc3228d1ba19ced283a7470cd6f5d7d8a8ad612612c5a95f198ce9b44b6b82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def serializationControls (dir : System.FilePath) : IO Unit := do
  IO.FS.createDirAll dir
  let t := Expr.sort (.param `u)
  let sample := Expr.app (.const `Nat.succ []) (.lit (.natVal 3))
  let mut samples : Array Expr := #[
    .bvar 1, .fvar ⟨`local⟩, .mvar ⟨`hole⟩, t, .const `Nat [.zero, .max (.param `u) (.succ .zero)],
    sample, .lam `x t (.bvar 0) .implicit, .forallE `x t (.bvar 0) .instImplicit,
    .letE `x t sample (.bvar 0) true, .lit (.strVal "quoted\"\nλ"),
    .mdata (KVMap.empty.setBool `flag true) sample, .proj `Prod 0 sample]
  samples := samples.push (.lit (.strVal (String.ofList (List.replicate (64 * 1024 + 3) 'λ'))))
  let mut shared := sample
  for _ in [:10] do shared := .app shared shared
  samples := samples.push shared
  for i in [:samples.size] do
    let path := dir / s!"{i}.json"
    let h ← IO.FS.Handle.mk path .write
    let bytes ← IO.mkRef 0
    let pending ← IO.mkRef (#[] : Array String)
    let pendingBytes ← IO.mkRef 0
    let writer : ExpressionWriter := { handle := h, bytes, pending, pendingBytes }
    writeExpression writer samples[i]!
    writer.flush
    h.flush
    if (← IO.FS.readFile path) != (exprJson samples[i]!).compress then
      throw <| IO.userError s!"STREAM_GRAMMAR_MISMATCH:{i}"
  IO.println s!"STREAM_GRAMMAR_CONTROLS_PASSED:{samples.size}"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/Observers/LeanCompiledTyping.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TypeTheory/Observers/LeanCompiledTyping.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68304a3532012629fcdf26bf5792bed658efccb6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
