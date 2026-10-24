# findCancelFactor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:571fd5e441fff0e4c4c57f4553becc5dd34dd1b54a5a74c98be35cd58fc1ea94",
  "kind": "def",
  "lexical_name": "findCancelFactor",
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
  "slug": "findcancelfactor--cc43ef5aba5cfbe7577de9f8",
  "source": {
    "blob": "d5c4dd14d4394c4f6fc3ff7752bd8acb6ce2de2c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 119,
    "path": "GRWTSK/Algebra/CancelDenoms/Variante4d046b0b8fc6a78afd1a6d446ea819168a17139b3ffdfa2e28fec7b7dac6650.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cc43ef5aba5cfbe7577de9f8d07e85b3e6f92d1b8f842b60f4a5bc861b0ee678",
  "verification": {
    "reference": "docs/verification/Algebra/CancelDenoms/Variante4d046b0b8fc6a78afd1a6d446ea819168a17139b3ffdfa2e28fec7b7dac6650.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:571fd5e441fff0e4c4c57f4553becc5dd34dd1b54a5a74c98be35cd58fc1ea94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def findCancelFactor (e : Expr) : ℕ × Tree ℕ :=
  match e.getAppFnArgs with
  | (``HAdd.hAdd, #[_, _, _, _, e1, e2]) | (``HSub.hSub, #[_, _, _, _, e1, e2]) =>
    let (v1, t1) := findCancelFactor e1
    let (v2, t2) := findCancelFactor e2
    let lcm := v1.lcm v2
    (lcm, .node lcm t1 t2)
  | (``HMul.hMul, #[_, _, _, _, e1, e2]) =>
    let (v1, t1) := findCancelFactor e1
    let (v2, t2) := findCancelFactor e2
    let pd := v1 * v2
    (pd, .node pd t1 t2)
  | (``HDiv.hDiv, #[_, _, _, _, e1, e2]) =>
    -- If e2 is a rational, then it's a natural number due to the simp lemmas in `deriveThms`.
    match isNatLit e2 with
    | some q =>
      let (v1, t1) := findCancelFactor e1
      let n := v1 * q
      (n, .node n t1 <| .node q .nil .nil)
    | none => (1, .node 1 .nil .nil)
  | (``Neg.neg, #[_, _, e]) => findCancelFactor e
  | _ => (1, .node 1 .nil .nil)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/CancelDenoms/Variante4d046b0b8fc6a78afd1a6d446ea819168a17139b3ffdfa2e28fec7b7dac6650.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CancelDenoms/Variante4d046b0b8fc6a78afd1a6d446ea819168a17139b3ffdfa2e28fec7b7dac6650.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5c4dd14d4394c4f6fc3ff7752bd8acb6ce2de2c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
