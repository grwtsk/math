# _root_.GRWTSK.Algebra.LinearAlgebra.VecEmpty.Variant1faae2e1fac67fe9cfaf441f63467e73d315f93e388323971fa2083addda8581.PiFin.mkLiteralQ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ae25585de67f4f811e0d593fac3c6ec5b8f3b93113f01aac5ad19abb6b01aac0",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.Algebra.LinearAlgebra.VecEmpty.Variant1faae2e1fac67fe9cfaf441f63467e73d315f93e388323971fa2083addda8581.PiFin.mkLiteralQ",
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
  "slug": "root-grwtsk-algebra-linearalgebra-vecempty-variant1faae2e1fac67fe9cfaf44--9807c4684f7006a4e21788ce",
  "source": {
    "blob": "77368d1dc1f65793e83c909101a18bceead9f449",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 320,
    "line": 306,
    "path": "GRWTSK/Algebra/LinearAlgebra/VecNotation/Variant307f058d5b9c94d4ff529e159c8a8f48d5339762853c1d47a3bb19561737f2ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9807c4684f7006a4e21788ce20e1bec7a1395582771cc8c62e2c30f8ecddb5dc",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/VecNotation/Variant307f058d5b9c94d4ff529e159c8a8f48d5339762853c1d47a3bb19561737f2ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ae25585de67f4f811e0d593fac3c6ec5b8f3b93113f01aac5ad19abb6b01aac0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 306–320.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
meta def _root_.GRWTSK.Algebra.LinearAlgebra.VecEmpty.Variant1faae2e1fac67fe9cfaf441f63467e73d315f93e388323971fa2083addda8581.PiFin.mkLiteralQ {u : Level} {α : Q(Type u)} {n : ℕ} (elems : Fin n → Q($α)) :
    Q(Fin $n → $α) :=
  loop 0 q(vecEmpty)
where
  /-- The core logic of `loop` is that `loop 0 ![] = ![a 0, a 1, a 2] = loop 1 ![a 2]`, where
  recursion starts from the end. In this example, on the right-hand side, the variable `rest := 1`
  tracks the length of the current generated notation `![a 2]`, and the last used index is
  `n - rest` (`= 3 - 1 = 2`). -/
  loop (i : ℕ) (rest : Q(Fin $i → $α)) : Q(Fin $n → $α) :=
    if h : i < n then
      loop (i + 1) q(vecCons $(elems (Fin.rev ⟨i, h⟩)) $rest)
    else
      rest

open Lean Qq in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/VecNotation/Variant307f058d5b9c94d4ff529e159c8a8f48d5339762853c1d47a3bb19561737f2ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/VecNotation/Variant307f058d5b9c94d4ff529e159c8a8f48d5339762853c1d47a3bb19561737f2ca.lean#L306).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `77368d1dc1f65793e83c909101a18bceead9f449` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
